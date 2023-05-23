import 'package:flutter/material.dart';
import '../../../../repository/user_repository.dart';
import '../../../../utils/size_config.dart';

class ProfileName extends StatelessWidget {
  const ProfileName({
    Key key,
    @required this.sizeConfig,
  }) : super(key: key);

  final SizeConfig sizeConfig;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: sizeConfig.getProportionateScreenWidth(25)),
      child: Text(
        currentUser.value.name,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
