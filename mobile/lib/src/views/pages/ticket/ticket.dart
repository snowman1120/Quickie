import 'package:ecommerce/generated/l10n.dart';
import 'package:ecommerce/src/utils/size_config.dart';
import 'package:ecommerce/src/views/pages/ticket/widgets/ticket_list.dart';
import 'package:flutter/material.dart';
import './widgets/search_widget.dart';

class TicketPage extends StatefulWidget {
  const TicketPage({Key key}) : super(key: key);

  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  @override
  Widget build(BuildContext context) {
    var sizeConfig = SizeConfig.init(context);
    return Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).ticket),
        ),
        body: Container(
            width: sizeConfig.screenWidth,
            child: Column(
              children: [
                Expanded(
                    child: Container(
                        child: Padding(
                            padding: EdgeInsets.only(
                              right: sizeConfig.getProportionateScreenWidth(20),
                              left: sizeConfig.getProportionateScreenWidth(20),
                              top: sizeConfig.getProportionateScreenWidth(20),
                            ),
                            //child: SearchWidget(sizeConfig: sizeConfig))));
                            child: SearchTicketResultPage())))
              ],
            )));
  }
}
