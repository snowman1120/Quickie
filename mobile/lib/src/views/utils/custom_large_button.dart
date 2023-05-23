import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class CustomLargeButton extends StatelessWidget {
  final Function onPressed;
  final double separation;
  final String text;
  const CustomLargeButton({
    Key key,
    @required this.onPressed,
    this.separation = 10,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: separation),
      height: 60,
      width: 260,
      decoration: BoxDecoration(
        color: kprimaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        // boxShadow: [
        //   BoxShadow(
        //     offset: Offset(0, 12),
        //     blurRadius: 25,
        //     color: kprimaryShadow,
        //   ),
        // ],
      ),
      child: TextButton(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 15,
          ),
        ),
        onPressed: () {
          onPressed();
        },
      ),
    );
  }
}
