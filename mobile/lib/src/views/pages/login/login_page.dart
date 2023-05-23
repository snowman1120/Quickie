import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../../../controllers/user_controller.dart';
import '../../../routes/routes_names.dart';
import '../../../utils/animations/fade_animation.dart';
import '../../../utils/physics.dart';
import '../../utils/bottom_join_buttons.dart';
import '../../utils/custom_entry.dart';
import '../../utils/custom_large_button.dart';
import '../../utils/custom_page_title.dart';
import '../../utils/custom_page_top.dart';

import '../../../../generated/l10n.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends StateMVC<LoginPage> {
  UserController _controller;

  _LoginPageState() : super(UserController()) {
    _controller = controller;
  }
  @override
  Widget build(BuildContext context) {
    try {
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
                    Transform.translate(
                      offset: Offset(0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomTitle(
                            text: S.of(context).login,
                          ),
                          CustomEntry(
                            onSubmitted: (input) {
                              _controller.user.email = input;
                            },
                            keyboardType: TextInputType.emailAddress,
                            label: S.of(context).email,
                            labelText: S.of(context).email_address,
                          ),
                          CustomEntry(
                            onSubmitted: (input) {
                              print(input);
                              _controller.user.password = input;
                            },
                            label: S.of(context).password,
                            labelText: S.of(context).password,
                            isPasswordEntry: true,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            color: Colors.transparent,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(RouteNames.resetPasswordPage);
                            },
                            child: Text(
                              S.of(context).i_forgot_password,
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                          CustomLargeButton(
                            text: S.of(context).login,
                            onPressed: () {
                              if (_controller.user.email != null &&
                                  _controller.user.password != null) {
                                if (_controller.user.email.contains('@') &&
                                    _controller.user.email.endsWith('.com')) {
                                  _controller.login(context);
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content:
                                          Text(S.of(context).not_a_valid_email),
                                    ),
                                  );
                                }
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                        'Todos los campos deben ser completados'),
                                  ),
                                );
                              }
                            },
                            separation: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 30,
                    color: Colors.transparent,
                  ),
                  BottomJoinButtons(
                    label: S.of(context).i_dont_have_an_account,
                    buttonLabel: S.of(context).register,
                    linedLabel: '',
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
    } catch (e) {
      print('El error es ahi arriba manin');

      return Scaffold(
        body: Container(
          color: Colors.red,
        ),
      );
    }
  }
}
