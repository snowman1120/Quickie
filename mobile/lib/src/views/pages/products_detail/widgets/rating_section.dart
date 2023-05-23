import 'package:flutter/material.dart';

class RatingSection extends StatelessWidget {
  const RatingSection({
    Key key,
    @required this.rate,
    @required this.reviewsQuantity,
  }) : super(key: key);

  final String rate;
  final String reviewsQuantity;
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          // decoration: BoxDecoration(
          //   boxShadow: [
          //     BoxShadow(
          //       color: Colors.orange.shade400.withOpacity(.2),
          //       blurRadius: 10,
          //     ),
          //   ],
          // ),
          child: Icon(
            Icons.star_rounded,
            size: 30,
            color: Colors.orange.shade300,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            rate,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Text('($reviewsQuantity+)'),
        // BOTON PARA VER REVIEW
        // TextButton(
        //   onPressed: () {},
        //   child: Text(
        //     'See Review',
        //     style: TextStyle(
        //       decoration: TextDecoration.underline,
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
