import 'package:flutter/material.dart';

import '../../../../utils/physics.dart';
import '../../../../repository/user_repository.dart';

class MenuHeader extends StatelessWidget {
  const MenuHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
        child: SingleChildScrollView(
      physics: kScrollPhysics,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // decoration: BoxDecoration(
            //   boxShadow: [
            //     BoxShadow(
            //       blurRadius: 40,
            //       spreadRadius: -15,
            //       color: Colors.yellow.shade300.withOpacity(0.5),
            //       offset: Offset(0, 25),
            //     ),
            //   ],
            // ),
            child: CircleAvatar(
              backgroundImage: NetworkImage(currentUser.value.image.icon),
              radius: 50,
            ),
          ),
          Divider(
            thickness: 20,
            color: Colors.transparent,
          ),
          Text(
            currentUser.value.name,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            currentUser.value.email,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    ));
  }
}
