import 'package:ecommerce/generated/l10n.dart';
import 'package:ecommerce/src/helpers/helper.dart';
import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../../../models/route_argument.dart';
import '../../../utils/physics.dart';
import '../../../utils/size_config.dart';
import '../../../widgets/CircularLoadingWidget.dart';
import '../../../controllers/tracking_controller.dart';
import 'widgets/credit_card_information.dart';
import 'widgets/details_header.dart';
import 'widgets/order_header.dart';
import 'widgets/orders_app_bar.dart';
import 'widgets/product_element.dart';
import 'widgets/total_label.dart';

class TrakingOrderPage extends StatefulWidget {
  final RouteArgument routeArgument;
  const TrakingOrderPage({Key key, this.routeArgument}) : super(key: key);

  @override
  _TrakingOrderPage createState() => _TrakingOrderPage();
}

class _TrakingOrderPage extends StateMVC<TrakingOrderPage> {
  TrackingController _controller;
  _TrakingOrderPage() : super(TrackingController()) {
    _controller = controller;
  }

  @override
  void initState() {
    _controller.listenForOrder(orderId: widget.routeArgument.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String store = widget.routeArgument.param[0];
    String storeImage = widget.routeArgument.param[1];
    var productOrder = widget.routeArgument.param[2];

    print('cantidad: ${_controller.order.productOrders.length}');

    var sizeConfig = SizeConfig.init(context);
    var label = Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Text(
            S.of(context).order_id.replaceAll('Id', ''),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: OrdersAppBar(),
        )),
      ),
      body: _controller.order == null || _controller.orderStatus.isEmpty
          ? CircularLoadingWidget(
              height: 300,
            )
          : SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: sizeConfig.getProportionateScreenWidth(20)),
                child: SingleChildScrollView(
                  physics: kScrollPhysics,
                  child: Column(
                    children: [
                      OrderHeader(
                        dateTime:
                            '${_controller.order.dateTime.year.toString()}-${_controller.order.dateTime.day.toString()}-${_controller.order.dateTime.month.toString()} - ${_controller.order.dateTime.hour}:${_controller.order.dateTime.minute}',
                        store: store,
                        orderStatus: _controller.order.orderStatus.status,
                        orderId: _controller.order.id,
                        image: storeImage,
                      ),
                      DetailsLabel(
                        address:
                            _controller.order.deliveryAddress.description ??
                                _controller.order.payment.method,
                      ),
                      // DeliveryInfo(),
                      label,

                      Column(
                        children: [
                          ...List.generate(
                            _controller.order.productOrders.length,
                            (index) => ProductElement(
                              product: _controller
                                  .order.productOrders[index].product,
                            ),
                          )
                        ],
                      ),
                      CreditCardInformation(
                        paymentMethod: _controller.order.payment.method,
                      ),
                      Stepper(
                        physics: ClampingScrollPhysics(),
                        controlsBuilder: (BuildContext context,
                            {VoidCallback onStepContinue,
                            VoidCallback onStepCancel}) {
                          return SizedBox(height: 0);
                        },
                        steps: _controller.getTrackingSteps(context),
                        currentStep: int.tryParse(
                                this._controller.order.orderStatus.id) -
                            1,
                      ),
                      TotalLabel(
                        price: '1',
                        order: _controller.order,
                        productOrder: productOrder,
                      ),

                      SizedBox(
                        height: 150,
                      )
                    ],
                  ),
                ),
              ),
            ),
      floatingActionButton: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: 150,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Text(S.of(context).how_would_you_rate_this_store,
                style: Theme.of(context).textTheme.subtitle1),
            Text(S.of(context).click_on_the_stars_below_to_leave_comments,
                style: Theme.of(context).textTheme.caption),
            SizedBox(height: 5),
            FlatButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/Reviews',
                    arguments: RouteArgument(
                        id: _controller.order.id, heroTag: "store_reviews"));
              },
              padding: EdgeInsets.symmetric(vertical: 5),
              shape: StadiumBorder(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: Helper.getStarsList(
                    double.parse(
                        _controller.order.productOrders[0].product.store.rate),
                    size: 35),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    );
  }
}
