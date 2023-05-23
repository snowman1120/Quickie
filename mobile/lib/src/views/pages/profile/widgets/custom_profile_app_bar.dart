import '../../../utils/custom_back_button.dart';
import 'package:flutter/material.dart';

class CustomProfileAppBar extends StatelessWidget {
  const CustomProfileAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Stack(
        children: [
          Positioned(
            bottom: 250,
            left: 80,
            child: Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                color: Color(0x1001B2FF),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Transform.translate(
                offset: Offset(-25, -60),
                child: Container(
                  height: 170,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Color(0xFF00E6FF),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.yellow.withOpacity(0.05),
                    //     spreadRadius: 50,
                    //     blurRadius: 10,
                    //   )
                    // ],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(220),
                        topRight: Radius.circular(150)),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(25, -150),
                child: Container(
                  height: 300,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Color(0xFF01B2FF),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.orange.withOpacity(0.05),
                    //     spreadRadius: 50,
                    //     blurRadius: 10,
                    //   )
                    // ],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(700),
                      bottomRight: Radius.circular(700),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(left: 20, child: CustomBackButton()),
        ],
      ),
    );
  }
}
