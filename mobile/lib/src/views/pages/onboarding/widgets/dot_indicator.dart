import '../../../../controllers/walkthrough_controller.dart';
import '../../../../utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class DotIndicator extends StatefulWidget {
  final int count;
  const DotIndicator({Key key, @required this.count}) : super(key: key);

  @override
  _DotIndicatorState createState() => _DotIndicatorState();
}

class _DotIndicatorState extends StateMVC<DotIndicator> {
  var _controller;
  _DotIndicatorState() : super(WalkthroughController()) {
    _controller = controller;
  }

  @override
  void initState() {
    _controller.addListener();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ///
    _dot(int index) => AnimatedContainer(
          height: _controller.index.value == index ? 7 : 6,
          width: _controller.index.value == index ? 30 : 6,
          margin: EdgeInsets.symmetric(
              horizontal: _controller.index.value == index ? 2 : 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: _controller.index.value == index
                ? kprimaryColor
                : Colors.blue[200],
          ),
          duration: Duration(milliseconds: 200),
        );

    ///
    ///
    return Column(
      children: [
        Expanded(
          flex: 55,
          child: Container(),
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                widget.count,
                (index) => _dot(index),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 45,
          child: Container(),
        ),
      ],
    );
  }
}
