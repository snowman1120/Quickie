import 'package:flutter/material.dart';

import 'widgets/result_search_item.dart';
import 'widgets/staggered_dual_view.dart';
import '../../utils/flat_app_bar.dart';
import '../../../controllers/search_controller.dart';
import '../../../utils/size_config.dart';
import '../../../models/route_argument.dart';
import '../../../../generated/l10n.dart';

import 'package:mvc_pattern/mvc_pattern.dart';

class SearchResultPage extends StatefulWidget {
  final RouteArgument routeArgument;
  String category;

  SearchResultPage({Key key, this.routeArgument}) {
    category = this.routeArgument.param[0] ?? null;
  }

  @override
  _SearchResultPageState createState() => _SearchResultPageState();
}

class _SearchResultPageState extends StateMVC<SearchResultPage> {
  SearchController _controller;

  _SearchResultPageState() : super(SearchController()) {
    _controller = controller;
  }

  @override
  void initState() {
    _controller.listenForProducts();
    _loadProductsFromParam();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  _loadProductsFromParam() async {
    if (widget.category.isNotEmpty && widget.category != '') {
      print('Categoria ${widget.category}');

      await _controller.refreshSearch(widget.category);
      _controller.saveSearch(widget.category);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    var sizeConfig = SizeConfig.init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        toolbarHeight: 120,
        title: Column(
          children: [
            FlatAppBar(title: S.of(context).search),
            Row(
              children: [
                Container(
                  width: sizeConfig.screenWidth * 0.75,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey.shade500,
                        width: 0.4,
                      )),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: (widget.category.isNotEmpty &&
                              widget.category.isNotEmpty != '')
                          ? widget.category
                          : S.of(context).search_for_stores_or_products,
                      prefixIcon: Icon(
                        Icons.search,
                      ),
                    ),
                    onSubmitted: (text) async {
                      await _controller.refreshSearch(text);
                      _controller.saveSearch(text);
                    },
                  ),
                ),
                Expanded(child: Container()),
                _settingsButton(
                  context,
                  size: sizeConfig.getProportionateScreenWidth(46),
                  onClickFilter: (value) {},
                )
              ],
            ),
          ],
        ),
      ),
      body: _controller.products.length > 0
          ? RefreshIndicator(
              onRefresh: () async {
                setState(() {
                  _controller.refresh();
                });
              },
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Stack(
                    children: [
                      StaggeredDualView(
                        intemCount: _controller.products.length,
                        itemBuilder: (context, index) {
                          return ResultSearchItem(
                            product: _controller.products.elementAt(index),
                          );
                        },
                        aspectRatio: 0.7,
                        spacing: 10,
                      ),
                      Container(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        child: Text(
                          'Found\n${_controller.products.length} results',
                          style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          : SafeArea(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: sizeConfig.getProportionateScreenWidth(20)),
                  child: Text(
                    'LO SENTIMOS, NO ENCONTRAMOS SU PRODUCTO!!',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
              ),
            ),
    );
  }
}

// class SearchBar extends StatelessWidget {
//   const SearchBar({
//     Key? key,
//     required this.sizeConfig,
//     this.con,
//   }) : super(key: key);

//   final SizeConfig sizeConfig;
//   final SearchController? con;
//   @override
//   Widget build(BuildContext context) {
//     return ;
//   }
// }

Container _settingsButton(BuildContext context,
        {double size, Function onClickFilter}) =>
    Container(
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
          color: Theme.of(context).accentColor,
        ),
        onPressed: () {
          onClickFilter('e');
        },
      ),
    );
