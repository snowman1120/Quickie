import 'dart:async';

import 'package:flutter/material.dart';

import '../../../controllers/delivery_addresses_controller.dart';
import '../../../routes/routes_names.dart';
import '../../../repository/user_repository.dart';
import '../../../utils/physics.dart';
import '../../../utils/size_config.dart';
import 'widgets/address_tile.dart';
import '../../utils/custom_flat_fab.dart';
import '../../utils/flat_app_bar.dart';
import '../../../widgets/PermissionDeniedWidget.dart';
import '../../../repository/user_repository.dart' as userRepo;

import '../../../repository/settings_repository.dart' as settingRepo;
import '../../../../generated/l10n.dart';

import 'package:mvc_pattern/mvc_pattern.dart';

class DeliveryAddressPage extends StatefulWidget {
  const DeliveryAddressPage({Key key}) : super(key: key);

  @override
  _DeliveryAddressPageState createState() => _DeliveryAddressPageState();
}

class _DeliveryAddressPageState extends StateMVC<DeliveryAddressPage> {
  DeliveryAddressesController _controller;

  _DeliveryAddressPageState() : super(DeliveryAddressesController()) {
    _controller = controller;
  }

  var loading = true;

  @override
  void initState() {
    _controller.listenForAddresses();

    Timer(
      Duration(seconds: 5),
      () {
        setState(() {
          loading = false;
        });
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Address _address = new Address();
    var sizeConfig = SizeConfig.init(context);
    return !(currentUser.value.apiToken == null)
        ? Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(70),
              child: FlatAppBar(
                title:
                    '${S.of(context).delivery_addresses} ${_controller.addresses.length}',
              ),
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: sizeConfig.getProportionateScreenWidth(20)),
              child: RefreshIndicator(
                strokeWidth: 1,
                onRefresh: () async {
                  await _controller.refreshAddresses();
                },
                child: SingleChildScrollView(
                  physics: kScrollPhysics,
                  child: _controller.addresses.isEmpty
                      ? loading
                          ? Center(child: CircularProgressIndicator())
                          : Center(
                              child: Container(
                              child: Text('NO TIENESS'),
                            ))
                      : Column(
                          children: [
                            ListView.separated(
                              itemCount: _controller.addresses.length,
                              shrinkWrap: true,
                              primary: false,
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  height: 40,
                                );
                              },
                              itemBuilder: (context, index) {
                                return AddressTile(
                                  onPressed: (addres) {
                                    // print(addres.longitude);
                                  },
                                  address: _controller.addresses[index],
                                  onDismissRight: () {
                                    _controller.removeDeliveryAddress(
                                      context,
                                      _controller.addresses[index],
                                    );

                                    _controller.addresses.removeAt(index);
                                    setState(() {});
                                  },
                                  onDismissLeft: () async {
                                    await _controller.chooseDeliveryAddress(
                                        context, _controller.addresses[index]);

                                    //
                                    settingRepo.deliveryAddress.value =
                                        _controller.addresses[index];
                                    //
                                    userRepo.addAddress(
                                        _controller.addresses[index]);
                                    //
                                    settingRepo.deliveryAddress
                                        .notifyListeners();
                                    setState(() {});
                                  },
                                  onResize: () async {
                                    // setState(() {});
                                    //  _controller.refreshAddresses();
                                  },
                                );
                              },
                            ),
                            SizedBox(
                              height: 200,
                            )
                          ],
                        ),
                ),
              ),
            ),
            floatingActionButton: CustomFlatLargeFAB(
              title: S.of(context).add_delivery_address,
              onPressed: () async {
                Navigator.of(context)
                    .pushReplacementNamed(RouteNames.addDeliveryAddress);
              },
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
          )
        : Scaffold(body: PermissionDeniedWidget());
  }
}
