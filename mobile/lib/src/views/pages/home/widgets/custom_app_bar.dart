import 'package:ecommerce/src/controllers/delivery_addresses_controller.dart';
import 'package:ecommerce/src/models/address.dart';
import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../../../../models/product.dart';
import '../../../../models/user.dart';
import '../../../../utils/size_config.dart';
import '../../../../repository/settings_repository.dart' as settingRepo;
import '../../../../widgets/ShoppingCartButtonWidget.dart';
import '../../../../../generated/l10n.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

ValueNotifier<User> currentUser = new ValueNotifier(User());

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
    @required this.sizeConfig,
    @required this.scaffoldKey,
  }) : super(key: key);

  final SizeConfig sizeConfig;
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _menuButton(context, sizeConfig),
        _getAddres(context),
        Container(
          width: 50,
          child: ShoppingCartButtonWidget(
            iconColor: currentUser.value.apiToken == null
                ? Theme.of(context).hintColor
                : Theme.of(context).primaryColor,
            labelColor: currentUser.value.apiToken == null
                ? Theme.of(context).accentColor
                : Theme.of(context).hintColor,
            product: new Product(),
          ),
        ),
      ],
    );
  }
}

_menuButton(BuildContext context, SizeConfig sizeConfig) => Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      height: sizeConfig.getProportionateScreenWidth(35),
      width: sizeConfig.getProportionateScreenWidth(35),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: IconButton(
        icon: Icon(
          Icons.sort_rounded,
        ),
        onPressed: () => ZoomDrawer.of(context).toggle(),
      ),
    );

Widget _getAddres(BuildContext context) {
  settingRepo.getCurrentLocation();

  settingRepo.deliveryAddress.addListener(() {});

  return ValueListenableBuilder<Address>(
      valueListenable: settingRepo.deliveryAddress,
      builder: (_, snapshot, __) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 200,
              child: Text(
                S.of(context).delivery_address,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline5.merge(
                      TextStyle(fontSize: 15),
                    ),
              ),
            ),
            Container(
              width: 200,
              child: Center(
                child: Text(
                  settingRepo.deliveryAddress.value.description ??
                      S.of(context).your_address,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ),
          ],
        );
      });
}
/*class _ProfileImage extends StatelessWidget {
  const _ProfileImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Image.asset(
          'assets/images/avatar.png',
        ),
      ),
    );
  }
}*/

