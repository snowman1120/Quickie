import 'package:flutter/material.dart';
import '../../../../utils/size_config.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({
    Key key,
    @required this.sizeConfig,
    @required this.title,
    @required this.buttonText,
  }) : super(key: key);

  final SizeConfig sizeConfig;
  final String title, buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          title.isEmpty ? EdgeInsets.zero : EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline5,
          ),
          if (buttonText.isNotEmpty)
            TextButton(
              onPressed: () {},
              child: Text(buttonText),
            )
        ],
      ),
    );
  }
}
