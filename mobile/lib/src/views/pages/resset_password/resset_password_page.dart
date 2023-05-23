import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../../../../generated/l10n.dart';
import '../../../routes/routes_names.dart';
import '../../../utils/animations/fade_animation.dart';
import '../../../utils/physics.dart';
import '../../utils/bottom_join_buttons.dart';
import '../../utils/custom_entry.dart';
import '../../utils/custom_large_button.dart';
import '../../utils/custom_page_title.dart';
import '../../utils/custom_page_top.dart';
import '../../../controllers/user_controller.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key key}) : super(key: key);

  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends StateMVC<ResetPasswordPage> {
  UserController _controller;
  _ResetPasswordPageState() : super(UserController()) {
    _controller = controller;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _controller.scaffoldKey,
        body: SafeArea(
          top: false,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              left: 25,
              right: 25,
              top: 25,
            ),
            physics: kScrollPhysics,
            child: Column(
              children: [
                CustomPageTop(),
                FadeAnimation(
                  1,
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomTitle(text: S.of(context).reset),
                      Padding(
                        padding: EdgeInsets.only(right: 80, top: 20),
                        // child: Text(
                        //   S.of(context).reset,
                        //   style: TextStyle(
                        //     fontSize: 15,
                        //   ),
                        // ),
                      ),
                      Transform.translate(
                        offset: Offset(0, -15),
                        child: CustomEntry(
                          keyboardType: TextInputType.emailAddress,
                          label: '',
                          onSubmitted: (text) {
                            _controller.user.email = text;
                          },
                          labelText: S.of(context).email_to_reset_password,
                        ),
                      ),
                      Divider(
                        color: Colors.transparent,
                        thickness: 50,
                      ),
                      CustomLargeButton(
                        text: S.of(context).send_password_reset_link,
                        onPressed: () {
                          _controller.resetPassword(context);
                        },
                        separation: 20,
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 80,
                  color: Colors.transparent,
                ),
                BottomJoinButtons(
                  label: S.of(context).i_dont_have_an_account,
                  buttonLabel: S.of(context).register,
                  linedLabel: 'Sign up with',
                  textButtonPressed: () =>
                      Navigator.of(context).pushNamed(RouteNames.signupPage),
                  facebookPress: () {},
                  googlePress: () {},
                  applePress: () {},
                )
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        floatingActionButton: Container(
          height: 40,
          width: 40,
          margin: EdgeInsets.fromLTRB(15, 30, 0, 0),
          padding: EdgeInsets.only(left: 5),
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(
              10,
            ),
            // boxShadow: [
            //   BoxShadow(
            //     blurRadius: 10,
            //     spreadRadius: 3,
            //     color: Colors.grey.shade400.withOpacity(
            //       0.2,
            //     ),
            //     offset: Offset(5, 10),
            //   ),
            // ],
          ),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Theme.of(context).textTheme.bodyText1.color,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ));
  }
}
