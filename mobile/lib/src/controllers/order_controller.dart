import '../models/order_status.dart';
import '../repository/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../../generated/l10n.dart';
import '../models/order.dart';
import '../repository/order_repository.dart';

class OrderController extends ControllerMVC {
  List<Order> orders = <Order>[];
  List<Order> ordersUnpaid = <Order>[];
  List<Order> ordersDelivered = <Order>[];
  List<Order> ordersOnTheWay = <Order>[];
  List<Order> ordersReady = <Order>[];
  List<Order> ordersPreparing = <Order>[];
  List<OrderStatus> orderStatuses = <OrderStatus>[];
  GlobalKey<ScaffoldState> scaffoldKey;

  OrderController() {
    this.scaffoldKey = new GlobalKey<ScaffoldState>();
    if (currentUser.value.apiToken != null) {
      listenForOrders();
    }
    listenForOrderStatuses();
  }
  void listenForOrderStatuses({String message}) async {
    final Stream<OrderStatus> stream = await getOrderStatus();
    stream.listen((OrderStatus _orderStatus) {
      setState(() {
        orderStatuses.add(_orderStatus);
      });
    }, onError: (a) {
      print(a);
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

  void listenForOrders({String message}) async {
    final Stream<Order> stream = await getOrders();
    stream.listen((Order _order) {
      setState(() {
        orders.add(_order);
        if (_order.orderStatus.id == '5') ordersDelivered.add(_order);
        if (_order.payment.status != 'Paid') ordersUnpaid.add(_order);
        if (_order.orderStatus.id == '4') ordersOnTheWay.add(_order);
        if (_order.orderStatus.id == '2') ordersPreparing.add(_order);
        if (_order.orderStatus.id == '3') ordersReady.add(_order);
      });
    }, onError: (a) {
      print(a);
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

  Future<void> refreshOrders() async {
    orders.clear();
    listenForOrders(message: S.current.order_refreshed_successfuly);
  }
}
