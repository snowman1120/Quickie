import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../../utils/colors.dart';
import 'side_menu/side_menu_body.dart';
import 'home/home_page.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key key}) : super(key: key);

  static var _menuController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ZoomDrawer(
        controller: _menuController,
        menuScreen: SideMenuBody(_menuController),
        mainScreen: HomePage(_menuController),
        style: DrawerStyle.Style1,
        angle: 0,
        borderRadius: 35,
        showShadow: true,
        backgroundColor: kprimaryShadow,
        slideWidth: MediaQuery.of(context).size.width * .70,
        openCurve: Curves.fastOutSlowIn,
        closeCurve: Curves.decelerate,
        duration: Duration(
          milliseconds: 200,
        ),
      ),
    );
  }
}
