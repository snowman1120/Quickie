import 'dart:async';

import 'package:ecommerce/generated/l10n.dart';
import 'package:ecommerce/src/controllers/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../../../../controllers/product_controller.dart';
import '../../../../repository/user_repository.dart';
import '../../../../models/product.dart';
import '../../../../models/route_argument.dart';
import '../../../../routes/routes_names.dart';
import '../../../../utils/size_config.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({
    Key key,
    @required this.sizeConfig,
    @required this.product,
  }) : super(key: key);

  final SizeConfig sizeConfig;
  final Product product;

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends StateMVC<ProductCard>
    with SingleTickerProviderStateMixin {
  ProductController _controller;
  _ProductCardState() : super(ProductController()) {
    _controller = controller;
  }

  AnimationController _animationController;
  Animation _degOneTranslationAnimation, _degTwoTranslationAnimation;

  double getRadiansFromDegree(double degree) {
    double unitRadian = 57.295779513;
    return degree / unitRadian;
  }

  Timer _timer;
  bool _pressed = false;
  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 250));

    _degOneTranslationAnimation = TweenSequence([
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0.0, end: 1.2), weight: 75.0),
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 1.2, end: 1.0), weight: 25.0),
    ]).animate(_animationController);

    _degTwoTranslationAnimation = TweenSequence([
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0.0, end: 1.4), weight: 55.0),
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 1.4, end: 1.0), weight: 45.0),
    ]).animate(_animationController);

    _animationController.addListener(() {
      setState(() {});
    });

    _controller.listenForProduct(productId: widget.product.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _heroTag = 'home_screen' + widget.product.id;
    return GestureDetector(
      onTap: () {
        if (currentUser.value.apiToken == null) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
                  S.of(context).you_must_signin_to_access_to_this_section)));
          Navigator.of(context).pushNamed(RouteNames.loginPage);
        } else {
          Navigator.of(context).pushNamed(RouteNames.productsDetailPage,
              arguments: new RouteArgument(
                  id: this.widget.product.id,
                  param: [this.widget.product, _heroTag]));
        }
      },
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: widget.sizeConfig.getProportionateScreenWidth(120),
              height: widget.sizeConfig.getProportionateScreenHeight(180),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      // height:
                      //     widget.sizeConfig.getProportionateScreenWidth(140),
                      child: Hero(
                        tag: _heroTag,
                        child: FadeInImage(
                          image: NetworkImage(
                            widget.product.image.icon,
                          ),
                          placeholder:
                              AssetImage('assets/img/loading_product.gif'),
                        ),
                      ),
                    ),
                    Text(
                      widget.product.name ?? 'Quickie',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          .merge(TextStyle(fontSize: 15)),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: widget.sizeConfig.getProportionateScreenHeight(5),
            left: widget.sizeConfig
                .getProportionateScreenWidth(_pressed ? 5 : 80),
            child: _animatedActionButton(
              context,
              icon: Icon(
                _controller.quantity == 1 ? Icons.delete : Icons.remove_rounded,
                color: Colors.white,
                size: 35,
              ),
              onPress: () {
                _timer.cancel();
                _controller.decrementQuantity();
                _timer = Timer(Duration(seconds: 3), () {
                  _pressed = false;

                  _controller.addToCart(context, _controller.product);
                  _animationController.reverse();
                });
              },
            ),
          ),
          Positioned(
            top: widget.sizeConfig.getProportionateScreenHeight(5),
            left: widget.sizeConfig.getProportionateScreenWidth(80),
            child: Stack(
              children: [
                IgnorePointer(
                  ignoring: false,
                  child: Container(
                    color: Colors.transparent,
                    height: 150.0,
                    width: 150.0,
                  ),
                ),
                Transform.translate(
                  offset: Offset.fromDirection(getRadiansFromDegree(180),
                      _degTwoTranslationAnimation.value * 40),
                  child: _animatedActionButton(context,
                      backgroundColor: Theme.of(context).cardColor,
                      icon: Text(_controller.quantity.round().toString(),
                          style: Theme.of(context).textTheme.bodyText1),
                      heroTag: "${widget.product.name}-${widget.product.id}---",
                      onPress: () {}),
                ),
                _animatedActionButton(
                  context,
                  heroTag: "${widget.product.name}-${widget.product.id}",
                  icon: Icon(
                    Icons.add_rounded,
                    color: Colors.white,
                    size: 35,
                  ),
                  onPress: () {
                    if (currentUser.value.apiToken == null) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(S
                              .of(context)
                              .you_must_signin_to_access_to_this_section)));
                      Navigator.of(context).pushNamed(RouteNames.loginPage);
                    } else {
                      if (_animationController.isCompleted) {
                        _timer.cancel();
                        _controller.incrementQuantity();
                        _timer = Timer(Duration(seconds: 3), () {
                          _pressed = false;

                          _controller.addToCart(context, _controller.product);
                          _animationController.reverse();
                        });
                      } else {
                        _animationController.forward();
                        _pressed = true;
                        _timer = Timer(Duration(seconds: 3), () {
                          _pressed = false;
                          _controller.addToCart(context, _controller.product);
                          _animationController.reverse();
                        });
                      }
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _animatedActionButton(
  BuildContext context, {
  Object heroTag,
  Function onPress,
  Widget icon,
  Color backgroundColor,
}) =>
    Transform.scale(
      scale: 0.7,
      child: FloatingActionButton(
        focusElevation: 0,
        hoverElevation: 0,
        disabledElevation: 0,
        highlightElevation: 0,
        backgroundColor: backgroundColor ?? Theme.of(context).accentColor,
        heroTag: heroTag,
        elevation: 0,
        child: icon,
        onPressed: () {
          onPress();
        },
      ),
    );
