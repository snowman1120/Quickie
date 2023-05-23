import 'package:flutter/material.dart';

import '../../../repository/user_repository.dart';
import '../../../utils/physics.dart';
import '../../../utils/size_config.dart';
import 'widgets/custom_profile_app_bar.dart';
import 'widgets/edit_profile_button.dart';
import 'widgets/profile_name.dart';
import 'widgets/profile_picture.dart';
import '../../utils/custom_entry.dart';
import '../../../widgets/PermissionDeniedWidget.dart';
import '../../../../generated/l10n.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage();

  @override
  Widget build(BuildContext context) {
    var sizeConfig = SizeConfig.init(context);
    return Scaffold(
      body: !(currentUser.value.apiToken == null)
          ? Stack(
              children: [
                CustomProfileAppBar(),
                Padding(
                  padding: EdgeInsets.only(
                      top: 80,
                      left: sizeConfig.getProportionateScreenWidth(20),
                      right: sizeConfig.getProportionateScreenWidth(20)),
                  child: ListView(
                    physics: kScrollPhysics,
                    keyboardDismissBehavior:
                        ScrollViewKeyboardDismissBehavior.onDrag,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ProfilePicture(),
                          ProfileName(sizeConfig: sizeConfig),
                          EditProfileButton(),
                        ],
                      ),
                      Container(
                        child: CustomEntry(
                          label: S.of(context).full_name,
                          labelText: currentUser.value.name,
                          enabled: false,
                        ),
                      ),
                      CustomEntry(
                        label: S.of(context).email,
                        labelText: currentUser.value.email,
                        enabled: false,
                      ),
                      CustomEntry(
                        label: S.of(context).phone,
                        labelText: currentUser.value.phone ?? '',
                        enabled: false,
                      ),
                      SizedBox(
                        height: 50,
                      )
                    ],
                  ),
                ),
              ],
            )
          : PermissionDeniedWidget(),
    );
  }
}
