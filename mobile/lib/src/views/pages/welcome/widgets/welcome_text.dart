import 'package:flutter/material.dart';
import '../../../../utils/colors.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _title(),
          _label(),
        ],
      ),
    );
  }
}

Column _title() {
  return Column(
    children: <Row>[
      Row(
        children: [
          Text('Welcome to',
              overflow: TextOverflow.clip,
              textAlign: TextAlign.start,
              style: _textStyle(
                color: Colors.white,
              )),
        ],
      ),
      Row(
        children: [
          Text('Puff',
              overflow: TextOverflow.clip,
              textAlign: TextAlign.start,
              style: _textStyle(
                color: kprimaryColor,
              )),
        ],
      ),
    ],
  );
}

_textStyle({Color color}) => TextStyle(
      color: color,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
      fontSize: 60,
    );

_label() => Padding(
      padding: EdgeInsets.only(top: 5),
      child: Text(
        '''Your favourite drinks delivered
fast at your door.''',
        overflow: TextOverflow.clip,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w300,
          fontSize: 20,
        ),
      ),
    );
