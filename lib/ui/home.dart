import 'package:flutter/material.dart';
import 'package:medalert/model/home_model.dart';
import 'package:medalert/ui/component/home/drawer/container.dart';
import 'package:medalert/ui/component/home/page/product.dart';
import 'package:scoped_model/scoped_model.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return ScopedModel<HomeModel>(
        model: HomeModel(),
        child: new Scaffold(
            appBar: new AppBar(
              title: new Text(title),
            ),
            body: new ScopedModelDescendant<HomeModel>(
                builder: (context, child, model) {
              return model.content == 'From Page 1'
                  ? new ProductPage()
                  : new Center(
                      child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[new Text(model.content)],
                    ));
            }),
            drawer: DrawerContainer(),
            floatingActionButton: new ScopedModelDescendant<HomeModel>(
                builder: (context, child, model) {
              return new FloatingActionButton(
                  onPressed: ()=> print("test")
                  , child: new Icon(Icons.camera));
            })));
  }
}
