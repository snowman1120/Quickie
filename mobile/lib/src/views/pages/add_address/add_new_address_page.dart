import 'package:flutter/material.dart';
import 'package:google_map_location_picker/google_map_location_picker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

// import '../../../models/address.dart';
import '../../../models/address.dart';
import '../../../repository/settings_repository.dart';
import '../../../routes/routes_names.dart';
import '../../utils/custom_flat_fab.dart';
import '../../../../generated/l10n.dart';
import '../../../utils/physics.dart';
import '../../../utils/size_config.dart';
import '../../utils/custom_entry.dart';
import '../../utils/flat_app_bar.dart';
import '../../../controllers/delivery_addresses_controller.dart';

class AddNewAddressPage extends StatefulWidget {
  const AddNewAddressPage({Key key}) : super(key: key);

  @override
  _AddNewAddressPageState createState() => _AddNewAddressPageState();
}

class _AddNewAddressPageState extends StateMVC<AddNewAddressPage> {
  DeliveryAddressesController _controller;

  Address _address = new Address();
  _AddNewAddressPageState() : super(DeliveryAddressesController()) {
    _controller = controller;
  }

  var _isFilled;

  @override
  void didChangeDependencies() {
    _isFilled = !(_address.latitude == null && _address.longitude == null);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var sizeConfig = SizeConfig.init(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: FlatAppBar(title: S.of(context).add_delivery_address),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: kScrollPhysics,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: sizeConfig.getProportionateScreenWidth(20)),
            child: Column(
              children: [
                CustomEntry(
                    label: S.of(context).full_name,
                    labelText: S.of(context).full_name,
                    onSubmitted: (text) {
                      _address.description = text;
                    }),
                CustomEntry(
                    label: 'State',
                    enabled: !_isFilled,
                    labelText: !_isFilled
                        ? 'Insert State'
                        : _address.address.split(',')[0]),
                CustomEntry(
                  label: 'City',
                  enabled: !_isFilled,
                  labelText: !_isFilled
                      ? 'Insert City'
                      : _address.address.split(',')[1],
                ),
                CustomEntry(
                    label: 'Street (Include house number)',
                    enabled: !_isFilled,
                    labelText:
                        !_isFilled ? 'Street' : _address.address.split(',')[2]),
                SizedBox(
                  height: 200,
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: !_isFilled
          ? FloatingActionButton(
              child: Icon(
                Icons.location_on_rounded,
                color: Theme.of(context).cardColor,
              ),
              onPressed: () async {
                LocationResult result = await showLocationPicker(
                  context,
                  setting.value.googleMapsKey,
                  initialCenter: LatLng(deliveryAddress.value?.latitude ?? 0,
                      deliveryAddress.value?.longitude ?? 0),
                  myLocationButtonEnabled: true,
                  layersButtonEnabled: true,
                  countries: ["DOM"],
                  requiredGPS: true,
                  resultCardPadding: EdgeInsets.only(right: 50),
                  initialZoom: 50,
                  resultCardDecoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(100)),
                  resultCardAlignment: Alignment.bottomLeft,
                );

                _address.address = result.address;
                _address.latitude = result.latLng.latitude;
                _address.longitude = result.latLng.longitude;
              },
            )
          : CustomFlatLargeFAB(
              title: S.of(context).save.toUpperCase(),
              onPressed: () async {
                _controller.addAddress(_address);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(S.of(context).new_address_added_successfully),
                  ),
                );
                Navigator.of(context)
                    .pushReplacementNamed(RouteNames.deliveryAddressPage);
              },
            ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
