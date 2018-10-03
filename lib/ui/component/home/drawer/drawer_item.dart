import 'package:flutter/material.dart';
import 'package:medalert/model/home_model.dart';
import 'package:scoped_model/scoped_model.dart';

class DrawerItem extends StatelessWidget {
  DrawerItem({Key key, this.pageNumber,this.name,this.iconData}) : super(key: key);
  final int pageNumber;
  final String name;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<HomeModel>(
      builder: (context, child, model) {
        return ListTile(
          title: Padding(
            padding: EdgeInsets.all(1.0),
            child: Row( children: <Widget>[
                Icon(iconData),
                Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 0.0, 0.0, 0.0),
                    child: Text(name))
              ],
            ),
          ),
          onTap: () {
            model.setContent("From Page $pageNumber");
            // Then close the drawer
            Navigator.pop(context);
          },
        );
      },
    );
  }
}
