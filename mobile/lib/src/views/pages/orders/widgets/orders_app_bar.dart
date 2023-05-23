import 'package:ecommerce/generated/l10n.dart';
import 'package:flutter/material.dart'; // import 'package:ui/src/utils/colors.dart';
import '../../../utils/custom_back_button.dart';

class OrdersAppBar extends StatelessWidget {
  const OrdersAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomBackButton(),

        Expanded(child: Container()),
        Text(
          S.of(context).tracking_order,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        Expanded(child: Container())
        // _ProfileImage()
      ],
    );
  }
}

class _ProfileImage extends StatelessWidget {
  const _ProfileImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      // decoration: BoxDecoration(
      //   boxShadow: [
      //     BoxShadow(
      //       color: kprimaryShadow,
      //       blurRadius: 10,
      //       spreadRadius: -5,
      //       offset: Offset(0, 10),
      //     )
      //   ],
      // ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Image.asset(
          'assets/images/avatar.png',
        ),
      ),
    );
  }
}
