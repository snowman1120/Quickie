import 'package:flutter/material.dart';

class OnBoardingElements extends StatelessWidget {
  final String image;
  final String title;
  final String text;
  const OnBoardingElements({
    Key key,
    @required this.image,
    @required this.title,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var picture = Container(
      color: Colors.white,
      child: Image.asset(
        image,
        fit: BoxFit.cover,
        width: 400,
      ),
    );
    var _text = Column(
      children: <Widget>[
        Text(
          title,
          overflow: TextOverflow.clip,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w500,
            // shadows: <Shadow>[
            //   Shadow(
            //     color: Colors.black.withOpacity(0.2),
            //     blurRadius: 5,
            //     offset: Offset(3, 3),
            //   )
            // ],
          ),
        ),
        Divider(
          color: Colors.transparent,
          height: 20,
        ),
        Text(
          text,
          overflow: TextOverflow.clip,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
            // shadows: <Shadow>[
            //   Shadow(
            //     color: Colors.black.withOpacity(0.2),
            //     blurRadius: 5,
            //     offset: Offset(3, 3),
            //   )
            // ],
          ),
        )
      ],
    );

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 50,
            child: picture,
          ),
          Expanded(
            flex: 10,
            child: Container(),
          ),
          Expanded(
            flex: 40,
            child: _text,
          )
        ],
      ),
    );
  }
}
