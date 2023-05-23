import 'package:flutter/material.dart';

class LinedLabel extends StatelessWidget {
  final TextStyle textStyle;
  final String text;
  final double thickness;
  final Color color;

  const LinedLabel({
    Key key,
    @required this.text,
    @required this.textStyle,
    this.thickness = 2,
    this.color = Colors.grey,
  }) : super(key: key);

  static startLine(double thickness, Color color) => Expanded(
          child: Divider(
        endIndent: 20,
        color: color,
        thickness: thickness,
      ));
  static endLine(double thickness, Color color) => Expanded(
        child: Divider(
          indent: 20,
          color: color,
          thickness: thickness,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        startLine(thickness, color),
        Text(
          text,
          style: textStyle,
        ),
        endLine(thickness, color),
      ],
    );
  }
}
