<?php
/**
 * File name: OrderAPIController.php
 * Last modified: 2020.04.30 at 15:28:24
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2020
 *
 */

namespace App\Http\Controllers\API;


use App\Criteria\Orders\OrdersOfUserCriteria;
use App\Criteria\Users\ManagersCriteria;
use App\Events\OrderChangedEvent;
use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Notifications\NewOrder;
use App\Notifications\StatusChangedOrder;
use App\Repositories\CartRepository;
use App\Repositories\ProductOrderRepository;
use App\Repositories\NotificationRepository;
use App\Repositories\OrderRepository;
use App\Repositories\PaymentRepository;
use App\Repositories\ProductRepository;
use App\Repositories\UserRepository;
use Braintree\Gateway;
use Flash;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Notification;
use InfyOm\Generator\Criteria\LimitOffsetCriteria;
use PhpParser\Node\Expr\Cast\Double;
use Prettus\Repository\Criteria\RequestCriteria;
use Prettus\Repository\Exceptions\RepositoryException;
use Prettus\Validator\Exceptions\ValidatorException;
use Stripe\Stripe;
use Stripe\Token;
use function GuzzleHttp\Psr7\copy_to_string;

/**
 * Class OrderController
 * @package App\Http\Controllers\API
 */
class OrderAPIController extends Controller
{
    /** @var  OrderRepository */
    private $orderRepository;
    /** @var  ProductOrderRepository */
    private $productOrderRepository;
    /** @var  CartRepository */
    private $cartRepository;
    /** @var  UserRepository */
    private $userRepository;
    /** @var  PaymentRepository */
    private $paymentRepository;
    /** @var  NotificationRepository */
    private $notificationRepository;
    /** @var  ProductRepository */
    private $productRepository;

    /**
     * OrderAPIController constructor.
     * @param OrderRepository $orderRepo
     * @param ProductOrderRepository $productOrderRepository
     * @param CartRepository $cartRepo
     * @param PaymentRepository $paymentRepo
     * @param NotificationRepository $notificationRepo
     * @param UserRepository $userRepository
     * @param ProductRepository $productRepository
     */
    public function __construct(OrderRepository $orderRepo, ProductOrderRepository $productOrderRepository, CartRepository $cartRepo, PaymentRepository $paymentRepo, NotificationRepository $notificationRepo, UserRepository $userRepository, ProductRepository $productRepository)
    {
        $this->orderRepository = $orderRepo;
        $this->productOrderRepository = $productOrderRepository;
        $this->cartRepository = $cartRepo;
        $this->userRepository = $userRepository;
        $this->paymentRepository = $paymentRepo;
        $this->notificationRepository = $notificationRepo;
        $this->productRepository = $productRepository;
    }

    /**
     * Display a listing of the Order.
     * GET|HEAD /orders
     *
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function index(Request $request)
    {
        //Log::error("get orders");

        //$store = $request->only('product.store_id');
        //$user=$this->userRepository->findWhere($store);
        //dd($user);
        try {
            $this->orderRepository->pushCriteria(new RequestCriteria($request));
            $this->orderRepository->pushCriteria(new LimitOffsetCriteria($request));
            //$this->orderRepository->pushCriteria(new OrdersOfUserCriteria($user));
        } catch (RepositoryException $e) {
            Flash::error($e->getMessage());
        }
        $orders = $this->orderRepository->all();

        return $this->sendResponse($orders->toArray(), 'Orders retrieved successfully');
    }

    /**
     * Display the specified Order.
     * GET|HEAD /orders/{id}
     *
     * @param int $id
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function show(Request $request, $id)
    {
        /** @var Order $order */
        if (!empty($this->orderRepository)) {
            try {
                $this->orderRepository->pushCriteria(new RequestCriteria($request));
                $this->orderRepository->pushCriteria(new LimitOffsetCriteria($request));
            } catch (RepositoryException $e) {
                Flash::error($e->getMessage());
            }
            $order = $this->orderRepository->findWithoutFail($id);
        }

        if (empty($order)) {
            return $this->sendError('Order not found');
        }

        return $this->sendResponse($order->toArray(), 'Order retrieved successfully');


    }

    /**
     * Store a newly created Order in storage.
     *
     * @param Request $request
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(Request $request)
    {

        $payment = $request->only('payment');
        if (isset($payment['payment']) && $payment['payment']['method']) {
            if ($payment['payment']['method'] == "Credit Card (Stripe Gateway)") {
                return $this->stripPayment($request);
            } else {
                return $this->cashPayment($request);

            }
        }
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse|mixed
     */
    private function stripPayment(Request $request)
    {
        $input = $request->all();
        $amount = 0;
        try {
            $user = $this->userRepository->findWithoutFail($input['user_id']);
            if (empty($user)) {
                return $this->sendError('User not found');
            }
            $stripeToken = Token::create(array(
                "card" => array(
                    "number" => $input['stripe_number'],
                    "exp_month" => $input['stripe_exp_month'],
                    "exp_year" => $input['stripe_exp_year'],
                    "cvc" => $input['stripe_cvc'],
                    "name" => $user->name,
                )
            ));
            if ($stripeToken->created > 0) {
                if(!empty($input['delivery_address_id'])){
                    $order = $this->orderRepository->create(
                        $request->only('user_id', 'order_status_id', 'tax', 'delivery_address_id','delivery_fee')
                    );
                } else {
                    $order = $this->orderRepository->create(
                        $request->only('user_id', 'order_status_id', 'tax','delivery_fee')
                    );
                }
                foreach ($input['products'] as $productOrder) {
                    $productOrder['order_id'] = $order->id;
                    $amount += $productOrder['price'] * $productOrder['quantity'];
                    $this->productOrderRepository->create($productOrder);
                    $product = $this->productRepository->findWithoutFail($productOrder['product_id']);
                    $this->productRepository->update(['itemsAvailable' => $product->itemsAvailable - $productOrder['quantity']], $productOrder['product_id']);
                }
                $amountWithTax = $amount + ($amount * $order->tax / 100);
                $charge = $user->charge((int)($amountWithTax * 100), ['source' => $stripeToken]);
                $payment = $this->paymentRepository->create([
                    "user_id" => $input['user_id'],
                    "description" => trans("lang.payment_order_done"),
                    "price" => $amountWithTax,
                    "status" => $charge->status, // $charge->status
                    "method" => $input['payment']['method'],
                ]);
                $this->orderRepository->update(['payment_id' => $payment->id], $order->id);
                $this->cartRepository->deleteWhere(['user_id' => $order->user_id]);
                Notification::send($order->productOrders[0]->product->store->users, new NewOrder($order));


            }
        } catch (ValidatorException $e) {
            return $this->sendError($e->getMessage());
        }

        return $this->sendResponse($order->toArray(), __('lang.saved_successfully', ['operator' => __('lang.order')]));
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse|mixed
     */
    private function cashPayment(Request $request)
    {
        $input = $request->all();
        $amount = 0;
        try {
            if(!empty($input['delivery_address_id'])){
                $order = $this->orderRepository->create(
                    $request->only('user_id', 'order_status_id', 'tax', 'delivery_address_id','delivery_fee')
                );
            } else {
                $order = $this->orderRepository->create(
                    $request->only('user_id', 'order_status_id', 'tax','delivery_fee')
                );
            }
            foreach ($input['products'] as $productOrder) {
                $productOrder['order_id'] = $order->id;
                $amount += $productOrder['price'] * $productOrder['quantity'];
                $this->productOrderRepository->create($productOrder);
                $product = $this->productRepository->findWithoutFail($productOrder['product_id']);
                $this->productRepository->update(['itemsAvailable' => $product->itemsAvailable - $productOrder['quantity']], $productOrder['product_id']);
            }
            $amountWithTax = $amount + ($amount * $order->tax / 100);
            $payment = $this->paymentRepository->create([
                "user_id" => $input['user_id'],
                "description" => trans("lang.payment_order_waiting"),
                "price" => $amountWithTax,
                "status" => 'Waiting for Client',
                "method" => $input['payment']['method'],
            ]);

            $this->orderRepository->update(['payment_id' => $payment->id], $order->id);

            $this->cartRepository->deleteWhere(['user_id' => $order->user_id]);

            Notification::send($order->productOrders[0]->product->store->users, new NewOrder($order));

        } catch (ValidatorException $e) {
            return $this->sendError($e->getMessage());
        }

        return $this->sendResponse($order->toArray(), __('lang.saved_successfully', ['operator' => __('lang.order')]));
    }

    /**
     * Update the specified Order in storage.
     *
     * @param int $id
     * @param Request $request
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function update($id, Request $request)
    {
        $order = $this->orderRepository->findWithoutFail($id);

        if (empty($order)) {
            return $this->sendError('Order not found');
        }
        $input = $request->all();

        try {
            $order = $this->orderRepository->update($input, $id);
            if ($input['order_status_id'] == 5 && !empty($order)) {
                $this->paymentRepository->update(['status' => 'Paid'], $order['payment_id']);
                event(new OrderChangedEvent($order));
            }
            Notification::send([$order->user], new StatusChangedOrder($order));

        } catch (ValidatorException $e) {
            return $this->sendError($e->getMessage());
        }

        return $this->sendResponse($order->toArray(), __('lang.saved_successfully', ['operator' => __('lang.order')]));
    }

}
