import 'package:flutter/material.dart';

class CartBag extends StatelessWidget {
  const CartBag({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [_BagButton(), _CartQuantity()],
    );
  }
}

class _CartQuantity extends StatelessWidget {
  const _CartQuantity({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 8,
      left: 25,
      child: Container(
        height: 15,
        width: 15,
        decoration: BoxDecoration(
          // boxShadow: [
          //   BoxShadow(
          //     blurRadius: 5,
          //     spreadRadius: 3,
          //     color: Colors.orange.shade200.withOpacity(0.2),
          //   )
          // ],
          borderRadius: BorderRadius.circular(5),
          color: Colors.orange.shade300,
        ),
        child: Center(
          child: Text(
            '4',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class _BagButton extends StatelessWidget {
  const _BagButton({
    Key key,
  }) : super(key: key);

  get kprimaryColor => null;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 40,
        height: 40,
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          // boxShadow: [
          //   BoxShadow(
          //     offset: Offset(5, 10),
          //     spreadRadius: 2,
          //     blurRadius: 10,
          //     color: Colors.grey.shade200,
          //   ),
          // ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
          Icons.shopping_bag_rounded,
          color: kprimaryColor,
        ),
      ),
    );
  }
}
