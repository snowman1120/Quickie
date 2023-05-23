import 'package:ecommerce/generated/l10n.dart';
import 'package:ecommerce/src/controllers/ticket_controller.dart';
import 'package:ecommerce/src/utils/animations/fade_animation.dart';
import 'package:ecommerce/src/utils/physics.dart';
import 'package:ecommerce/src/utils/size_config.dart';
import 'package:ecommerce/src/views/utils/custom_entry.dart';
import 'package:ecommerce/src/views/utils/custom_page_title.dart';
import 'package:ecommerce/src/views/utils/custom_page_top.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key key, SizeConfig sizeConfig}) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  TicketController _controller;
  SizeConfig sizeConfig;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
            padding: EdgeInsets.only(
              left: 25,
              right: 25,
              top: 25,
            ),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a search term',
              ),
            )),
      ),
    ));
  }
}
