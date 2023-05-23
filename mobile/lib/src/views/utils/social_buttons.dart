import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialButtons extends StatelessWidget {
  final Function facebookPress;
  final Function googlePress;

  final Function applePress;
  // final Color shadowColor;
  const SocialButtons({
    Key key,
    @required this.facebookPress,
    @required this.googlePress,
    @required this.applePress,
    // @required this.shadowColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var platform = Theme.of(context).platform;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SocialButton(
          text: 'FACEBOOK',
          asset: 'assets/icons/facebook.svg',
          onPressed: () => facebookPress,
          // shadowColor: shadowColor,
        ),

        SocialButton(
          text: 'GOOGLE',
          asset: 'assets/icons/google.svg',
          onPressed: () {
            googlePress();
          },
          // shadowColor: shadowColor,
        )
        // platform != TargetPlatform.android
        //     ? SocialButton(
        //         text: 'GOOGLE',
        //         asset: 'assets/icons/google.svg',
        //         onPressed: () {
        //           googlePress();
        //         },
        //         // shadowColor: shadowColor,
        //       )
        //     : SocialButton(
        //         text: 'APPLE',
        //         asset: 'assets/icons/apple.svg',
        //         onPressed: () {
        //           applePress();
        //         },
        //         // shadowColor: shadowColor,
        //       ),
      ],
    );
  }
}

class SocialButton extends StatelessWidget {
  final String text;
  final String asset;
  final Function onPressed;
  // final Color shadowColor;
  const SocialButton({
    Key key,
    @required this.text,
    @required this.asset,
    @required this.onPressed,
    // this.shadowColor = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),

        //Sombra
        //shadowColor: shadowColor,
        elevation: 0,
      ),
      onPressed: () {
        onPressed();
      },
      child: Padding(
        padding: EdgeInsets.only(
          top: 5,
          bottom: 5,
          right: 5,
        ),
        child: Container(
          height: 50,
          width: 115,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(
                asset,
                height: 40,
              ),
              Text(
                text,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
