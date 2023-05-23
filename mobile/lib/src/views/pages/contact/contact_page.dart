import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../utils/physics.dart';
import '../../utils/flat_app_bar.dart';
import '../../utils/custom_entry.dart';
import '../../utils/custom_flat_fab.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: FlatAppBar(
          title: S.of(context).help_support,
        ),
      ),
      body: SingleChildScrollView(
        physics: kScrollPhysics,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomEntry(
                onSubmitted: (input) {},
                label: S.of(context).help_support,
                labelText: S.of(context).help_supports,
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFlatLargeFAB(
        onPressed: () {},
        title: S.of(context).help__support,
      ),
    );
  }
}
