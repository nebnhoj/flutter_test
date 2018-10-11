import 'package:flutter/material.dart';
import 'package:medalert/ui/component/home/drawer/content/item.dart';

class DrawerItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(

        children: <Widget>[
          DrawerItem(pageNumber:1,name: "List",iconData: Icons.list),
          DrawerItem(pageNumber:2,name: "Person",iconData:Icons.people),
          DrawerItem(pageNumber:3,name: "Map",iconData:Icons.map),
          DrawerItem(pageNumber:4,name: "Settings",iconData:Icons.settings)
        ],
    );
  }
}
