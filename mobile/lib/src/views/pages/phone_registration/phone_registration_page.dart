import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../../../utils/animations/fade_animation.dart';
import '../../utils/custom_entry.dart';
import '../../utils/custom_large_button.dart';
import '../../utils/custom_page_title.dart';
import '../../utils/custom_page_top.dart';
import '../../../../generated/l10n.dart';
import '../../../controllers/settings_controller.dart';
import '../../../models/user.dart';

class PhoneRegistrationPage extends StatefulWidget {
  const PhoneRegistrationPage({Key key}) : super(key: key);

  @override
  _PhoneRegistrationPageState createState() => _PhoneRegistrationPageState();
}

class _PhoneRegistrationPageState extends StateMVC<PhoneRegistrationPage> {
  SettingsController _controller;

  _PhoneRegistrationPageState() : super(SettingsController()) {
    _controller = controller;
  }

  User _user;
  @override
  void initState() {
    _user = new User();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            left: 25,
            right: 25,
            top: 25,
          ),
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              CustomPageTop(),
              FadeAnimation(
                1,
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomTitle(text: S.of(context).phoneNumber),
                    Row(
                      children: [
                        Text(
                          S.of(context).verifyPhoneNumber,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Transform.translate(
                      offset: Offset(0, -15),
                      child: CustomEntry(
                        label: '',
                        labelText: S.of(context).phoneNumber,
                        onSubmitted: (text) {
                          _user.phone = text;
                        },
                      ),
                    ),
                    Divider(
                      color: Colors.transparent,
                      thickness: 50,
                    ),
                  ],
                ),
              ),
              Divider(
                height: 165,
                color: Colors.transparent,
              ),
              // BottomJoinButtons(
              //   label: "Don't have an account?",
              //   buttonLabel: 'Sign Up',
              //   linedLabel: 'Sign up with',
              //   textButtonPressed: () =>
              //       Navigator.of(context).pushNamed(RouteNames.signupPage),
              //   facebookPress: () {},
              //   googlePress: () {},
              //   applePress: () {},
              // )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomLargeButton(
        text: S.of(context).verify_phone.toUpperCase(),
        onPressed: () {
          _controller.verifyPhone(context, _user);
        },
        separation: 20,
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      // floatingActionButton: Container(
      //   height: 40,
      //   width: 40,
      //   margin: EdgeInsets.fromLTRB(15, 30, 0, 0),
      //   padding: EdgeInsets.only(left: 5),
      //   decoration: BoxDecoration(
      //     color: Theme.of(context).cardColor,
      //     borderRadius: BorderRadius.circular(
      //       10,
      //     ),
      //     // boxShadow: [
      //     //   BoxShadow(
      //     //     blurRadius: 10,
      //     //     spreadRadius: 3,
      //     //     color: Colors.grey.shade400.withOpacity(
      //     //       0.2,
      //     //     ),
      //     //     offset: Offset(5, 10),
      //     //   ),
      //     // ],
      //   ),
      //   child: IconButton(
      //     icon: Icon(
      //       Icons.arrow_back_ios,
      //       size: 20,
      //       color: Colors.black,
      //     ),
      //     onPressed: () => Navigator.pop(context),
      //   ),
      // ),
    );
  }
}
