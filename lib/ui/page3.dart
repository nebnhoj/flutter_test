import 'package:flutter/material.dart';
import 'package:medalert/model/home_model.dart';
import 'package:medalert/ui/component/home/drawer/container.dart';
import 'package:medalert/ui/component/home/page/map.dart';
import 'package:medalert/ui/component/home/page/product.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/status.dart' as status;

class Page3 extends StatelessWidget {
  Page3({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return  new Scaffold(
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
            floatingActionButton: new ScopedModelDescendant<HomeModel>(
                builder: (context, child, model) {
                  return new FloatingActionButton(
                      onPressed: () {
                        print("test");
                      },
                      child: new Icon(Icons.camera));
                }));
  }
}
