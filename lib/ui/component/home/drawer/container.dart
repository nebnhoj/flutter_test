import 'package:flutter/material.dart';
import 'package:medalert/ui/component/home/drawer/content/Items.dart';
import 'package:medalert/ui/component/home/drawer/content/header.dart';

class DrawerContainer extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the Drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          Header(),
          DrawerItems()
        ],
      ),
    );
  }
}