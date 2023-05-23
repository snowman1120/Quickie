import 'package:ecommerce/generated/l10n.dart';
import 'package:ecommerce/src/controllers/ticket_controller.dart';
import 'package:ecommerce/src/models/route_argument.dart';
import 'package:ecommerce/src/utils/size_config.dart';
import 'package:ecommerce/src/views/pages/search_result/widgets/staggered_dual_view.dart';
import 'package:ecommerce/src/views/utils/flat_app_bar.dart';
import 'package:flutter/material.dart';

import './ticket_item.dart';

import 'package:mvc_pattern/mvc_pattern.dart';

class SearchTicketResultPage extends StatefulWidget {
  SearchTicketResultPage({Key key}) {}

  @override
  _SearchResultPageState createState() => _SearchResultPageState();
}

class _SearchResultPageState extends StateMVC<SearchTicketResultPage> {
  TicketController _controller;

  _SearchResultPageState() : super(TicketController()) {
    _controller = controller;
  }

  @override
  void initState() {
    _controller.listenForTickets();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var sizeConfig = SizeConfig.init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        toolbarHeight: 55,
        title: Container(
          width: sizeConfig.screenWidth,
          height: 50,
          decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey.shade500,
                width: 0.4,
              )),
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: S.of(context).search_for_tickets,
              prefixIcon: Icon(
                Icons.search,
              ),
            ),
            onChanged: (text) {
              print('First text field: $text');
            },
            onSubmitted: (text) async {
              await _controller.refreshSearch(text);
              _controller.saveSearch(text);
            },
          ),
        ),
      ),
      body: _controller.tickets.length > 0
          ? RefreshIndicator(
              onRefresh: () async {
                setState(() {
                  _controller.refresh();
                });
              },
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Stack(
                    children: [
                      StaggeredDualView(
                        intemCount: _controller.tickets.length,
                        itemBuilder: (context, index) {
                          return TicketItem(
                            ticket: _controller.tickets.elementAt(index),
                          );
                        },
                        aspectRatio: 0.7,
                        spacing: 10,
                      ),
                      Container(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        child: Text(
                          'Found\n${_controller.tickets.length} results',
                          style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          : SafeArea(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: sizeConfig.getProportionateScreenWidth(20)),
                  child: Text(
                    "SORRY, WE CAN'T FIND YOUR TICKET!!",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
              ),
            ),
    );
  }
}

// class SearchBar extends StatelessWidget {
//   const SearchBar({
//     Key? key,
//     required this.sizeConfig,
//     this.con,
//   }) : super(key: key);

//   final SizeConfig sizeConfig;
//   final TicketSearchController? con;
//   @override
//   Widget build(BuildContext context) {
//     return ;
//   }
// }

Container _settingsButton(BuildContext context,
        {double size, Function onClickFilter}) =>
    Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        // color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.shade100,
        //     spreadRadius: 5,
        //     blurRadius: 15,
        //     offset: Offset(-5, 5),
        //   ),
        // ],
      ),
      child: IconButton(
        icon: Icon(
          Icons.settings,
          color: Theme.of(context).accentColor,
        ),
        onPressed: () {
          onClickFilter('e');
        },
      ),
    );
