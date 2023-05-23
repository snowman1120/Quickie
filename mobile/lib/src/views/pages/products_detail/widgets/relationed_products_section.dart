import '../../../../../generated/l10n.dart';
import 'package:flutter/material.dart';

import '../../../../models/product.dart';
import '../../../../utils/colors.dart';

class RelationedProductsSection extends StatelessWidget {
  const RelationedProductsSection({
    Key key,
    @required this.featuredProducts,
    @required this.addProduct,
  }) : super(key: key);

  final Function(Product product) addProduct;

  final List<Product> featuredProducts;

  @override
  Widget build(BuildContext context) {
    return featuredProducts.length <= 1
        ? Container()
        : Container(
            margin: EdgeInsets.only(top: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  S.of(context).featured_products,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                  ),
                ),
                ...List.generate(
                  featuredProducts.length,
                  (index) => _ProductListItem(
                    image: featuredProducts[index].image.icon,
                    name: featuredProducts[index].name,
                    price: featuredProducts[index].price,
                    addProduct: () {
                      addProduct(featuredProducts[index]);
                      featuredProducts.removeAt(index);
                    },
                  ),
                ),
                SizedBox(
                  height: 100,
                )
              ],
            ),
          );
  }
}

class _ProductListItem extends StatefulWidget {
  const _ProductListItem({
    Key key,
    @required this.image,
    @required this.name,
    @required this.price,
    @required this.addProduct,
  }) : super(key: key);

  final String image;
  final String name;
  final double price;
  final Function addProduct;
  @override
  __ProductListItemState createState() => __ProductListItemState();
}

class __ProductListItemState extends State<_ProductListItem> {
  bool _selected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: () {
          widget.addProduct();
          setState(() {});
        },
        child: Row(
          children: [
            SizedBox(
                width: 50,
                child: FadeInImage(
                  image: NetworkImage(widget.image),
                  placeholder: AssetImage('assets/img/loading.gif'),
                )),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 150,
              child: Text(
                widget.name,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Expanded(child: Container()),
            Text.rich(
              TextSpan(
                text: '+',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.shade500,
                ),
                children: [
                  TextSpan(
                    text: r'$' + widget.price.round().toString(),
                    style: TextStyle(
                      color: _selected ? kprimaryColor : Colors.grey.shade500,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 8),
            Container(
              height: 20,
              width: 20,
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  width: 1.5,
                  color: _selected ? kprimaryColor : Colors.grey.shade400,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: _selected ? kprimaryColor : Colors.transparent,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
