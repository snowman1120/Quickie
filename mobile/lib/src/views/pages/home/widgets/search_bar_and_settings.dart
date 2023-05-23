import 'package:ecommerce/src/models/route_argument.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';
import '../../../../routes/routes_names.dart';
import '../../../../controllers/search_controller.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/size_config.dart';
import '../../../../widgets/SearchWidget.dart';

class SearchBarAndSettings extends StatelessWidget {
  const SearchBarAndSettings({
    Key key,
    @required this.sizeConfig,
  }) : super(key: key);

  final SizeConfig sizeConfig;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SearchBar(
            sizeConfig: sizeConfig,
            onTap: () => Navigator.of(context)
                .push(SearchModal(arguments: new RouteArgument(param: [''])))
            //.pushNamed(RouteNames.searchResultPage), //.push(SearchModal())
            ),
        _settingsButton(
          size: sizeConfig.getProportionateScreenWidth(46),
          onClickFilter: (value) {
            Navigator.of(context).pushNamed(RouteNames.settingsPage);
          },
        )
      ],
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
    @required this.sizeConfig,
    this.con,
    this.onTap,
  }) : super(key: key);

  final SizeConfig sizeConfig;
  final Function onTap;
  final SearchController con;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        width: sizeConfig.screenWidth * 0.7,
        height: 50,
        decoration: BoxDecoration(
            color: Theme.of(context).hoverColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Theme.of(context).buttonColor,
              width: 0.4,
            )),
        child: onTap == null
            ? TextField(
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: S.of(context).search_for_stores_or_products,
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                ),
                onChanged: (value) {},
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.search,
                  ),
                  Center(
                    child: Text(
                      S.of(context).search_for_stores_or_products,
                      maxLines: 1,
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .merge(TextStyle(fontSize: 14)),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}

Container _settingsButton({double size, Function onClickFilter}) => Container(
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
          color: kprimaryColor,
        ),
        onPressed: () {
          onClickFilter('e');
        },
      ),
    );
