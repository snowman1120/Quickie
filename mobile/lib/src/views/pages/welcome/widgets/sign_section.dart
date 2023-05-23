import 'package:flutter/material.dart';

import '../../../../routes/routes_names.dart';
import '../../../utils/lined_label.dart';
import '../../../utils/social_buttons.dart';

class SignSection extends StatelessWidget {
  const SignSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void navigation() =>
        Navigator.of(context).pushNamed(RouteNames.onBoardingPage);

    _largeButton({
      @required String label,
      @required Function onPressed,
    }) =>
        GestureDetector(
          onTap: () {
            onPressed();
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20,
            ),
            margin: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Colors.white,
                width: 1.5,
              ),
              color: Colors.grey.withOpacity(0.8),
            ),
            height: 60,
            width: double.maxFinite,
            child: Center(
              child: Text(
                label,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        );

    _signIn() => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 17),
              child: Text(
                'Already have an account?',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                navigation();
              },
              child: Text(
                'Sign In',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        );

    const textStyle = TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    );
    return Center(
      child: Column(
        children: [
          Expanded(
            flex: 15,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: LinedLabel(
                text: 'Sign in with',
                textStyle: textStyle,
                color: Colors.white,
                thickness: 0.7,
              ),
            ),
          ),
          Expanded(
            flex: 25,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: SocialButtons(
                facebookPress: () {},
                googlePress: () => Navigator.of(context)
                    .pushNamed(RouteNames.menuNavigationPage),
                applePress: () {},
                // shadowColor: Colors.white.withOpacity(0.6),
              ),
            ),
          ),
          Expanded(
            flex: 25,
            child: _largeButton(
                label: 'Start with email or phone',
                onPressed: () {
                  navigation();
                }),
          ),
          Expanded(
            flex: 20,
            child: _signIn(),
          )
        ],
      ),
    );
  }
}
