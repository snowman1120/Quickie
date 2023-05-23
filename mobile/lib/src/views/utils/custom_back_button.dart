import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({Key key, this.onTap}) : super(key: key);
  final GestureTapCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () => Navigator.of(context).pop(),
      child: Container(
        width: 40,
        height: 40,
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          //SOMBRAS
          // boxShadow: [
          //   BoxShadow(
          //     offset: Offset(5, 10),
          //     spreadRadius: 2,
          //     blurRadius: 10,
          //     color: Colors.grey.shade200,
          //   ),
          // ],

          color: Colors.transparent,
          //color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Theme.of(context).hintColor,
        ),
      ),
    );
  }
}
