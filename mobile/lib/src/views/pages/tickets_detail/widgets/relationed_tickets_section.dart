import '../../../../../generated/l10n.dart';
import 'package:flutter/material.dart';

import '../../../../models/ticket.dart';
import '../../../../utils/colors.dart';

class RelationedTicketsSection extends StatelessWidget {
  const RelationedTicketsSection({
    Key key,
    @required this.featuredTickets,
    @required this.addTicket,
  }) : super(key: key);

  final Function(Ticket ticket) addTicket;

  final List<Ticket> featuredTickets;

  @override
  Widget build(BuildContext context) {
    return featuredTickets.length <= 1
        ? Container()
        : Container(
            margin: EdgeInsets.only(top: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  S.of(context).featured_tickets,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                  ),
                ),
                ...List.generate(
                  featuredTickets.length,
                  (index) => _TicketListItem(
                    image: featuredTickets[index].image.icon,
                    name: featuredTickets[index].name,
                    price: featuredTickets[index].price,
                    addTicket: () {
                      addTicket(featuredTickets[index]);
                      featuredTickets.removeAt(index);
                    },
                  ),
                ),
                SizedBox(
                  height: 100,
                )
              ],
            ),
          );
  }
}

class _TicketListItem extends StatefulWidget {
  const _TicketListItem({
    Key key,
    @required this.image,
    @required this.name,
    @required this.price,
    @required this.addTicket,
  }) : super(key: key);

  final String image;
  final String name;
  final double price;
  final Function addTicket;
  @override
  __TicketListItemState createState() => __TicketListItemState();
}

class __TicketListItemState extends State<_TicketListItem> {
  bool _selected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: () {
          widget.addTicket();
          setState(() {});
        },
        child: Row(
          children: [
            SizedBox(
                width: 50,
                child: FadeInImage(
                  image: NetworkImage(widget.image),
                  placeholder: AssetImage('assets/img/loading.gif'),
                )),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 150,
              child: Text(
                widget.name,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Expanded(child: Container()),
            Text.rich(
              TextSpan(
                text: '+',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.shade500,
                ),
                children: [
                  TextSpan(
                    text: r'$' + widget.price.round().toString(),
                    style: TextStyle(
                      color: _selected ? kprimaryColor : Colors.grey.shade500,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 8),
            Container(
              height: 20,
              width: 20,
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  width: 1.5,
                  color: _selected ? kprimaryColor : Colors.grey.shade400,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: _selected ? kprimaryColor : Colors.transparent,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
