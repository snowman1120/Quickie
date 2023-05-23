import 'package:flutter/material.dart';

import '../../../routes/routes_names.dart';
import '../../../utils/size_config.dart';
import 'widgets/add_card_button.dart';
import 'widgets/address_area.dart';
import 'widgets/card_icon.dart';
import 'widgets/credit_card.dart';
import '../../utils/custom_flat_fab.dart';
import '../../utils/flat_app_bar.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var sizeConfig = SizeConfig.init(context);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: sizeConfig.getProportionateScreenWidth(20)),
        child: ListView(
          children: [
            FlatAppBar(title: 'Payment'),
            AddressArea(),
            SizedBox(
              height: 15,
            ),
            _label('Payment Method'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AddCardButton(
                  onPress: () =>
                      Navigator.of(context).pushNamed(RouteNames.addCardPage),
                ),
                CardIcon(
                    image: 'assets/images/logos/mastercard.png',
                    selected: true),
                CardIcon(
                  image: 'assets/images/logos/paypal.png',
                  selected: false,
                ),
                CardIcon(
                  image: 'assets/images/logos/apple.png',
                  selected: false,
                ),
              ],
            ),
            CreditCard(
              color: Colors.black,
              cardExpiration: "05/2024",
              cardHolder: "Amaury Caballero",
              cardNumber: "5341 1512448 54887",
            ),
            _totalLabel('59.08')
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:
          CustomFlatLargeFAB(title: 'CONFIRM ORDER', onPressed: () {}),
    );
  }
}

_label(String label) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

_totalLabel(String price) => Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Total Pay',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text.rich(
            TextSpan(
              text: r'$' + '$price',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                    text: ' USD',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade600,
                    ))
              ],
            ),
          )
        ],
      ),
    );
