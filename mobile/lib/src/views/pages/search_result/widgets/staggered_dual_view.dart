import 'package:flutter/material.dart';

import '../../../../utils/physics.dart';

class StaggeredDualView extends StatelessWidget {
  const StaggeredDualView({
    Key key,
    @required this.itemBuilder,
    @required this.intemCount,
    @required this.spacing,
    @required this.aspectRatio,
  }) : super(key: key);

  final IndexedWidgetBuilder itemBuilder;
  final int intemCount;
  final double spacing;
  final double aspectRatio;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final width = constraints.maxWidth;
        final height = constraints.maxHeight + 100;
        final itemHeight = (width * 0.5) / aspectRatio;
        return OverflowBox(
          maxWidth: width,
          minWidth: width,
          minHeight: height,
          maxHeight: height,
          child: GridView.builder(
              padding: EdgeInsets.only(top: itemHeight / 2, bottom: itemHeight),
              physics: kScrollPhysics,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: aspectRatio,
                crossAxisSpacing: spacing,
                mainAxisSpacing: spacing,
              ),
              itemCount: intemCount,
              itemBuilder: (context, index) {
                return Transform.translate(
                    offset: Offset(0.0, index.isOdd ? 0 : 100),
                    child: itemBuilder(context, index));
              }),
        );
      },
    );
  }
}
