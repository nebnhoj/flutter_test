import 'package:flutter/material.dart';
import 'package:medalert/ui/component/home/drawer/item.dart';
import 'package:medalert/ui/component/home/drawer/header.dart';

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
          DrawerItem(pageNumber:1,name: "List",iconData: Icons.list),
          DrawerItem(pageNumber:2,name: "Person",iconData:Icons.people),
          DrawerItem(pageNumber:3,name: "Map",iconData:Icons.map),
          DrawerItem(pageNumber:4,name: "Settings",iconData:Icons.settings),
        ],
      ),
    );
  }
}