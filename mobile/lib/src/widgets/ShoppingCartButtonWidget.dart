import 'dart:ui';

import 'package:ecommerce/src/controllers/product_controller.dart';
import 'package:flutter/material.dart';

// import '../../src/controllers/cart_controller.dart';
import '../../src/models/product.dart';
import '../../src/models/route_argument.dart';
import '../../src/repository/user_repository.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import '../../src/helpers/ui_icons.dart';
import '../routes/routes_names.dart';

class ShoppingCartButtonWidget extends StatefulWidget {
  const ShoppingCartButtonWidget({
    this.iconColor,
    this.labelColor,
    this.product,
    this.count,
    Key key,
  }) : super(key: key);

  final Color iconColor;
  final Color labelColor;
  final Product product;
  final int count;

  @override
  _ShoppingCartButtonWidget createState() => _ShoppingCartButtonWidget();
}

class _ShoppingCartButtonWidget extends State<ShoppingCartButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        if (currentUser.value.apiToken != null) {
          if (widget.product != null) {
            Navigator.of(context).pushNamed(RouteNames.cartPage,
                arguments: RouteArgument(
                    param: RouteNames.productsDetailPage,
                    id: widget.product.id));
          } else {
            Navigator.of(context).pushNamed(RouteNames.cartPage,
                arguments: RouteArgument(
                    param: RouteNames.menuNavigationPage, id: '2'));
          }
        } else {
          Navigator.of(context).pushNamed(RouteNames.loginPage);
        }
      },
      child: Stack(
        alignment: AlignmentDirectional.topEnd,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Icon(
              UiIcons.shopping_cart,
              color: widget.iconColor,
              size: 28,
            ),
          ),
          ValueListenableBuilder<int>(
              valueListenable: cartCountHome,
              builder: (_, count, __) {
                return Container(
                  child: Text(
                    count.toString(),
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.caption.merge(
                          TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 9),
                        ),
                  ),
                  padding: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                      color: widget.labelColor,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  constraints: BoxConstraints(
                      minWidth: 15, maxWidth: 15, minHeight: 15, maxHeight: 15),
                );
              }),
        ],
      ),
      color: Colors.transparent,
    );
  }
}
