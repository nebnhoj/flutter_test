import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';




class MapsDemo extends StatelessWidget {
  MapsDemo(this.mapWidget, this.controller);

  final Widget mapWidget;
  final GoogleMapController controller;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration.collapsed(hintText: 'Search'),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.my_location),
            onPressed: () {
              final location = LatLng(24.934163, 67.044612);
              controller.markers.clear();
              controller.addMarker(MarkerOptions(
                position: location,
              ));
              controller.animateCamera(
                CameraUpdate.newLatLngZoom(
                    location, 15.0),
              );
            },
          ),
        ],
      ),
      body: MapsDemo1(mapWidget, controller),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.my_location),
      ),

    );
  }
}

class MapsDemo1 extends StatelessWidget {
  MapsDemo1(this.mapWidget, this.controller);

  final Widget mapWidget;
  final GoogleMapController controller;

  @override
  Widget build(BuildContext context) {
    return Center(child: mapWidget);
  }
}