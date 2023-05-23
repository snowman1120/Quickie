// ignore: import_of_legacy_library_into_null_safe
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TicketGroup extends StatelessWidget {
  final String group_artist;
  const TicketGroup({
    Key key,
    @required this.group_artist,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            "Group : ",
            style: TextStyle(fontSize: 20, height: 2),
          ),
          AutoSizeText(
            '''$group_artist''',
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
