import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../../../repository/user_repository.dart';
import '../../../routes/routes_names.dart';
import 'widgets/log_out_button.dart';
import 'widgets/menu_header.dart';
import 'widgets/side_menu_item.dart';
import '../../../../generated/l10n.dart';
import 'widgets/no_menu_header.dart';
import 'widgets/dark_mode_button.dart';

class SideMenuBody extends StatelessWidget {
  final ZoomDrawerController menuDrawerController;
  const SideMenuBody(this.menuDrawerController, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              !(currentUser.value.apiToken == null)
                  ? Expanded(flex: 28, child: MenuHeader())
                  : Expanded(flex: 25, child: NoMenuHeader()),
              Expanded(
                flex: 55,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SideMenuItem(
                        RouteNames.ordersWidget,
                        icon: Icons.list_rounded,
                        label: S.of(context).my_orders,
                      ),

                      //
                      SideMenuItem(
                        RouteNames.profilePage,
                        icon: Icons.person_rounded,
                        label: S.of(context).profile,
                      ),

                      //
                      SideMenuItem(
                        RouteNames.deliveryAddressPage,
                        icon: Icons.place_rounded,
                        label: S.of(context).delivery_address,
                      ),
                      // SideMenuItem(
                      //   RouteNames.paymentMethodsPage,
                      //   icon: Icons.payment_rounded,
                      //   label: S.of(context).payment_mode,
                      // ),
                      SideMenuItem(
                        RouteNames.contactUsPage,
                        icon: Icons.mail_rounded,
                        label: S.of(context).help_support,
                      ),

                      SideMenuItem(
                        RouteNames.settingsPage,
                        icon: Icons.settings_rounded,
                        label: S.of(context).settings,
                      ),
                      /* SideMenuItem(
                        RouteNames.helpsFAQsPage,
                        icon: Icons.help_rounded,
                        label: 'Helps & FAQs',
                      ),*/

                      DarkModeButton(),
                      // ListTile(
                      //   onTap: () {
                      //     if (Theme.of(context).brightness == Brightness.dark) {
                      //       setBrightness(Brightness.light);
                      //       setting.value.brightness.value = Brightness.light;
                      //     } else {
                      //       setting.value.brightness.value = Brightness.dark;
                      //       setBrightness(Brightness.dark);
                      //     }
                      //     setting.notifyListeners();
                      //   },
                      //   leading: Icon(
                      //     Icons.brightness_6_outlined,
                      //     color: Theme.of(context).focusColor.withOpacity(1),
                      //   ),
                      //   title: Text(
                      //     Theme.of(context).brightness == Brightness.dark
                      //         ? S.of(context).light_mode
                      //         : S.of(context).dark_mode,
                      //     style: Theme.of(context).textTheme.subtitle1,
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              !(currentUser.value.apiToken == null)
                  ? Expanded(
                      flex: 10,
                      child: LogOutButton(
                        onTap: () {
                          logout().then((value) {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                              RouteNames.menuNavigationPage,
                              (Route<dynamic> route) => false,
                            );
                          });
                        },
                      ),
                    )
                  : Container()
            ],
          ),
        ),
      ),
    );
  }
}
