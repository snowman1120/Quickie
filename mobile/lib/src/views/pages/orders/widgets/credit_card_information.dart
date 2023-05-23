import 'package:ecommerce/generated/l10n.dart';
import 'package:flutter/material.dart';

import '../../../../repository/user_repository.dart' as userRepo;

class CreditCardInformation extends StatelessWidget {
  const CreditCardInformation({
    Key key,
    @required this.paymentMethod,
  }) : super(key: key);
  final String paymentMethod;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      margin: EdgeInsets.only(top: 40),
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                paymentMethod,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
              ),
              // Image.asset(
              //   'assets/images/logos/mastercard.png',
              //   height: 30,
              // )
            ],
          ),
          Text(
            userRepo.currentUser.value.name,
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.headline1.merge(
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                ),
          )
        ],
      ),
    );
  }
}
