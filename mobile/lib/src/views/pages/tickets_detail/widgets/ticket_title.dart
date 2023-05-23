// ignore: import_of_legacy_library_into_null_safe
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TicketsTitle extends StatelessWidget {
  const TicketsTitle({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      title,
      minFontSize: 40,
      maxFontSize: 50,
      style: TextStyle(
        fontWeight: FontWeight.w800,
      ),
    );
  }
}
