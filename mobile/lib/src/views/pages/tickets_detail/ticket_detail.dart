import 'dart:async';

import 'package:ecommerce/src/views/pages/tickets_detail/widgets/ticket_date.dart';
import 'package:ecommerce/src/views/pages/tickets_detail/widgets/ticket_group.dart';
import 'package:ecommerce/src/views/pages/tickets_detail/widgets/ticket_map.dart';
import 'package:ecommerce/src/views/pages/tickets_detail/widgets/ticket_video.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import 'widgets/quantity.dart';
import 'widgets/relationed_tickets_section.dart';
import 'widgets/ticket_description.dart';
import 'widgets/ticket_detail_header.dart';
import '../../../repository/user_repository.dart';
import '../../../routes/routes_names.dart';
import '../../../views/pages/products_detail/widgets/add_to_cart_fab.dart';
import '../../../utils/physics.dart';
import '../../../utils/size_config.dart';
import '../../../controllers/ticket_controller.dart';
import '../../../models/ticket.dart';
import '../../../models/route_argument.dart';
import 'widgets/ticket_title.dart';

class TicketsDetailPage extends StatefulWidget {
  final RouteArgument routeArgument;
  String _heroTag;
  Ticket ticket;

  TicketsDetailPage({
    Key key,
    @required this.routeArgument,
  }) {
    ticket = this.routeArgument.param[0] as Ticket;
    _heroTag = this.routeArgument.param[1] as String;
  }

  @override
  _TicketsDetailPageState createState() => _TicketsDetailPageState();
}

class _TicketsDetailPageState extends StateMVC<TicketsDetailPage>
    with SingleTickerProviderStateMixin {
  TicketController _controller;

  _TicketsDetailPageState() : super(TicketController()) {
    _controller = controller;
  }

  @override
  void initState() {
    _controller.listenForFeaturedTickets();
    _controller.listenForTicket(ticketId: widget.ticket.id);
    _controller.listenForCart();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var sizeConfig = SizeConfig.init(context);

    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            _controller.refreshTicket();
          },
          child: SingleChildScrollView(
            physics: kScrollPhysics,
            child: Padding(
              padding: EdgeInsets.only(
                  right: sizeConfig.getProportionateScreenWidth(20),
                  left: sizeConfig.getProportionateScreenWidth(20),
                  top: sizeConfig.getProportionateScreenWidth(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TicketsDetailHeader(
                    heroTag: widget._heroTag,
                    image: widget.ticket.image != null
                        ? widget.ticket.image.thumb
                        : widget.ticket.imageUrl,
                    video: widget.ticket.video != null
                        ? widget.ticket.video.thumb
                        : widget.ticket.videoUrl,
                    con: _controller,
                  ),
                  !(_controller.total == null)
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TicketsTitle(
                              title: widget.ticket.name.toString(),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            /*RatingSection(
                              rate: _controller.ticket.rate,
                              reviewsQuantity:
                                  _controller.ticket.ticketReviews.length.toString(),
                            ),*/
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Helper.getPrice(widget.ticket.price!, context, style: TextStyle()),
                                _TicketPrice('${_controller.total.round()}'),
                                Quantity(
                                  increment: () {
                                    _controller.incrementQuantity();
                                  },
                                  decrement: () {
                                    _controller.decrementQuantity();
                                  },
                                  quantity: _controller.quantity,
                                ),
                              ],
                            ),
                            TicketDescription(
                              description: widget.ticket.description,
                            ),
                            // TicketSizeSelector(
                            //   sizeConfig: sizeConfig,
                            //   selectOption: (option) {
                            //     // _controller.ticket
                            //   },
                            //   options: _controller.ticket.options,
                            // ),
                            TicketGroup(
                                group_artist: widget.ticket.groupArtist),
                            TicketDate(
                              startDate: widget.ticket.date.startDate,
                              endDate: widget.ticket.date.endDate,
                            ),
                            //TicketVideo(),
                            TicketMap(
                                widget.ticket.venue.latitude,
                                widget.ticket.venue.longitude,
                                widget.ticket.venue.zoom),
                            RelationedTicketsSection(
                              featuredTickets: _controller.featuredTickets,
                              addTicket: (Ticket ticket) {
                                _controller.addToCart(context, ticket);
                              },
                            ),
                            SizedBox(
                              height: 100,
                            )
                          ],
                        )
                      : Center(child: CircularProgressIndicator())
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: AddToCart(
        tag: "${widget.ticket.name}-${widget.ticket.id}",
        onPressed: () {
          try {
            if (currentUser.value.apiToken == null) {
              Navigator.of(context).pushNamed(RouteNames.loginPage);
            } else {
              _controller.addToCart(context, _controller.ticket);
              // Navigator.of(context).pushNamedAndRemoveUntil(
              //     RouteNames.menuNavigationPage,
              //     (Route<dynamic> route) => false);
              Navigator.pop(context);
            }
          } catch (e) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(e.toString())));
          }
          // Navigator.of(context).pop();
          //Navigator.of(context).pushNamed(RouteNames.cartPage);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class _TicketPrice extends StatelessWidget {
  const _TicketPrice(
    this.price, {
    Key key,
  }) : super(key: key);

  final String price;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: r'$',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
        children: [
          TextSpan(
            text: price,
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}
