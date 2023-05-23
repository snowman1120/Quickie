import 'package:ecommerce/generated/l10n.dart';
import 'package:flutter/material.dart';
import '../../../../utils/colors.dart';

class DoubleFAB extends StatelessWidget {
  const DoubleFAB({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                width: 1.5,
                color: kprimaryColor,
              )),
          child: SizedBox(
            height: 60,
            width: 180,
            child: FloatingActionButton.extended(
              backgroundColor: Theme.of(context).cardColor,
              hoverElevation: 0,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              splashColor: Colors.transparent,
              foregroundColor: Colors.transparent,
              focusElevation: 0,
              disabledElevation: 0,
              highlightElevation: 0,
              elevation: 0,
              onPressed: () {},
              label: Text(
                'RATE',
                style: TextStyle(
                  color: Theme.of(context).accentColor,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 60,
          width: 180,
          child: FloatingActionButton.extended(
            elevation: 0,
            onPressed: () {},
            label: Text(
              'RE-ORDER',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        )
      ],
    );
  }
}
