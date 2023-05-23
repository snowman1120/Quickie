import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class CustomFlatLargeFAB extends StatelessWidget {
  const CustomFlatLargeFAB({
    Key key,
    @required this.title,
    @required this.onPressed,
  }) : super(key: key);

  final String title;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 250,
      child: FloatingActionButton.extended(
        focusElevation: 0,
        hoverElevation: 0,
        disabledElevation: 0,
        highlightElevation: 0,
        elevation: 0,
        backgroundColor: kprimaryColor,
        onPressed: () {
          onPressed();
        },
        label: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
