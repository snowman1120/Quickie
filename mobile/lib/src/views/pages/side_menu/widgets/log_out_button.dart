import 'package:flutter/material.dart';

import '../../../../utils/colors.dart';

class LogOutButton extends StatelessWidget {
  final Function onTap;
  const LogOutButton({
    Key key,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 20,
      ),
      child: TextButton.icon(
          style: TextButton.styleFrom(
            backgroundColor: kprimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            //  shadowColor: kprimaryShadow,
            //  elevation: 15,
          ),
          onPressed: () {
            onTap();
          },
          icon: Icon(
            Icons.power,
            color: Colors.white,
          ),
          label: Container(
            margin: EdgeInsets.only(right: 15),
            child: Text(
              'Log Out',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
          )),
    );
  }
}
