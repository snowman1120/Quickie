import 'package:flutter/material.dart';

class BottomJoinButtons extends StatelessWidget {
  final String label;
  final String buttonLabel;
  final String linedLabel;
  final Function textButtonPressed;
  final Function facebookPress;
  final Function googlePress;
  final Function applePress;

  const BottomJoinButtons({
    Key key,
    @required this.label,
    @required this.buttonLabel,
    @required this.linedLabel,
    @required this.textButtonPressed,
    @required this.facebookPress,
    @required this.googlePress,
    @required this.applePress,
  }) : super(key: key);

  static const textStyle = TextStyle(
    fontWeight: FontWeight.w500,
  );
  @override
  Widget build(BuildContext context) {
    var _textbuttons = Padding(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: textStyle,
          ),
          TextButton(
            onPressed: () {
              textButtonPressed();
            },
            child: Text(
              buttonLabel,
              style: textStyle,
            ),
          )
        ],
      ),
    );

    return Column(
      children: [
        _textbuttons,
        // Divider(
        //   color: Colors.transparent,
        //   height: 40,
        // ),
        // LinedLabel(
        //   text: linedLabel,
        //   textStyle: textStyle,
        //   color: Colors.grey.shade300,
        // ),
        // Divider(
        //   color: Colors.transparent,
        //   height: 25,
        // ),
        // SocialButtons(
        //     facebookPress: () => facebookPress,
        //     googlePress: () => googlePress,
        //     applePress: () => applePress
        //     // shadowColor: Colors.grey.shade300.withOpacity(0.3),
        //     )
      ],
    );
  }
}
