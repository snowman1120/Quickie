import 'package:flutter/material.dart';

class AddressArea extends StatelessWidget {
  const AddressArea({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          child: Text(
            'Shipping to',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Row(
          children: [
            _MapImage(),
            SizedBox(
              width: 40,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Home',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  '4140 Parker Rd. Allentown, New \nMexico 31134',
                  maxLines: 3,
                  overflow: TextOverflow.clip,
                )
              ],
            )
          ],
        )
      ],
    );
  }
}

class _MapImage extends StatelessWidget {
  const _MapImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      // decoration: BoxDecoration(
      //   boxShadow: [
      //     BoxShadow(
      //       offset: Offset(5, 10),
      //       color: Colors.grey.shade300.withOpacity(0.8),
      //       blurRadius: 20,
      //       spreadRadius: 5,
      //     )
      //   ],
      // ),
      child: Stack(
        children: [
          Container(
            height: 100,
            width: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/maps.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                // boxShadow: [
                //   BoxShadow(
                //     offset: Offset(5, 5),
                //     color: Colors.red.withOpacity(0.15),
                //     blurRadius: 10,
                //     spreadRadius: 10,
                //   ),
                // ],
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              child: Icon(
                Icons.location_city,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
