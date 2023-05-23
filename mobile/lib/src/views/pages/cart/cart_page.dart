import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../../../controllers/cart_controller.dart';
import '../../../utils/physics.dart';
import '../../../utils/size_config.dart';
import 'widgets/bill_item.dart';
import 'widgets/cart_app_bar.dart';
import 'widgets/cart_item_product.dart';
import 'widgets/promo_section.dart';
import '../../utils/custom_flat_fab.dart';
import '../../../widgets/EmptyCartWidget.dart';
import '../../../../generated/l10n.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends StateMVC<CartPage>
    with SingleTickerProviderStateMixin {
  CartController _con;
  _CartPageState() : super(CartController()) {
    _con = controller;
  }

  @override
  void initState() {
    _con.listenForCarts();
    _con.listenForCartsCount();
    super.initState();
  }

  var _coupon = '';
  @override
  Widget build(BuildContext context) {
    var sizeConfig = SizeConfig.init(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CartAppBar(
          onTap: () {
            _con.listenForCartsCount();
            Navigator.pop(context);
          },
        ),
      ),
      body: !_con.carts.isEmpty
          ? RefreshIndicator(
              onRefresh: () async {
                _con.refreshCarts();
              },
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: sizeConfig.getProportionateScreenWidth(20),
                  ),
                  child: ListView(
                    physics: kScrollPhysics,
                    children: [
                      Column(
                        children: [
                          ...List.generate(
                            _con.carts.length,
                            (index) => CartProductItem(
                              onDismissed: () async {
                                await _con.removeFromCart(_con.carts[index]);
                                await _con.refresh();
                              },
                              decrement: () async {
                                if (_con.carts[index].quantity < 2) {
                                  await _con.removeFromCart(_con.carts[index]);
                                } else {
                                  _con.decrementQuantity(_con.carts[index]);
                                }
                              },
                              increment: () async {
                                _con.incrementQuantity(_con.carts[index]);
                              },
                              sizeConfig: sizeConfig,
                              cart: _con.carts[index],
                            ),
                          )
                        ],
                      ),

                      PromoSection(
                        sendText: (text) {
                          _coupon += text;
                        },
                        applyCoupon: () {
                          _con.doApplyCoupon(_coupon);
                        },
                      ),
                      BillItem(
                          title: S.of(context).subtotal,
                          price: '${_con.subTotal.round()}'),
                      //     BillItem(title: 'Tax and Fees', price: '5.25'),
                      BillItem(
                          title: S.of(context).delivery,
                          price: '${_con.deliveryFee.round()}'),
                      _TotalItem(
                        title: S.of(context).total,
                        price: '${_con.total.round()}',
                        quantity: '${_con.carts.length.round()}',
                      ),
                      SizedBox(height: 150)
                    ],
                  ),
                ),
              ),
            )
          : EmptyCartWidget(),
      floatingActionButton: _con.carts.isEmpty
          ? Container()
          : CustomFlatLargeFAB(
              title: S.of(context).checkout.toUpperCase(),
              onPressed: () {
                _con.goCheckout(context);
              }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class _TotalItem extends StatelessWidget {
  const _TotalItem({
    Key key,
    @required this.title,
    @required this.price,
    @required this.quantity,
  }) : super(key: key);
  final String title, price, quantity;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text.rich(
                TextSpan(
                  text: '($quantity items)  ',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    TextSpan(
                      text: r'$' + price,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // TextSpan(
                    //   text: 'USD',
                    //   style: TextStyle(
                    //     color: Colors.grey.shade500,
                    //     fontSize: 20,
                    //     fontWeight: FontWeight.w300,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
