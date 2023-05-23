import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';
import '../../../../routes/routes_names.dart';
import '../../../../utils/physics.dart';

class NoMenuHeader extends StatelessWidget {
  const NoMenuHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 160),
      child: SingleChildScrollView(
        physics: kScrollPhysics,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
            ),
            Text(
              S.of(context).welcome,
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(S.of(context).loginAccountOrCreateNewOneForFree,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    .merge(TextStyle(fontWeight: FontWeight.w400))),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(RouteNames.loginPage);
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Theme.of(context).accentColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  child: Text(
                    S.of(context).login,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        .merge(TextStyle(fontWeight: FontWeight.w400)),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(RouteNames.signupPage);
                  },
                  child: Text(
                    S.of(context).register,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        .merge(TextStyle(fontWeight: FontWeight.w400)),
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: Theme.of(context).cardColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                )
              ],
            ),
            // SizedBox(height: 150),
          ],
        ),
      ),
    );
  }
}
