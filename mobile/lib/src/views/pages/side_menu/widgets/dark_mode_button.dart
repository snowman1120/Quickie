import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';
import '../../../../repository/settings_repository.dart';
import '../../../../utils/colors.dart';

class DarkModeButton extends StatelessWidget {
  const DarkModeButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      height: 50,
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        splashColor: kprimaryColor,
        highlightColor: kprimaryColor,
        onTap: () {
          if (Theme.of(context).brightness == Brightness.dark) {
            setBrightness(Brightness.light);
            setting.value.brightness.value = Brightness.light;
          } else {
            setting.value.brightness.value = Brightness.dark;
            setBrightness(Brightness.dark);
          }
          setting.notifyListeners();
        },
        child: Row(
          children: [
            Icon(
              Icons.brightness_6_rounded,
              color: Colors.grey,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              Theme.of(context).brightness == Brightness.dark
                  ? S.of(context).light_mode
                  : S.of(context).dark_mode,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
      ),
    );
  }
}
