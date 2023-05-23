import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  final text;
  const CustomTitle({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
        text,
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    ]);
  }
}
