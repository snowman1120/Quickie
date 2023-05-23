import 'package:flutter/material.dart';

import '../../../utils/physics.dart';
import '../../utils/custom_flat_fab.dart';
import '../../utils/flat_app_bar.dart';
import '../../../../generated/l10n.dart';
import '../../../controllers/settings_controller.dart';
import '../../../models/credit_card.dart';

import '../../../repository/user_repository.dart' as userRepo;

import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';

class AddCardPage extends StatefulWidget {
  const AddCardPage({Key key}) : super(key: key);

  @override
  _AddCardPageState createState() => _AddCardPageState();
}

class _AddCardPageState extends StateMVC<AddCardPage> {
  String cardNumber = '';
  String cardHolderName = '';
  String cvvNumber = '';
  String expiryDate = '';
  String cvvCode = '';

  bool showBackView = false;
  bool isCvvFocused = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  SettingsController _controller;
  _AddCardPageState() : super(SettingsController()) {
    _controller = controller;
  }

  void onCreditCardModel(CreditCardModel creditCardModel) {
    setState(() {
      cardNumber = creditCardModel.cardNumber;
      cardHolderName = creditCardModel.cardHolderName;
      expiryDate = creditCardModel.expiryDate;
      cvvNumber = creditCardModel.cvvCode;
      showBackView = creditCardModel.isCvvFocused;
    });
  }

  static const border = OutlineInputBorder(
      borderRadius: BorderRadius.all(
    Radius.circular(15),
  ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: <Widget>[
              FlatAppBar(title: S.of(context).payment_settings),
              CreditCardWidget(
                labelCardHolder: S.of(context).full_name.toUpperCase(),
                animationDuration: Duration(seconds: 1),
                cardBgColor: Colors.black,
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                showBackView: isCvvFocused,
                obscureCardNumber: false,
                obscureCardCvv: false,
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: kScrollPhysics,
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  child: Column(
                    children: <Widget>[
                      CreditCardForm(
                        formKey: formKey,
                        obscureCvv: false,
                        obscureNumber: false,
                        cardNumber: cardNumber,
                        cvvCode: cvvCode,
                        cardHolderName: cardHolderName,
                        expiryDate: expiryDate,
                        themeColor: Colors.blue,
                        cardNumberDecoration: InputDecoration(
                          border: border,
                          labelText: S.of(context).number,
                          hintText: 'XXXX XXXX XXXX XXXX',
                        ),
                        expiryDateDecoration: InputDecoration(
                          border: border,
                          labelText: S.of(context).expiry_date,
                          hintText: 'XX/XX',
                        ),
                        cvvCodeDecoration: InputDecoration(
                          border: border,
                          labelText: S.of(context).cvv,
                          hintText: 'XXX',
                        ),
                        cardHolderDecoration: InputDecoration(
                          border: border,
                          labelText: S.of(context).full_name,
                        ),
                        onCreditCardModelChange: onCreditCardModelChange,
                      ),
                      SizedBox(
                        height: 150,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: CustomFlatLargeFAB(
        onPressed: () {
          if (formKey.currentState.validate()) {
            formKey.currentState.save();

            CreditCard _card = new CreditCard();
            _card.cvc = cvvCode;
            _card.expMonth = expiryDate.split('/')[0];
            _card.expYear = expiryDate.split('/')[1];
            _card.number = cardNumber;

            _card;

            userRepo.setCreditCard(_controller.creditCard).then(
              (value) {
                _controller.updateCreditCard(context, _card);
              },
            );
            Navigator.of(context).pop();
          }
        },
        title: S.of(context).save.toUpperCase(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  void onCreditCardModelChange(CreditCardModel creditCardModel) {
    setState(() {
      cardNumber = creditCardModel.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;

      print(expiryDate);
    });
  }
}
