import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../../../../models/category.dart';
import '../../../../controllers/product_controller.dart';
import '../../../../models/product.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/physics.dart';
import '../../../../utils/size_config.dart';
import 'product_card.dart';
import 'title_section.dart';

class ProductsList extends StatefulWidget {
  ProductsList({
    Key key,
    @required this.category,
    @required this.sizeConfig,
  }) : super(key: key);
  final SizeConfig sizeConfig;
  final Category category;
  @override
  _ProductsListState createState() => _ProductsListState();
}

class _ProductsListState extends StateMVC<ProductsList> {
  ProductController _controller;

  _ProductsListState() : super(ProductController()) {
    _controller = controller;
  }
  @override
  void initState() {
    _controller.listenForProductsByCategory(id: widget.category.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _controller.productByCategorieStream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return _ProductsScrollView(
            categoryName: widget.category.name,
            productsList: snapshot.data,
            sizeConfig: widget.sizeConfig,
          );
        }
        return Container(
            // color: Theme.of(context).accentColor,
            // strokeWidth: 2.5,
            // backgroundColor: Colors.transparent,
            );
      },
    );
  }
}

class _ProductsScrollView extends StatelessWidget {
  _ProductsScrollView({
    Key key,
    @required this.categoryName,
    @required this.productsList,
    @required this.sizeConfig,
  }) : super(key: key);
  final String categoryName;

  final List<Product> productsList;
  final SizeConfig sizeConfig;
  final _pageController = new PageController(
    initialPage: 1,
    viewportFraction: 0.45,
  );
  @override
  Widget build(BuildContext context) {
    _pageController.addListener(
      () {
        if (_pageController.position.pixels >=
            _pageController.position.maxScrollExtent - 100) {}
      },
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleSection(
          sizeConfig: sizeConfig,
          title: categoryName,
          buttonText: '',
        ),
        // Container(
        //   height: sizeConfig.getProportionateScreenHeight(200),
        //   child: PageView.builder(
        //     physics: kScrollPhysics,
        //     controller: _pageController,
        //     itemCount: productsList.length,
        //     itemBuilder: (context, index) => ProductCard(
        //       sizeConfig: sizeConfig,
        //       product: productsList[index],
        //     ),
        //   ),
        // ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: productsList
                .map((e) => ProductCard(
                      sizeConfig: sizeConfig,
                      product: e,
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
