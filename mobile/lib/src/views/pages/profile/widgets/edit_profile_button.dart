import 'package:flutter/material.dart';

import '../../../../routes/routes_names.dart';
import '../../../../../generated/l10n.dart';

class EditProfileButton extends StatelessWidget {
  const EditProfileButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).pushNamed(RouteNames.settingsPage);
      },
      child: Text(
        S.of(context).profile_settings,
        style: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
      ),
    );
  }
}
