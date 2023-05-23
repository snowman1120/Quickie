import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:global_configuration/global_configuration.dart';

import '../../../../models/ticket.dart';
import '../../../../models/route_argument.dart';
import '../../../../repository/user_repository.dart';
import '../../../../routes/routes_names.dart';

class TicketItem extends StatelessWidget {
  const TicketItem({
    Key key,
    @required this.ticket,
  }) : super(key: key);

  final Ticket ticket;
  @override
  Widget build(BuildContext context) {
    final heroTag = 'search_result' + ticket.name;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Theme.of(context).cardColor,
      ),
      child: InkWell(
        onTap: () {
          if (currentUser.value.apiToken == null) {
            Navigator.of(context).pushNamed(RouteNames.loginPage);
          } else {
            Navigator.of(context).popAndPushNamed(RouteNames.ticketsDetailPage,
                arguments: new RouteArgument(
                    id: this.ticket.id, param: [this.ticket, heroTag]));
          }
        },
        child: Stack(
          children: [
            Column(
              children: [
                Hero(
                  tag: heroTag,
                  child: FadeInImage(
                    image: NetworkImage(
                      ticket.image != null
                          ? ticket.image.thumb
                          : ticket.imageUrl,
                    ),
                    placeholder: AssetImage(
                      'assets/img/loading_product.gif',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                AutoSizeText(
                  ticket.name,
                  maxFontSize: 25,
                  minFontSize: 20,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ), //Theme.of(context).textTheme.headline5,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor.withOpacity(0.85),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Text.rich(
                TextSpan(
                    text: r'$',
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: ticket.price.toString(),
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
