import 'package:flutter/material.dart';
import 'package:medalert/config/routes.dart';
import 'package:medalert/model/home_model.dart';
import 'package:medalert/ui/component/home/drawer/container.dart';
import 'package:medalert/ui/component/home/page/map.dart';
import 'package:medalert/ui/component/home/page/product.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/status.dart' as status;

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
            appBar: new AppBar(
              title: new Text(title),
            ),
            body: new ScopedModelDescendant<HomeModel>(
                builder: (context, child, model) {
              switch (model.content) {
                case 'From Page 1':
                  return new ProductPage();
                  break;
                case 'From Page 3':
                  return new MapPage();
                  break;
                  default:
                    return new Text(model.content);
                    break;
              }
            }),
            drawer: DrawerContainer(),
            floatingActionButton: new ScopedModelDescendant<HomeModel>(
                builder: (context, child, model) {
              return new FloatingActionButton(
                  onPressed: () {
                    print("test");
                    Navigator.of(context).pushNamed(Routes.PAGE2);

                  },
                  child: new Icon(Icons.camera));
            }));
  }
}
