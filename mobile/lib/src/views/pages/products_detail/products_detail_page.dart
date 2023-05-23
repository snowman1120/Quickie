import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../../../models/product.dart';
import '../../../models/route_argument.dart';
import '../../../controllers/product_controller.dart';
import '../../../repository/user_repository.dart';
import '../../../routes/routes_names.dart';
import '../../../utils/physics.dart';
import '../../../utils/size_config.dart';
import '../side_menu.dart';
import 'widgets/add_to_cart_fab.dart';
import 'widgets/product_description.dart';
import 'widgets/products_detail_header.dart';
import 'widgets/quantity.dart';
import 'widgets/relationed_products_section.dart';
import 'widgets/title.dart';

class ProductsDetailPage extends StatefulWidget {
  final RouteArgument routeArgument;
  String _heroTag;
  Product product;

  ProductsDetailPage({
    Key key,
    @required this.routeArgument,
  }) {
    product = this.routeArgument.param[0] as Product;
    _heroTag = this.routeArgument.param[1] as String;
  }

  @override
  _ProductsDetailPageState createState() => _ProductsDetailPageState();
}

class _ProductsDetailPageState extends StateMVC<ProductsDetailPage>
    with SingleTickerProviderStateMixin {
  ProductController _controller;

  _ProductsDetailPageState() : super(ProductController()) {
    _controller = controller;
  }

  @override
  void initState() {
    _controller.listenForFeaturedProducts();
    _controller.listenForProduct(productId: widget.product.id);
    _controller.listenForCart();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var sizeConfig = SizeConfig.init(context);

    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            _controller.refreshProduct();
          },
          child: SingleChildScrollView(
            physics: kScrollPhysics,
            child: Padding(
              padding: EdgeInsets.only(
                  right: sizeConfig.getProportionateScreenWidth(20),
                  left: sizeConfig.getProportionateScreenWidth(20),
                  top: sizeConfig.getProportionateScreenWidth(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductsDetailHeader(
                    heroTag: widget._heroTag,
                    image: widget.product.image.thumb,
                    con: _controller,
                  ),
                  !(_controller.total == null)
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ProductsTitle(
                              title: widget.product.name.toString(),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            /*RatingSection(
                        rate: _controller.product.rate,
                        reviewsQuantity:
                            _controller.product.productReviews.length.toString(),
                      ),*/
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Helper.getPrice(widget.product.price!, context, style: TextStyle()),
                                _ProductPrice('${_controller.total.round()}'),
                                Quantity(
                                  increment: () {
                                    _controller.incrementQuantity();
                                  },
                                  decrement: () {
                                    _controller.decrementQuantity();
                                  },
                                  quantity: _controller.quantity,
                                ),
                              ],
                            ),
                            ProductDescription(
                              description: widget.product.description,
                            ),
                            // ProductSizeSelector(
                            //   sizeConfig: sizeConfig,
                            //   selectOption: (option) {
                            //     // _controller.product
                            //   },
                            //   options: _controller.product.options,
                            // ),
                            RelationedProductsSection(
                              featuredProducts: _controller.featuredProducts,
                              addProduct: (Product product) {
                                _controller.addToCart(context, product);
                              },
                            ),
                            SizedBox(
                              height: 100,
                            )
                          ],
                        )
                      : Center(child: CircularProgressIndicator())
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: AddToCart(
        tag: "${widget.product.name}-${widget.product.id}",
        onPressed: () {
          try {
            if (currentUser.value.apiToken == null) {
              Navigator.of(context).pushNamed(RouteNames.loginPage);
            } else {
              _controller.addToCart(context, _controller.product);
              // Navigator.of(context).pushNamedAndRemoveUntil(
              //     RouteNames.menuNavigationPage,
              //     (Route<dynamic> route) => false);
              Navigator.pop(context);
            }
          } catch (e) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(e.toString())));
          }
          // Navigator.of(context).pop();
          //Navigator.of(context).pushNamed(RouteNames.cartPage);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class _ProductPrice extends StatelessWidget {
  const _ProductPrice(
    this.price, {
    Key key,
  }) : super(key: key);

  final String price;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: r'$',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
        children: [
          TextSpan(
            text: price,
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}
