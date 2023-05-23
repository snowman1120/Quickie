import 'dart:io';

import 'package:ecommerce/src/widgets/PaymentSettingsDialog.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../../../repository/user_repository.dart' as userRepo;
import '../../../../generated/l10n.dart';
import '../../../controllers/settings_controller.dart';
import '../../../helpers/helper.dart';
import '../../../helpers/ui_icons.dart';
import '../../../models/media.dart';
import '../../../repository/upload_repository.dart';
import '../../../utils/physics.dart';
import '../../../widgets/CircularLoadingWidget.dart';
import '../../../widgets/MobileVerificationBottomSheetWidget.dart';
// import '../../../widgets/PaymentSettingsDialog.dart';
import '../../../widgets/ProfileSettingsDialog.dart';
// import '../../../widgets/SearchBarWidget.dart';
import '../../../widgets/PermissionDeniedWidget.dart';
import '../../../routes/routes_names.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends StateMVC<SettingsPage> {
  SettingsController _con;
  PickedFile image;
  String uuid;
  UploadRepository _uploadRepository;
  OverlayEntry loader;
  _SettingsPageState() : super(SettingsController()) {
    _con = controller;
  }
  Future pickImage(
      ImageSource source, ValueChanged<String> uploadCompleted) async {
    ImagePicker imagePicker = ImagePicker();
    final pickedImage = await imagePicker.getImage(
      source: source,
      imageQuality: 80,
    );
    if (pickedImage != null) {
      try {
        setState(() {
          image = pickedImage;
        });
        loader = Helper.overlayLoader(context);
        FocusScope.of(context).unfocus();
        Overlay.of(context).insert(loader);
        uuid = await _uploadRepository.uploadImage(File(image.path), 'avatar');
        uploadCompleted(uuid);
        userRepo.currentUser.value.image = new Media(id: uuid);
        _con.update(userRepo.currentUser.value);
        Helper.hideLoader(loader);
      } catch (e) {}
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return !(userRepo.currentUser.value.apiToken == null)
        ? Scaffold(
            key: _con.scaffoldKey,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              title: Text(
                S.of(context).settings,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .merge(TextStyle(letterSpacing: 1.3)),
              ),
              leading: new IconButton(
                icon: new Icon(Icons.arrow_back_ios_new_rounded,
                    color: Theme.of(context).hintColor),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            body: userRepo.currentUser.value.id == null
                ? CircularLoadingWidget(height: 500)
                : SingleChildScrollView(
                    physics: kScrollPhysics,
                    padding: EdgeInsets.symmetric(vertical: 7),
                    child: Column(
                      children: <Widget>[
                        // Padding(
                        //   padding: const EdgeInsets.symmetric(horizontal: 20),
                        //   child: SearchBarWidget(),
                        // ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      userRepo.currentUser.value.name,
                                      textAlign: TextAlign.left,
                                      style:
                                          Theme.of(context).textTheme.headline3,
                                    ),
                                    Text(
                                      userRepo.currentUser.value.email,
                                      style:
                                          Theme.of(context).textTheme.caption,
                                    )
                                  ],
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                ),
                              ),
                              SizedBox(
                                width: 55,
                                height: 55,
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(300),
                                  child: Stack(
                                    children: [
                                      SizedBox(
                                        width: 55,
                                        height: 55,
                                        child: CircleAvatar(
                                          backgroundImage: NetworkImage(userRepo
                                              .currentUser.value.image.thumb),
                                        ),
                                      ),
                                      Positioned(
                                        top: 0,
                                        right: 0,
                                        child: Icon(
                                          Icons.add_a_photo_outlined,
                                          color: Theme.of(context).hintColor,
                                          size: 16,
                                        ),
                                      )
                                    ],
                                  ),
                                  onTap: () async {
                                    await pickImage(
                                      ImageSource.gallery,
                                      (uuid) {
                                        userRepo.currentUser.value.image =
                                            Media(id: uuid);
                                      },
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(15),
                            // boxShadow: [
                            //   BoxShadow(
                            //       color: Theme.of(context)
                            //           .hintColor
                            //           .withOpacity(0.15),
                            //       offset: Offset(0, 3),
                            //       blurRadius: 10)
                            // ],
                          ),
                          child: ListView(
                            shrinkWrap: true,
                            primary: false,
                            children: <Widget>[
                              ListTile(
                                leading: Icon(UiIcons.user_1),
                                title: Text(
                                  S.of(context).profile_settings,
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                trailing: ButtonTheme(
                                  padding: EdgeInsets.all(0),
                                  minWidth: 50.0,
                                  height: 25.0,
                                  child: ProfileSettingsDialog(
                                    user: userRepo.currentUser.value,
                                    onChanged: () {
                                      var bottomSheetController = _con
                                          .scaffoldKey.currentState
                                          .showBottomSheet(
                                        (context) =>
                                            MobileVerificationBottomSheetWidget(
                                                scaffoldKey: _con.scaffoldKey,
                                                user:
                                                    userRepo.currentUser.value),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: new BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10)),
                                        ),
                                      );
                                      bottomSheetController.closed
                                          .then((value) {
                                        _con.update(userRepo.currentUser.value);
                                      });
                                      //setState(() {});
                                    },
                                  ),
                                ),
                              ),
                              ListTile(
                                onTap: () {},
                                dense: true,
                                title: Text(
                                  S.of(context).full_name,
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                                trailing: Text(
                                  userRepo.currentUser.value.name,
                                  style: TextStyle(
                                      color: Theme.of(context).focusColor),
                                ),
                              ),
                              ListTile(
                                onTap: () {},
                                dense: true,
                                title: Text(
                                  S.of(context).email,
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                                trailing: Text(
                                  userRepo.currentUser.value.email,
                                  style: TextStyle(
                                      color: Theme.of(context).focusColor),
                                ),
                              ),
                              ListTile(
                                onTap: () {},
                                dense: true,
                                title: Wrap(
                                  spacing: 8,
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  children: [
                                    Text(
                                      S.of(context).phone,
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                    if (userRepo
                                            .currentUser.value.verifiedPhone ??
                                        false)
                                      Icon(
                                        Icons.check_circle_outline,
                                        color: Theme.of(context).accentColor,
                                        size: 22,
                                      )
                                  ],
                                ),
                                // trailing: Text(
                                //   userRepo.currentUser.value.phone,
                                //   style: TextStyle(
                                //       color: Theme.of(context).focusColor),
                                // ),
                              ),
                              // ListTile(
                              //   onTap: () {},
                              //   dense: true,
                              //   title: Text(
                              //     S.of(context).address,
                              //     style: Theme.of(context).textTheme.bodyText2,
                              //   ),
                              //   trailing: Text(
                              //     Helper.limitString(
                              //         userRepo.currentUser.value.address ??
                              //             S.of(context).unknown),
                              //     overflow: TextOverflow.fade,
                              //     softWrap: false,
                              //     style: TextStyle(
                              //         color: Theme.of(context).focusColor),
                              //   ),
                              // ),
                              // ListTile(
                              //   onTap: () {},
                              //   dense: true,
                              //   title: Text(
                              //     S.of(context).about,
                              //     style: Theme.of(context).textTheme.bodyText2,
                              //   ),
                              //   trailing: Text(
                              //     Helper.limitString(
                              //         userRepo.currentUser.value.bio),
                              //     overflow: TextOverflow.fade,
                              //     softWrap: false,
                              //     style: TextStyle(
                              //         color: Theme.of(context).focusColor),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(15),
                            // boxShadow: [
                            //   BoxShadow(
                            //       color: Theme.of(context)
                            //           .hintColor
                            //           .withOpacity(0.15),
                            //       offset: Offset(0, 3),
                            //       blurRadius: 10)
                            // ],
                          ),
                          child: ListView(
                            shrinkWrap: true,
                            primary: false,
                            children: <Widget>[
                              ListTile(
                                leading: Icon(Icons.credit_card),
                                title: Text(
                                  S.of(context).payments_settings,
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                trailing: ButtonTheme(
                                  padding: EdgeInsets.all(0),
                                  minWidth: 50.0,
                                  height: 25.0,
                                  child: ButtonTheme(
                                    padding: EdgeInsets.all(0),
                                    minWidth: 50.0,
                                    height: 25.0,
                                    child: PaymentSettingsDialog(
                                      creditCard: _con.creditCard,
                                      onChanged: () {
                                        _con.updateCreditCard(
                                            context, _con.creditCard);
                                        //setState(() {});
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              ListTile(
                                dense: true,
                                title: Text(
                                  S.of(context).default_credit_card,
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                                trailing: Text(
                                  _con.creditCard.number.isNotEmpty
                                      ? _con.creditCard.number.replaceRange(
                                          0,
                                          _con.creditCard.number.length - 4,
                                          '...')
                                      : 'NO HAY',
                                  style: TextStyle(
                                      color: Theme.of(context).focusColor),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(15),
                            // boxShadow: [
                            //   BoxShadow(
                            //       color: Theme.of(context)
                            //           .hintColor
                            //           .withOpacity(0.15),
                            //       offset: Offset(0, 3),
                            //       blurRadius: 10)
                            // ],
                          ),
                          child: ListView(
                            shrinkWrap: true,
                            primary: false,
                            children: <Widget>[
                              ListTile(
                                leading: Icon(UiIcons.settings_1),
                                title: Text(
                                  S.of(context).app_settings,
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.of(context).pushNamed('/Languages');
                                },
                                dense: true,
                                title: Row(
                                  children: <Widget>[
                                    Icon(
                                      UiIcons.planet_earth,
                                      size: 22,
                                      color: Theme.of(context).focusColor,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      S.of(context).languages,
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                  ],
                                ),
                                trailing: Text(
                                  S.of(context).english,
                                  style: TextStyle(
                                      color: Theme.of(context).focusColor),
                                ),
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed('/DeliveryAddresses');
                                },
                                dense: true,
                                title: Row(
                                  children: <Widget>[
                                    Icon(
                                      UiIcons.like,
                                      size: 22,
                                      color: Theme.of(context).focusColor,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      S.of(context).delivery_addresses,
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                  ],
                                ),
                              ),
                              ListTile(
                                onTap: () {
                                  Navigator.of(context).pushNamed('/Help');
                                },
                                dense: true,
                                title: Row(
                                  children: <Widget>[
                                    Icon(
                                      UiIcons.information,
                                      size: 22,
                                      color: Theme.of(context).focusColor,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      S.of(context).help_support,
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ))
        : Scaffold(body: PermissionDeniedWidget());
  }
}
