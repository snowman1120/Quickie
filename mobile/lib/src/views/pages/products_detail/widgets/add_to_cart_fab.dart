import 'package:flutter/material.dart';
import '../../../../../generated/l10n.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({Key key, @required this.onPressed, this.tag})
      : super(key: key);
  final Function onPressed;
  final Object tag;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: FloatingActionButton.extended(
        heroTag: tag,
        elevation: 0,
        onPressed: () {
          onPressed();
        },
        focusColor: Theme.of(context).accentColor,
        hoverColor: Theme.of(context).accentColor,
        backgroundColor: Theme.of(context).accentColor,
        focusElevation: 0,
        hoverElevation: 0,
        disabledElevation: 0,
        icon: Transform.translate(
          offset: Offset(-5, 0),
          child: Container(
            // margin: EdgeInsets.symmetric(vertical: 50),
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Icon(
                Icons.shopping_bag_rounded,
                color: Theme.of(context).accentColor,
              ),
            ),
          ),
        ),
        label: Text(
          S.of(context).add_to_cart.toUpperCase(),
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
