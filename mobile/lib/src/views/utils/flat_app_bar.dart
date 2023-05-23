import 'package:flutter/material.dart';

import '../../utils/size_config.dart';
import 'custom_back_button.dart';

class FlatAppBar extends StatelessWidget {
  const FlatAppBar({
    Key key,
    @required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    var sizeConfig = SizeConfig.init(context);
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: sizeConfig.getProportionateScreenWidth(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomBackButton(),
            Expanded(flex: 4, child: Container()),
            Text(title, style: Theme.of(context).textTheme.headline4),
            Expanded(flex: 6, child: Container())
          ],
        ),
      ),
    );
  }
}
