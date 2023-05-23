import '../../../../models/address.dart';
import 'package:flutter/material.dart';

import '../../../../repository/settings_repository.dart' as settingRepo;

class AddressTile extends StatelessWidget {
  const AddressTile({
    Key key,
    @required this.address,
    this.onPressed,
    @required this.onResize,
    @required this.onDismissRight,
    @required this.onDismissLeft,
  }) : super(key: key);
  final Address address;
  final ValueChanged<Address> onPressed;
  final Function onDismissRight;
  final Function onDismissLeft;
  final Function onResize;
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      onDismissed: (direction) {
        if (direction == DismissDirection.startToEnd) {
          onDismissLeft();
        } else if (direction == DismissDirection.endToStart) {
          onDismissRight();
        }
      },
      onResize: () {
        onResize();
      },
      background: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.green,
        ),
        child: SizedBox(
          height: 100,
        ),
      ),
      secondaryBackground: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.red,
        ),
        child: SizedBox(
          height: 100,
        ),
      ),
      child: GestureDetector(
        onTap: () {
          onPressed(address);
        },
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(20),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey.shade200,
            //     offset: Offset(15, 15),
            //     blurRadius: 20,
            //     spreadRadius: 3,
            //   ),
            // ],
          ),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 80,
                width: 80,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(
                  vertical: 30,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(15),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.grey.shade200,
                  //     blurRadius: 20,
                  //     spreadRadius: 3,
                  //     offset: Offset(10, 15),
                  //   ),
                  // ],
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    Icons.location_on_rounded,
                    color: settingRepo.deliveryAddress.value.address ==
                            address.address
                        ? Colors.orange.shade200
                        : Colors.white,
                    size: 40,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    address.description ?? 'null',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Container(
                    width: 200,
                    height: 40,
                    child: Text(
                      address.address ?? 'null',
                      maxLines: 2,
                      style: Theme.of(context).textTheme.bodyText2,
                      overflow: TextOverflow.clip,
                    ),
                  )
                ],
                // ),
                // Text.rich(
                //     TextSpan(
                //       text: '${address.description}\n',
                //       style: TextStyle(
                //         height: 1.5,
                //         fontSize: 25,
                //         fontWeight: FontWeight.bold,
                //       ),
                //       children: [
                //         // TextSpan(
                //         //   text: '542-154-5184\n',
                //         //   style: TextStyle(
                //         //     fontSize: 15,
                //         //     fontWeight: FontWeight.w400,
                //         //   ),
                //         // ),
                //         TextSpan(
                //           text: address.address,
                //           style: TextStyle(
                //             fontSize: 15,
                //             fontWeight: FontWeight.w400,
                //           ),
                //         ),
                //       ],
                //     ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
