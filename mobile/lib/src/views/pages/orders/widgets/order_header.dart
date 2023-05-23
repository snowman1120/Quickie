import 'package:flutter/material.dart';

class OrderHeader extends StatelessWidget {
  const OrderHeader({
    Key key,
    @required this.dateTime,
    @required this.store,
    @required this.orderStatus,
    @required this.orderId,
    @required this.image,
  }) : super(key: key);

  final String dateTime;
  final String store;
  final String orderId;
  final String image;
  final String orderStatus;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(15),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: FadeInImage(
                  image: NetworkImage(image),
                  placeholder: AssetImage('assets/img/loading.gif'),
                ),
              )

              // Image.asset(
              //   'assets/images/logos/starbucks.png',
              //   height: 80,
              //   width: 80,
              // ),
              ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    // productOrder.dateTime.toString(),
                    dateTime,
                    style: TextStyle(
                      color: Colors.grey.shade600,
                    )),
                Text(
                  store,
                  //  productOrder.product.store.name ?? 'Quickie',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xFF4EE476),
                      ),
                    ),
                    Text(
                      ' $orderStatus',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF4EE476),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(child: Center()),
          Column(
            children: [
              Text(
                '#$orderId',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
