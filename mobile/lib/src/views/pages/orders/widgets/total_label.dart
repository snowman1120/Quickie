import 'package:flutter/material.dart';

import '../../../../helpers/helper.dart';
import '../../../../models/order.dart';
import '../../../../models/product_order.dart';

class TotalLabel extends StatelessWidget {
  const TotalLabel({
    Key key,
    @required this.price,
    @required this.order,
    @required this.productOrder,
  }) : super(key: key);

  final String price;
  final Order order;
  final ProductOrder productOrder;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Total',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          Helper.getPrice(
              Helper.getTotalOrderPrice(
                  productOrder, order.tax, order.deliveryFee),
              context,
              style: Theme.of(context).textTheme.headline4),
          // Text.rich(
          //   TextSpan(
          //       text: r'$' + price,
          //       style: TextStyle(
          //         fontSize: 25,
          //         fontWeight: FontWeight.w700,
          //       ),
          //       children: [

          //         // TextSpan(
          //         //   text: 'USD',
          //         //   style: TextStyle(
          //         //     fontSize: 15,
          //         //     color: Colors.grey.shade700,
          //         //     fontWeight: FontWeight.w300,
          //         //   ),
          //         // )
          //       ]),
          // )
        ],
      ),
    );
  }
}
