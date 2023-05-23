import 'package:ecommerce/src/views/pages/tickets_detail/widgets/ticket_map.dart';
import 'package:flutter/material.dart';

import '../../../controllers/home_controller.dart';
import '../../../utils/physics.dart';
import '../../../utils/size_config.dart';
import 'widgets/categories.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/discount_banner.dart';
import 'widgets/products_list.dart';
import 'widgets/search_bar_and_settings.dart';
import 'widgets/special_area.dart';

import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class HomePage extends StatefulWidget {
  HomePage(
    this.menuDrawerController, {
    Key key,
  }) : super(key: key);

  final ZoomDrawerController menuDrawerController;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends StateMVC<HomePage> {
  HomeController _controller;
  _HomePageState() : super(HomeController()) {
    _controller = controller;
  }

  @override
  void initState() {
    _listenCategories();
    super.initState();
  }

  void _listenCategories() async {
    await _controller.listenForCategories();
  }

  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  Widget build(BuildContext context) {
    var _categories = _controller.categories;
    var sizeConfig = SizeConfig.init(context);
    return Container(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: sizeConfig.getProportionateScreenWidth(20),
              ),
              child: CustomAppBar(
                sizeConfig: sizeConfig,
                scaffoldKey: scaffoldKey,
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: RefreshIndicator(
            onRefresh: () async {
              await _controller.refreshHome();
            },
            child: SingleChildScrollView(
              physics: kScrollPhysics,
              child: Padding(
                padding: EdgeInsets.only(
                  right: sizeConfig.getProportionateScreenWidth(20),
                  left: sizeConfig.getProportionateScreenWidth(20),
                  top: sizeConfig.getProportionateScreenWidth(20),
                ),

                //
                child: _categories.length < 9
                    ? Center(
                        child: CircularProgressIndicator(
                          color: Theme.of(context).accentColor,
                          strokeWidth: 2.5,
                          backgroundColor: Colors.transparent,
                        ),
                      )
                    : Column(
                        children: [
                          //
                          SearchBarAndSettings(
                            sizeConfig: sizeConfig,
                          ),

                          //
                          DiscountBanner(
                            initialSlider: 0,
                            finalSlider: 4,
                            sizeConfig: sizeConfig,
                          ),
                          //
                          Categories(
                            categories: _controller.categories,
                            sizeConfig: sizeConfig,
                          ),

                          Text("Before Map"),
                          SizedBox(
                            height: 300,
                            child: TicketMap(48, 2, 13),
                          ),
                          //
                          ProductsList(
                            category: _categories[0],
                            sizeConfig: sizeConfig,
                          ),

                          //
                          ProductsList(
                            category: _categories[1],
                            sizeConfig: sizeConfig,
                          ),

                          //
                          ProductsList(
                            category: _categories[2],
                            sizeConfig: sizeConfig,
                          ),

                          //
                          SpecialArea(
                            initialSlider: 3,
                            finalSlider: 7,
                            sizeConfig: sizeConfig,
                          ),

                          ProductsList(
                            category: _categories[3],
                            sizeConfig: sizeConfig,
                          ),

                          //
                          ProductsList(
                            category: _categories[4],
                            sizeConfig: sizeConfig,
                          ),

                          //
                          DiscountBanner(
                            initialSlider: 8,
                            finalSlider: 11,
                            sizeConfig: sizeConfig,
                          ),

                          ProductsList(
                            category: _categories[5],
                            sizeConfig: sizeConfig,
                          ),

                          //
                          ProductsList(
                            category: _categories[6],
                            sizeConfig: sizeConfig,
                          ),

                          //
                          ProductsList(
                            category: _categories[7],
                            sizeConfig: sizeConfig,
                          ),

                          //
                          SpecialArea(
                            initialSlider: 12,
                            finalSlider: 16,
                            sizeConfig: sizeConfig,
                          ),

                          ProductsList(
                            category: _categories[8],
                            sizeConfig: sizeConfig,
                          ),

                          //
                          ProductsList(
                            category: _categories[9],
                            sizeConfig: sizeConfig,
                          ),

                          //
                        ],
                      ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
