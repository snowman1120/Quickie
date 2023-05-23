import 'package:flutter/material.dart';

import '../../../../models/product.dart';

class ProductElement extends StatelessWidget {
  const ProductElement({
    Key key,
    @required this.product,
  }) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            height: 100,
            width: 100,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.transparent,
              //CUADRO BLANCO
              // color: Colors.white,
              borderRadius: BorderRadius.circular(20),

              //SOMBRA
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.grey.shade300.withOpacity(0.5),
              //     offset: Offset(5, 10),
              //     blurRadius: 10,
              //     spreadRadius: 5,
              //   ),
              // ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: FadeInImage(
                image: NetworkImage(product.image.thumb),
                placeholder: AssetImage('assets/img/loading.gif'),
              ),
            )

            //  Image.asset(
            //   'assets/images/products/heineken.png',
            //   height: 80,
            // ),
            ),
        Container(
          height: 80,
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.name,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              Container(
                  width: 200,
                  child: Text(
                    product.description,
                    overflow: TextOverflow.ellipsis,
                  )),
              Expanded(child: Container()),
              Text.rich(
                TextSpan(
                  text: r'$',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: product.price.round().toString(),
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
