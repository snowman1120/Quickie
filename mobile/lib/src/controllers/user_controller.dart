// import 'package:google_sign_in/google_sign_in.dart';
// import '../models/media.dart';
import '../routes/routes_names.dart';
import '../views/pages/side_menu.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import '../../generated/l10n.dart';
import '../helpers/helper.dart';
import '../models/user.dart' as model;
import '../screens/mobile_verification_2.dart';
import '../repository/user_repository.dart' as repository;

class UserController extends ControllerMVC {
/*  GoogleSignInAccount _currentUser ;
  GoogleSignIn googleSignIn;*/

  model.User user = new model.User();
  bool hidePassword = true;
  bool loading = false;
  GlobalKey<FormState> loginFormKey;
  GlobalKey<ScaffoldState> scaffoldKey;
  FirebaseMessaging _firebaseMessaging;
  OverlayEntry loader;

  UserController() {
    loginFormKey = new GlobalKey<FormState>();
    this.scaffoldKey = new GlobalKey<ScaffoldState>();
    _firebaseMessaging = FirebaseMessaging();
    _firebaseMessaging.getToken().then((String _deviceToken) {
      user.deviceToken = _deviceToken;
    }).catchError((e) {
      print('Notification not configured');
    });
    //googleSignIn = GoogleSignIn();
  }

  void login(BuildContext context) async {
    loader = Helper.overlayLoader(context);
    FocusScope.of(context)
        .unfocus(disposition: UnfocusDisposition.previouslyFocusedChild);
    Overlay.of(context)?.insert(loader);

    repository.login(user).then((value) {
      if (value != null && value.apiToken != null) {
        print('login');
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => SideMenu()),
            (Route<dynamic> route) => false);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(S.of(context).wrong_email_or_password),
        ));
      }
    }).catchError((e) {
      loader.remove();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(S.of(context).this_account_not_exist),
      ));
    }).whenComplete(() {
      Helper.hideLoader(loader);
    });
  }

  Future<void> verifyPhone(model.User user) async {
    final PhoneCodeAutoRetrievalTimeout autoRetrieve = (String verId) {
      repository.currentUser.value.verificationId = verId;
    };

    final PhoneCodeSent smsCodeSent = (String verId, [int forceCodeResent]) {
      repository.currentUser.value.verificationId = verId;
      Navigator.push(
        scaffoldKey.currentContext,
        MaterialPageRoute(
            builder: (context) => MobileVerification2(
                  onVerified: (v) {
                    Navigator.of(scaffoldKey.currentContext)
                        .pushReplacementNamed('/Pages', arguments: 2);
                  },
                )),
      );
    };
    final PhoneVerificationCompleted _verifiedSuccess =
        (AuthCredential auth) {};
    final PhoneVerificationFailed _verifyFailed = (FirebaseAuthException e) {
      ScaffoldMessenger.of(scaffoldKey?.currentContext).showSnackBar(SnackBar(
        content: Text(e.message),
      ));
      print(e.toString());
    };
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: user.phone,
      timeout: const Duration(seconds: 5),
      verificationCompleted: _verifiedSuccess,
      verificationFailed: _verifyFailed,
      codeSent: smsCodeSent,
      codeAutoRetrievalTimeout: autoRetrieve,
    );
  }

  void register(BuildContext context) async {
    loader = Helper.overlayLoader(context);
    FocusScope.of(context).unfocus();
    Overlay.of(context).insert(loader);
    repository.register(user).then((value) {
      //
      //
      if (value != null && value.apiToken != null) {
        // Navigator.of(context).pushNamed(RouteNames.phoneRegistrationPage);
        //
        Navigator.of(context).pushNamedAndRemoveUntil(
            RouteNames.menuNavigationPage, (route) => false);
        // Navigator.of(scaffoldKey.currentContext).pushAndRemoveUntil(
        //     MaterialPageRoute(builder: (context) => SideMenu()),
        //     (Route<dynamic> route) => false);
      }
      //

      else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(S.of(context).wrong_email_or_password),
        ));
      }
      //
    }).catchError((e) {
      //
      loader.remove();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(e.toString()),
      ));
      //
      Navigator.of(scaffoldKey.currentContext)
          .pushReplacementNamed(RouteNames.menuNavigationPage);
    }).whenComplete(
      () {
        Helper.hideLoader(loader);
      },
    );
  }

  /* void register() async {
    loader = Helper.overlayLoader(state.context);
    FocusScope.of(state.context).unfocus();
    Overlay.of(state.context).insert(loader);
    repository.register(user).then((value) {
      if (value != null && value.apiToken != null) {
        Navigator.of(scaffoldKey.currentContext)
            .pushReplacementNamed('/Pages', arguments: 2);
      } else {
        ScaffoldMessenger.of(scaffoldKey?.currentContext).showSnackBar(SnackBar(
          content: Text(S.of(state.context).wrong_email_or_password),
        ));
      }
    }).catchError((e) {
      loader.remove();
      ScaffoldMessenger.of(scaffoldKey?.currentContext).showSnackBar(SnackBar(
        content: Text(S.of(state.context).this_email_account_exists),
      ));
    }).whenComplete(() {
      Helper.hideLoader(loader);
    });
  }
*/

  void resetPassword(BuildContext context) {
    loader = Helper.overlayLoader(state.context);
    FocusScope.of(state.context).unfocus();
    Overlay.of(state.context).insert(loader);
    repository.resetPassword(user).then((value) {
      if (value != null && value == true) {
        ScaffoldMessenger.of(scaffoldKey?.currentContext).showSnackBar(SnackBar(
          content:
              Text(S.of(context).your_reset_link_has_been_sent_to_your_email),
          action: SnackBarAction(
            label: S.of(context).login,
            onPressed: () {
              Navigator.of(scaffoldKey.currentContext)
                  .pushReplacementNamed(RouteNames.loginPage);
            },
          ),
          duration: Duration(seconds: 10),
        ));
      } else {
        loader.remove();
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(S.of(context).error_verify_email_settings),
        ));
      }
    }).whenComplete(() {
      Helper.hideLoader(loader);
    });
  }

/*  Future<void> handleSignIn() async {
    try {
      final googleUser = await googleSignIn.signIn();
      if(googleUser != null){
        print(googleUser);
        user.name= googleUser.displayName;
        user.email= googleUser.email;
        user.image = new Media(url:googleUser.photoUrl);
        await register();
      }
    } catch (error) {
      print("error is " + error);
    }
  }*/
}
