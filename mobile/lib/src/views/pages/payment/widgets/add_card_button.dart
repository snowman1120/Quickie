// ignore: prefer_relative_imports
import 'package:ecommerce/src/utils/colors.dart';
import 'package:flutter/material.dart';

class AddCardButton extends StatelessWidget {
  const AddCardButton({Key key, @required this.onPress}) : super(key: key);
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 70,
      // padding: EdgeInsets.symmetric(
      //   vertical: 8,
      //   horizontal: 5,
      // ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        // border: Border.all(
        //   width: 1,
        //   color: Colors.grey.shade300,
        // ),
      ),
      duration: Duration(milliseconds: 100),
      child: GestureDetector(
        onTap: () {
          onPress();
        },
        child: Container(
          // margin: EdgeInsets.symmetric(horizontal: 5),
          width: 50,
          decoration: BoxDecoration(
            // boxShadow: [
            //   BoxShadow(
            //     offset: Offset(2, 3),
            //     blurRadius: 2,
            //     color: Colors.grey.shade200,
            //   )
            // ],
            borderRadius: BorderRadius.circular(50),
            color: Colors.white,
          ),
          child: Icon(
            Icons.add,
            color: kprimaryColor,
          ),
        ),
      ),
    );
  }
}
