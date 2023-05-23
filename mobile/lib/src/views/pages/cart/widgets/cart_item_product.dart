import 'package:flutter/material.dart';

import '../../../../models/cart.dart';
import '../../../../utils/size_config.dart';
import 'quantity_buttons_vertical.dart';

class CartProductItem extends StatelessWidget {
  const CartProductItem({
    Key key,
    @required this.sizeConfig,
    @required this.cart,
    @required this.increment,
    @required this.decrement,
    @required this.onDismissed,
  }) : super(key: key);

  final Cart cart;
  final SizeConfig sizeConfig;
  final Function increment;
  final Function decrement;
  final Function onDismissed;
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(cart.id),
      onDismissed: (dismissDirection) {
        onDismissed();
      },
      background: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
            color: Theme.of(context).errorColor,
            borderRadius: BorderRadius.circular(20)),
      ),
      child: Container(
        height: sizeConfig.screenHeight * 0.2,
        child: Row(
          children: [
            _CartImage(
              image: cart.product.image.icon,
            ),
            SizedBox(
              width: sizeConfig.screenWidth * 0.03,
            ),
            Padding(
              padding: EdgeInsets.only(
                // left: 20,
                top: 10,
                bottom: 10,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _ProductTitle(
                          name: cart.product.name,
                          description: cart.product.brand.name,
                        ),
                        // _CancelButton(),
                      ],
                    ),
                  ),
                  Container(
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _productPrice(
                          context,
                          price: cart.product.price.round().toString(),
                          quantity: cart.quantity.round().toString(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: QuantityButtonsVertical(
                decrement: () {
                  decrement();
                },
                increment: () {
                  increment();
                },
                quantity: cart.quantity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _productPrice(
  BuildContext context, {
  String price,
  String quantity,
}) =>
    Text.rich(
      TextSpan(
          text: r'$',
          style: TextStyle(
            color: Theme.of(context).accentColor,
            fontWeight: FontWeight.w500,
          ),
          children: [
            TextSpan(
              text: price,
              style: Theme.of(context).textTheme.headline1,
            ),
            TextSpan(
              text: ' x ${quantity}',
              style: Theme.of(context).textTheme.headline6,
            ),
            // TextSpan(
            //   text: '= ${double.parse(quantity) * double.parse(price)}',
            //   style: Theme.of(context).textTheme.headline3,
            // )
          ]),
    );

// class _CancelButton extends StatelessWidget {
//   const _CancelButton({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       onPressed: () {},
//       icon: Icon(
//         Icons.cancel_outlined,
//         color: kprimaryColor,
//       ),
//     );
//   }
// }

class _ProductTitle extends StatelessWidget {
  const _ProductTitle({
    Key key,
    @required this.name,
    @required this.description,
  }) : super(key: key);
  final String name;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Text(
        '$name\n',
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        style: TextStyle(
          height: 1.5,
          fontSize: 22,
          fontWeight: FontWeight.bold,

          // children: [
          //   TextSpan(
          //     text: description,
          //     style: TextStyle(
          //       fontWeight: FontWeight.normal,
          //       fontSize: 15,
          //     ),
          //   ),
          // ],
        ),
      ),
    );
  }
}

class _CartImage extends StatelessWidget {
  const _CartImage({
    Key key,
    @required this.image,
  }) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        height: 100,
        width: 100,
        child: FadeInImage(
          image: NetworkImage(image),
          placeholder: AssetImage('assets/img/loading.gif'),
        ),
      ),
    );
  }
}
