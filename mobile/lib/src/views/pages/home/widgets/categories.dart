import 'package:ecommerce/src/models/ticket.dart';
import 'package:flutter/material.dart';

import '../../../../widgets/SearchWidget.dart';
import '../../../../models/category.dart';
import '../../../../utils/physics.dart';
import '../../../../utils/size_config.dart';
import '../../../../models/route_argument.dart';
import 'categorie_item.dart';

import '../../ticket/ticket.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key key,
    @required this.sizeConfig,
    @required this.categories,
  }) : super(key: key);
  final SizeConfig sizeConfig;

  final List<Category> categories;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        physics: kScrollPhysics,
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.symmetric(
            horizontal: sizeConfig.getProportionateScreenWidth(5),
          ),
          child: CategorieItem(
            sizeConfig: sizeConfig,
            icon: categories[index].image != null
                ? categories[index].image.thumb
                : categories[index].imageUrl,
            text: categories[index].name,
            onTap: () {
              index == 0
                  ? Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const TicketPage()))
                  : Navigator.of(context).push(
                      SearchModal(
                        arguments: new RouteArgument(
                          param: [categories[index].name],
                        ),
                      ),
                    );
              //avigator.of(context)
              //.push(SearchModal(arguments: new RouteArgument(param: [''])))
            },
          ),
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Page2(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

class Page2 extends StatelessWidget {
  const Page2();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: MaterialApp(
          title: 'Flutter Google Maps Demo',
          home: MapSample(),
        ));
  }
}

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(body: Text("Ticket"));
  }
}
