<?php

namespace App\Http\Controllers;

use App\Invoice;
use App\IPNStatus;
use App\Item;
use App\Models\Payment;
use App\Notifications\NewOrder;
use App\Repositories\CartRepository;
use App\Repositories\NotificationRepository;
use App\Repositories\OrderRepository;
use App\Repositories\PaymentRepository;
use App\Repositories\ProductOrderRepository;
use App\Repositories\UserRepository;
use Illuminate\Http\Request;
use Srmklive\PayPal\Services\ExpressCheckout;

class PayPalController extends ParentOrderController
{

    //protected $provider;
    /** @var  PaymentRepository */
    //private $paymentRepository;
    /** @var  OrderRepository */
    //private $orderRepository;
    /** @var  ProductOrderRepository */
    //private $productOrderRepository;
    /** @var  CartRepository */
    //private $cartRepository;
    /** @var  UserRepository */
    //private $userRepository;
    /** @var  NotificationRepository */
    //private $notificationRepository;

    /**
     * @var ExpressCheckout
     */
    protected $provider;

    public function __init()
    {
        $this->provider = new ExpressCheckout();

    }

    public function index()
    {
        return view('welcome');
    }

    /**
     * @param \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function getExpressCheckout(Request $request)
    {
        $user = $this->userRepository->findByField('api_token', $request->get('api_token'))->first();
        $coupon = $this->couponRepository->findByField('code', $request->get('coupon_code'))->first();
        $delivery_id = $request->get('delivery_address_id');
        if (!empty($user)) {
            //$cart = $this->getCheckoutData($user->id, $delivery_id);
            $this->order->user = $user;
            $this->order->user_id = $user->id;
            $this->order->delivery_address_id = $delivery_id;
            $this->coupon = $coupon;
            $payPalCart = $this->getCheckoutData();
            try {
                $response = $this->provider->setExpressCheckout($payPalCart);
                if (!empty($response['paypal_link'])) {
                    return redirect($response['paypal_link']);
                } else {
                    session()->put(['code' => 'danger', 'message' => "Error processing PayPal payment for your order"]);
                }
            } catch (\Exception $e) {
                Flash::error("Error processing PayPal payment for your order :" . $e->getMessage());
            }
        }
        return redirect(route('payments.failed'));
    }

    /**
     * Set cart data for processing payment on PayPal.
     *
     * @param int $user_id
     * @param int $delivery_id
     *
     * @return array
     */
    protected function getCheckoutData()
    {
        $data = [];
        $this->calculateTotal();
        $order_id = $this->paymentRepository->all()->count() + 1;
        $data['items'][] = [
            'name' => $this->order->user->cart[0]->product->store->name,
            'price' => $this->total,
            'qty' => 1,
        ];
        $data['total'] = $this->total;
        $data['return_url'] = url("payments/paypal/express-checkout-success?user_id=" . $this->order->user_id . "&delivery_address_id=" . $this->order->delivery_address_id);
        if (isset($this->coupon)) {
            $data['return_url'] .= "&coupon_code=" . $this->coupon->code;
        }
        $data['cancel_url'] = url('payments/paypal');
        $data['invoice_id'] = $order_id . '_' . date("Y_m_d_h_i_sa");
        $data['invoice_description'] = $this->order->user->cart[0]->product->store->name;

        return $data;


    }

    /**
     * Process payment on PayPal.
     *
     * @param \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function getExpressCheckoutSuccess(Request $request)
    {
        $token = $request->get('token');
        $PayerID = $request->get('PayerID');
        $this->order->user_id = $request->get('user_id');
        $this->order->user = $this->userRepository->findWithoutFail($this->order->user_id);
        $this->coupon = $this->couponRepository->findByField('code', $request->get('coupon_code'))->first();
        $this->order->delivery_address_id = $request->get('delivery_address_id', 0);
        Log::info($request->all());

        // Verify Express Checkout Token
        $response = $this->provider->getExpressCheckoutDetails($token);
        $payPalCart = $this->getCheckoutData();

        if (in_array(strtoupper($response['ACK']), ['SUCCESS', 'SUCCESSWITHWARNING'])) {

            // Perform transaction on PayPal
            $payment_status = $this->provider->doExpressCheckoutPayment($payPalCart, $token, $PayerID);
            $this->order->payment = new Payment();
            $this->order->payment->status = $payment_status['PAYMENTINFO_0_PAYMENTSTATUS'];
            $this->order->payment->method = 'PayPal';
            Log::info($payment_status);
            $this->createOrder();

            /*if (!empty($order)) {
                session()->put(['code' => 'success', 'message' => "Order $order->id has been paid successfully!"]);
            } else {
                session()->put(['code' => 'danger', 'message' => "Error processing PayPal payment for Order!"]);

            }*/

            return redirect(url('payments/paypal'));
        }
    }

    /**
     * Create invoice.
     *
     * @param array $cart
     * @param string $status
     *
     * @return \App\Models\Order
     */
    /*protected function createOrder($userId, $deliveryAddressId = null, $status = '')
    {
        if (!strcasecmp($status, 'Completed') || !strcasecmp($status, 'Processed')) {
            $amount = 0;
            $user = $this->userRepository->findWithoutFail($userId);
            $orders = [];
            if (!empty($user)) {
                $carts = $this->cartRepository->findByField('user_id', $userId);
                foreach ($carts as $cart) {
                    $orders['products'][] = [
                        'product_id' => $cart->product->id,
                        'price' => $cart->product->discount_price > 0 ? $cart->product->discount_price : $cart->product->price,
                        'quantity' => $cart->quantity,
                        'options' => $cart->options->pluck('id')->toArray(),
                    ];

                }
                $orders['user_id'] = $user->id;
                if (!empty($deliveryAddressId)){
                    $orders['delivery_address_id'] = $deliveryAddressId ;
                }
                $orders['order_status_id'] = 1;
                $orders['tax'] = setting('default_tax', 0);
                $orders['delivery_fee'] = $cart->product->store->delivery_fee;
            }
            $order = $this->orderRepository->create($orders);
            foreach ($orders['products'] as $productOrder) {
                $productOrder['order_id'] = $order->id;
                $amount += $productOrder['price'] * $productOrder['quantity'];
                $this->productOrderRepository->create($productOrder);
            }
            $this->cartRepository->deleteWhere(['user_id' => $order->user_id]);

            $amount = $amount + ($amount * $order->tax / 100);
            $payment = $this->paymentRepository->create([
                "user_id" => $order->user_id,
                "description" => trans("lang.payment_order_done"),
                "price" => $amount,
                "method" => "PayPal",
                "status" => $status,
            ]);
            $this->orderRepository->update(['payment_id'=>$payment->id],$order->id);

            Notification::send($order->productOrders[0]->product->store->users, new NewOrder($order));
            return $order;
        } else {
            return null;

        }

    }*/
}
