import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../../../../generated/l10n.dart';
import '../../../controllers/user_controller.dart';
import '../../../routes/routes_names.dart';
import '../../../utils/animations/fade_animation.dart';
import '../../../utils/physics.dart';
import '../../utils/bottom_join_buttons.dart';
import '../../utils/custom_entry.dart';
import '../../utils/custom_large_button.dart';
import '../../utils/custom_page_title.dart';
import '../../utils/custom_page_top.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends StateMVC<SignUpPage>
    with SingleTickerProviderStateMixin {
  UserController _controller;

  _SignUpPageState() : super(UserController()) {
    _controller = controller;
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
          physics: kScrollPhysics,
          child: Column(
            children: [
              CustomPageTop(),
              FadeAnimation(
                1,
                Transform.translate(
                  offset: Offset(0, -50),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomTitle(text: S.of(context).register),
                      CustomEntry(
                        onSubmitted: (text) {
                          _controller.user.name = text;
                        },
                        label: S.of(context).full_name,
                        labelText: S.of(context).full_name,
                      ),
                      CustomEntry(
                        onSubmitted: (input) {
                          _controller.user.email = input;
                        },
                        label: S.of(context).email,
                        labelText: S.of(context).email_address,
                      ),
                      CustomEntry(
                        onSubmitted: (input) {
                          _controller.user.password = input;
                        },
                        label: S.of(context).password,
                        labelText: S.of(context).password,
                        isPasswordEntry: true,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomLargeButton(
                        text: S.of(context).register,
                        onPressed: () {
                          if (_controller.user.email != null &&
                              _controller.user.password != null &&
                              _controller.user.name != null) {
                            if (_controller.user.email.contains('@') &&
                                _controller.user.email.endsWith('.com') &&
                                !(_controller.user.name.length <= 3)) {
                              _controller.register(context);
                            } else if (_controller.user.name.length <= 3) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(S
                                      .of(context)
                                      .should_be_more_than_3_characters),
                                ),
                              );
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
                                    'Todos los campos deberian ser completados'),
                              ),
                            );
                          }
                        },
                        separation: 25,
                      )
                    ],
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(0, -35),
                child: BottomJoinButtons(
                  label: '',
                  buttonLabel: S.of(context).login,
                  linedLabel: '',
                  textButtonPressed: () =>
                      Navigator.of(context).pushNamed(RouteNames.loginPage),
                  facebookPress: () {},
                  googlePress: () {},
                  applePress: () {},
                ),
              ),
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
      ),
    );
  }
}
