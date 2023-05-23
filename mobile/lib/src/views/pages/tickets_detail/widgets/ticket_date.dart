// ignore: import_of_legacy_library_into_null_safe
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ecommerce/src/models/period_date.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TicketDate extends StatelessWidget {
  final DateTime startDate;
  final DateTime endDate;
  const TicketDate({Key key, @required this.startDate, @required this.endDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _startDate = DateFormat('yyyy-MM-dd HH:mm').format(startDate);
    String _endDate = DateFormat('yyyy-MM-dd HH:mm').format(endDate);

    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      // child: AutoSizeText(
      //   '''$group_artist''',
      //   style: TextStyle(
      //     fontSize: 15,
      //     height: 1.5,
      //   ),
      // ),
      child: Row(
        children: [
          Text(
            "Date : ",
            style: TextStyle(fontSize: 20, height: 2),
          ),
          AutoSizeText(
            '''$_startDate ~ $_endDate''',
            style: TextStyle(
              fontSize: 20,
              height: 2,
            ),
          ),
        ],
      ),
    );
  }
}
