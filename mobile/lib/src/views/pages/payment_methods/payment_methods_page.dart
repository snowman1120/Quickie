import 'package:flutter/material.dart';

import '../../../repository/user_repository.dart';
import '../../../utils/colors.dart';
import '../../../widgets/PermissionDeniedWidget.dart';

class PaymentMethodsPage extends StatelessWidget {
  const PaymentMethodsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return !(currentUser.value.apiToken == null)
        ? Scaffold(
            appBar: AppBar(
              title: Text('Payment methods '),
            ),
            body: Container(
              color: kprimaryColor,
            ),
          )
        : Scaffold(body: PermissionDeniedWidget());
  }
}
