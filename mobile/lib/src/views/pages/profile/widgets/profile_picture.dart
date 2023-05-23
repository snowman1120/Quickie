import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../repository/user_repository.dart';
// import 'package:ui/src/utils/colors.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150,
          width: 150,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            // boxShadow: [
            //   BoxShadow(
            //     color: kprimaryColor.withOpacity(0.15),
            //     blurRadius: 20,
            //     spreadRadius: 20,
            //   ),
            // ],
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(100),
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: currentUser.value.image.icon != null
                  ? CachedNetworkImage(
                      imageUrl: currentUser.value.image.icon,
                      fit: BoxFit.fill,
                    )
                  : Image.asset('assets/images/avatar.png')),
        ),
        // _CameraButton()
      ],
    );
  }
}
/*
class _CameraButton extends StatelessWidget {
  const _CameraButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 100,
      top: 110,
      child: GestureDetector(
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey.shade400.withOpacity(0.2),
            //     blurRadius: 10,
            //     spreadRadius: 10,
            //   ),
            // ],
            borderRadius: BorderRadius.circular(50),
          ),
          child: Icon(Icons.camera),
        ),
        onTap: () {},
      ),
    );
  }
}
*/