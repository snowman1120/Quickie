import 'package:flutter/material.dart';

import '../../utils/animations/fade_animation.dart';
import '../../utils/colors.dart';

class CustomPageTop extends StatelessWidget {
  const CustomPageTop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ///
    var _circle1 = _Circle(
      color: Color(0xFF00E6FF).withOpacity(0.8),
      child: Center(
        child: Container(
          width: 23,
          height: 23,
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    );

    ///
    var _circle2 = _Circle(
      size: 165,
      offset: Offset(-120, -80),
      color: Color(0xFF01B2FF).withOpacity(0.1),
    );

    ///
    var _circle3 = _Circle(
      size: 181,
      offset: Offset(200, -90),
      color: Color(0xFF01B2FF),
    );

    ///
    return Container(
      child: Stack(
        children: [
          FadeAnimation(1, _circle1),
          FadeAnimation(1.5, _circle2),
          FadeAnimation(2, _circle3),
        ],
      ),
    );
  }
}

class _Circle extends StatelessWidget {
  final Offset offset;
  final double size;
  final Color color;
  final Widget child;

  const _Circle({
    Key key,
    this.offset = const Offset(-160, 0),
    this.size = 96,
    this.color = kprimaryColor,
    this.child = const Center(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: offset,
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(100),
        ),
        child: child,
      ),
    );
  }
}
