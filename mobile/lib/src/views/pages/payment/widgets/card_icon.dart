import 'package:flutter/material.dart';
import '../../../../utils/colors.dart';

class CardIcon extends StatefulWidget {
  const CardIcon({
    Key key,
    @required this.image,
    @required this.selected,
  }) : super(key: key);
  final String image;
  final bool selected;
  @override
  _CardIconState createState() => _CardIconState();
}

class _CardIconState extends State<CardIcon> {
  @override
  Widget build(BuildContext context) {
    bool _selected = widget.selected;
    return Container(
      height: 70,
      padding: EdgeInsets.symmetric(vertical: 15),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 1.5,
          color: _selected ? kprimaryColor : Colors.grey.shade300,
        ),
      ),
      child: SizedBox(
        height: 90,
        width: 90,
        child: Image.asset(
          widget.image,
        ),
      ),
    );
  }
}
