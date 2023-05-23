// ignore: import_of_legacy_library_into_null_safe
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TicketDescription extends StatelessWidget {
  final String description;
  const TicketDescription({
    Key key,
    @required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _description = description.contains('<p>')
        ? description.replaceAll('<p>', '')
        : description;
    _description = description.contains('</p>')
        ? description.replaceAll('</p>', '')
        : description;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: AutoSizeText(
        '''$_description''',
        style: TextStyle(
          fontSize: 15,
          height: 1.5,
        ),
      ),
    );
  }
}
