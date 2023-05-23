import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TicketMap extends StatelessWidget {
  TicketMap(double latitude, double longitude, double zoom) {
    this.latitude = latitude;
    this.longitude = longitude;
    this.zoom = zoom;
  }

  double latitude;
  double longitude;
  double zoom;

  @override
  Widget build(BuildContext context) {
    CameraPosition _kGooglePlex = CameraPosition(
      target: LatLng(latitude, longitude),
      zoom: zoom,
    );
    Completer<GoogleMapController> _controller = Completer();
    return Container(
        child: Row(children: [
      Text("Map"),
      GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        //child: Text("Map component")
      )
    ]));
  }

  // @override
  // _MyAppState createState() => _MyAppState();
}

// class _MyAppState extends State<TicketMap> {
//   GoogleMapController myController;

//   final LatLng _center = const LatLng(45.521563, -122.677433);

//   void _onMapCreated(GoogleMapController controller) {
//     myController = controller;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//     // return MaterialApp(
//     //   home: Scaffold(
//     //     appBar: AppBar(
//     //       title: Text('Flutter Maps Demo'),
//     //       backgroundColor: Colors.green,
//     //     ),
//     //     body: Stack(
//     //       children: <Widget>[
//     //         GoogleMap(
//     //           onMapCreated: _onMapCreated,
//     //           initialCameraPosition: CameraPosition(
//     //             target: _center,
//     //             zoom: 10.0,
//     //           ),
//     //         ),
//     //         Padding(
//     //           padding: const EdgeInsets.all(14.0),
//     //           child: Align(
//     //             alignment: Alignment.topRight,
//     //             child: FloatingActionButton(
//     //               onPressed: () => print('You have pressed the button'),
//     //               materialTapTargetSize: MaterialTapTargetSize.padded,
//     //               backgroundColor: Colors.green,
//     //               child: const Icon(Icons.map, size: 30.0),
//     //             ),
//     //           ),
//     //         ),
//     //       ],
//     //     ),
//     //   ),
//     // );
//   }
// }
