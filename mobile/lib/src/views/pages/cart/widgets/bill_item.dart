import 'package:flutter/material.dart';

class BillItem extends StatelessWidget {
  const BillItem({
    Key key,
    @required this.title,
    @required this.price,
  }) : super(key: key);
  final String title, price;

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
                  text: r'$' + price,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                  children: [
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
        Divider(
          height: 1.5,
          color: Colors.black,
        ),
      ],
    );
  }
}
