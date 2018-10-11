import 'package:flutter/material.dart';
import 'package:medalert/config/app.dart';
import 'package:medalert/config/routes.dart';
import 'package:medalert/model/home_model.dart';
import 'package:medalert/ui/home.dart';
import 'package:medalert/ui/page2.dart';
import 'package:medalert/ui/page3.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:ui' as ui;

void main() {
  GoogleMapController.init();


  final size = MediaQueryData.fromWindow(ui.window).size;
  final GoogleMapOverlayController controller =
  GoogleMapOverlayController.fromSize(
    width: size.width,
    height: size.height - 72.0,
  );
  final Widget mapWidget = GoogleMapOverlay(controller: controller);
  runApp(ScopedModel<HomeModel>(
      model: HomeModel(),
      child: new MaterialApp(
        title: Application.title,
        theme: Application.theme,
        home: new MyHomePage(title: 'MedAlert'),
        routes: <String, WidgetBuilder>{
          //5
          Routes.PAGE2: (BuildContext context) => new MapsDemo(mapWidget, controller.mapController), //6
          Routes.PAGE3: (BuildContext context) => new Page3(title: 'Page3') //7
        },
        navigatorObservers: <NavigatorObserver>[controller.overlayController],
      )));
}