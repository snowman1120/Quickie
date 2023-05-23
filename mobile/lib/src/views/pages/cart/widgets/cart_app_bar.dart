import 'package:flutter/material.dart';

import '../../../utils/custom_back_button.dart';
import '../../../../../generated/l10n.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({Key key, this.onTap}) : super(key: key);
  final GestureTapCallback onTap;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomBackButton(
              onTap: onTap,
            ),
            Expanded(
              flex: 4,
              child: Container(),
            ),
            Text(
              S.of(context).cart,
              style: Theme.of(context).textTheme.headline5,
            ),
            Expanded(
              flex: 5,
              child: Container(),
            ),
            // CartBag(),
          ],
        ),
      ),
    );
  }
}
