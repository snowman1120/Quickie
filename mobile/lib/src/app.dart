import 'routes/routes_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../generated/l10n.dart';
import 'routes/route_generator.dart';
import 'helpers/app_config.dart' as config;
import 'models/setting.dart';
import 'repository/settings_repository.dart' as settingRepo;
import 'repository/user_repository.dart' as userRepo;

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    settingRepo.initSettings();
    settingRepo.getCurrentLocation();
    userRepo.getCurrentUser();
    super.initState();
  }

  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: settingRepo.setting,
        builder: (context, Setting _setting, _) {
          print(_setting.toMap());
          return MaterialApp(
              navigatorKey: settingRepo.navigatorKey,
              title: _setting.appName,
              initialRoute: RouteNames.splashScreen,
              onGenerateRoute: RouteGenerator.generateRoute,
              debugShowCheckedModeBanner: false,
              locale: _setting.mobileLanguage.value,
              localizationsDelegates: [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              theme: _setting.brightness.value == Brightness.light
                  ? ThemeData(
                      fontFamily: 'ProductSans',
                      primaryColor: Colors.white,
                      floatingActionButtonTheme: FloatingActionButtonThemeData(
                          elevation: 0, foregroundColor: Colors.white),
                      brightness: _setting.brightness.value,
                      accentColor: config.Colors().mainColor(1),
                      dividerColor: config.Colors().accentColor(0.05),
                      focusColor: config.Colors().accentColor(1),
                      hintColor: config.Colors().secondColor(1),
                      textTheme: TextTheme(
                        // ignore: deprecated_member_use
                        headline: TextStyle(
                            fontSize: 22.0,
                            color: config.Colors().secondColor(1)),

                        // ignore: deprecated_member_use
                        display1: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700,
                            color: config.Colors().secondColor(1)),

                        // ignore: deprecated_member_use
                        display2: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w700,
                            color: config.Colors().secondColor(1)),

                        // ignore: deprecated_member_use
                        display3: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w700,
                            color: config.Colors().mainColor(1)),

                        // ignore: deprecated_member_use
                        display4: TextStyle(
                            fontSize: 26.0,
                            fontWeight: FontWeight.w300,
                            color: config.Colors().secondColor(1)),

                        // ignore: deprecated_member_use
                        subhead: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                            color: config.Colors().secondColor(1)),

                        // ignore: deprecated_member_use
                        title: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.w700,
                            color: config.Colors().mainColor(1)),

                        // ignore: deprecated_member_use
                        body1: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: config.Colors().secondColor(1)),

                        // ignore: deprecated_member_use
                        body2: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                            color: config.Colors().secondColor(1)),
                        caption: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w300,
                            color: config.Colors().accentColor(1)),
                      ),
                    )
                  : ThemeData(
                      fontFamily: 'ProductSans',
                      primaryColor: Color(0xFF252525),
                      brightness: Brightness.dark,
                      scaffoldBackgroundColor: Color(0xFF2C2C2C),
                      accentColor: config.Colors().mainDarkColor(1),
                      dividerColor: config.Colors().accentColor(0.1),
                      hintColor: config.Colors().secondDarkColor(1),
                      focusColor: config.Colors().accentDarkColor(1),
                      textTheme: TextTheme(
                        // ignore: deprecated_member_use
                        headline: TextStyle(
                            fontSize: 22.0,
                            color: config.Colors().secondDarkColor(1)),

                        // ignore: deprecated_member_use
                        display1: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700,
                            color: config.Colors().secondDarkColor(1)),

                        // ignore: deprecated_member_use
                        display2: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w700,
                            color: config.Colors().secondDarkColor(1)),

                        // ignore: deprecated_member_use
                        display3: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w700,
                            color: config.Colors().mainDarkColor(1)),

                        // ignore: deprecated_member_use
                        display4: TextStyle(
                            fontSize: 26.0,
                            fontWeight: FontWeight.w300,
                            color: config.Colors().secondDarkColor(1)),

                        // ignore: deprecated_member_use
                        subhead: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                            color: config.Colors().secondDarkColor(1)),

                        // ignore: deprecated_member_use
                        title: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.w700,
                            color: config.Colors().mainDarkColor(1)),

                        // ignore: deprecated_member_use
                        body1: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: config.Colors().secondDarkColor(1)),

                        // ignore: deprecated_member_use
                        body2: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                            color: config.Colors().secondDarkColor(1)),
                        caption: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w300,
                            color: config.Colors().secondDarkColor(0.6)),
                      ),
                    ));
        });
  }
}
