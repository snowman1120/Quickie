import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../../../../models/product.dart';
import '../../../../models/route_argument.dart';
import '../../../../repository/user_repository.dart';
import '../../../../routes/routes_names.dart';

class ResultSearchItem extends StatelessWidget {
  const ResultSearchItem({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
    final heroTag = 'search_result' + product.name;
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
            Navigator.of(context).popAndPushNamed(RouteNames.productsDetailPage,
                arguments: new RouteArgument(
                    id: this.product.id, param: [this.product, heroTag]));
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
                      product.image.thumb,
                    ),
                    placeholder: AssetImage(
                      'assets/img/loading_product.gif',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                AutoSizeText(
                  product.name,
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
                        text: product.price.toString(),
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
