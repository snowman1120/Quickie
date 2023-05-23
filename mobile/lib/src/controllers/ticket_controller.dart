import 'package:ecommerce/generated/l10n.dart';
import 'package:ecommerce/src/models/cart.dart';
import 'package:ecommerce/src/models/favorite.dart';
import 'package:ecommerce/src/models/option.dart';
import 'package:ecommerce/src/models/review.dart';
import 'package:ecommerce/src/models/ticket.dart';
import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../repository/cart_repository.dart';
import '../repository/ticket_repository.dart';

class TicketController extends ControllerMVC {
  Ticket ticket;
  List<Ticket> tickets = [];
  List<Ticket> featuredTickets = [];
  List<Review> reviews = <Review>[];
  List<Favorite> favorites = <Favorite>[];
  List<Cart> carts = [];
  Favorite favorite;
  double quantity = 1;
  double total = 0;
  bool loadCart = false;
  GlobalKey<ScaffoldState> scaffoldKey;

  TicketController() {
    this.scaffoldKey = new GlobalKey<ScaffoldState>();
  }

  Future<void> refreshFavorites() async {
    favorites.clear();
    listenForFavorites(message: 'Favorites refreshed successfuly');
  }

  void listenForFavorites({String message}) async {
    final Stream<Favorite> stream = await getFavorites();
    stream.listen((Favorite _favorite) {
      setState(() {
        favorites.add(_favorite);
      });
    }, onError: (a) {
      scaffoldKey.currentState.showSnackBar(SnackBar(
        content: Text(S.current.verify_your_internet_connection),
      ));
    }, onDone: () {
      if (message != null) {
        scaffoldKey.currentState.showSnackBar(SnackBar(
          content: Text(message),
        ));
      }
    });
  }

  void listenForFeaturedTickets() async {
    final Stream<Ticket> stream = await getTickets();
    stream.listen((Ticket _ticket) {
      if (_ticket.featured) {
        setState(() => tickets.add(_ticket));
      }
    }, onError: (a) {
      print(a);
    }, onDone: () {});
  }

  void listenForTicket({String ticketId, String message}) async {
    final Stream<Ticket> stream = await getTicket(ticketId);
    stream.listen((Ticket _ticket) {
      setState(() => ticket = _ticket);
    }, onError: (a) {
      print(a);
      scaffoldKey.currentState?.showSnackBar(SnackBar(
        content: Text(S.current.verify_your_internet_connection),
      ));
    }, onDone: () {
      calculateTotal();
      if (message != null) {
        scaffoldKey.currentState?.showSnackBar(SnackBar(
          content: Text(message),
        ));
      }
    });
  }

  void listenForFavorite({String ticketId}) async {
    final Stream<Favorite> stream = await isFavoriteTicket(ticketId);
    stream.listen((Favorite _favorite) {
      setState(() => favorite = _favorite);
    }, onError: (a) {
      print(a);
    });
  }

  void listenForCart() async {
    final Stream<Cart> stream = await getCart();
    stream.listen((Cart _cart) {
      carts.add(_cart);
    });
  }

  void addToCart(BuildContext context, Ticket ticket,
      {bool reset = false}) async {
    try {
      var _newCart = new Cart();
      _newCart.quantity = this.quantity;
      // if quantity more than Items Available
      if (double.parse(ticket.itemsAvailable) >= _newCart.quantity) {
        setState(() {
          this.loadCart = true;
        });
        _newCart.product = ticket;
        if (ticket.options != null) {
          _newCart.options =
              ticket.options.where((element) => element.checked).toList();
          // if ticket exist in the cart then increment quantity
          var _oldCart = isExistInCart(_newCart);
          if (_oldCart != null) {
            if (_oldCart.quantity + this.quantity <=
                double.parse(ticket.itemsAvailable)) {
              _oldCart.quantity += this.quantity;
              updateCart(_oldCart).then((value) {
                setState(() {
                  this.loadCart = false;
                });
              }).whenComplete(() {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(S.current.this_ticket_was_added_to_cart),
                ));
                listenForCartsCount();
              });
            } else {
              setState(() {
                this.loadCart = false;
              });
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('No items available '),
              ));
            }
          } else {
            // the ticket doesnt exist in the cart add new one
            addCart(_newCart, reset).then((value) {
              setState(() {
                this.loadCart = false;
              });
            }).whenComplete(() {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(S.current.this_ticket_was_added_to_cart),
              ));
              listenForCartsCount();
            });
          }
        }
      } else {
        scaffoldKey?.currentState?.showSnackBar(SnackBar(
          content: Text('No items available '),
        ));
      }
    } catch (e) {
      scaffoldKey?.currentState?.showSnackBar(SnackBar(
        content: Text('No items available '),
      ));
    }
    ;
  }

  Cart isExistInCart(Cart _cart) {
    return carts.firstWhere((Cart oldCart) => _cart.isSame(oldCart),
        orElse: () => null);
  }

  void addToFavorite(Ticket ticket, BuildContext context) async {
    var _favorite = new Favorite();
    _favorite.product = ticket;
    _favorite.options = ticket.options.where((Option _option) {
      return _option.checked;
    }).toList();
    addFavorite(_favorite).then((value) {
      setState(() {
        this.favorite = value;
      });
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('This ticket was added to favorite'),
      ));
    });
  }

  void removeFromFavorite(Favorite _favorite, BuildContext context) async {
    setState(() {
      this.favorites.remove(_favorite);
    });
    removeFavorite(_favorite).then((value) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
              S.of(state.context).the_ticket_was_removed_from_your_favorite)));
    });
  }

  void listenForTicketReviews({String id, String message}) async {
    final Stream<Review> stream = await getTicketReviews(id);
    stream.listen((Review _review) {
      setState(() => reviews.add(_review));
    }, onError: (a) {}, onDone: () {});
  }

  Future<void> refreshTicket() async {
    var _id = ticket.id;
    ticket = new Ticket();
    tickets = [];

    listenForFeaturedTickets();
    listenForFavorite(ticketId: _id);
    listenForTicket(ticketId: _id, message: 'Ticket refreshed successfuly');
  }

  void calculateTotal() {
    total = ticket?.price ?? 0;
    ticket.options.forEach((option) {
      total += option.checked ? option.price : 0;
    });
    total *= quantity;
    setState(() {});
  }

  incrementQuantity() {
    if (this.quantity < double.parse(ticket.itemsAvailable)) {
      ++this.quantity;
      calculateTotal();
    }
  }

  decrementQuantity() {
    if (this.quantity >= 1) {
      --this.quantity;
      calculateTotal();
    }
  }

  void listenForCartsCount({String message}) async {
    print("listenForCartsCount listenForCartsCount listenForCartsCount");
    final Stream<int> stream = await getCartCount();
    stream.first.then((int _count) {
      print(_count);
      cartCountHome.value = _count;
      setState(() {});
    }, onError: (a) {
      print(a);
      scaffoldKey?.currentState?.showSnackBar(SnackBar(
        content: Text(S.current.verify_your_internet_connection),
      ));
    });
  }

  void listenForTickets({String search}) async {
    if (search == null) {
      search = await getRecentSearch();
    }
    //Address _address = deliveryAddress.value;
    final Stream<Ticket> stream = await searchTickets(search);
    stream.listen((Ticket _ticket) {
      setState(() => tickets.add(_ticket));
    }, onError: (a) {
      print(a);
    }, onDone: () {});
  }

  Future<void> refreshSearch(search) async {
    setState(() {
      tickets = <Ticket>[];
    });
    //listenForStores(search: search);
    listenForTickets(search: search);
  }

  void saveSearch(String search) {
    setRecentSearch(search);
  }
}

final cartCountHome = ValueNotifier<int>(0);
