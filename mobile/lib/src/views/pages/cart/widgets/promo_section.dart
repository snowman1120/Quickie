import 'package:flutter/material.dart';
import '../../../../../generated/l10n.dart';

class PromoSection extends StatelessWidget {
  const PromoSection({
    Key key,
    @required this.sendText,
    @required this.applyCoupon,
  }) : super(key: key);

  final Function(String text) sendText;
  final Function applyCoupon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(50),
        // boxShadow: [
        //   BoxShadow(
        //     offset: Offset(15, 20),
        //     color: Colors.grey.shade200.withOpacity(0.5),
        //     spreadRadius: 2,
        //     blurRadius: 15,
        //   )
        // ],
      ),

      child: TextField(
        onChanged: (text) {
          sendText(text);
        },
        decoration: InputDecoration(
          hintText: S.of(context).haveCouponCode,
          hintStyle: Theme.of(context).textTheme.headline3,
          border: InputBorder.none,
          suffix: Container(
            height: 55,
            width: 120,
            child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Theme.of(context).accentColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () {
                  applyCoupon();
                },
                child: Icon(
                  Icons.send_rounded,
                  color: Colors.white,
                )

                // Text(
                //   'Apply',
                //   style: TextStyle(
                //     fontSize: 20,
                //     color: Colors.white,
                //   ),
                // ),
                ),
          ),
        ),
      ),
      // child: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     Text(
      //       'Promo code',
      //       style: TextStyle(
      //         color: Colors.grey,
      //         fontSize: 25,
      //         fontWeight: FontWeight.w400,
      //       ),
      //     ),

      //   ],
      // ),
    );
  }
}
