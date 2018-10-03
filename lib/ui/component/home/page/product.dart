import 'package:flutter/material.dart';
import 'package:medalert/ui/component/card/product_card.dart';

class ProductPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(child: ListView(children: <Widget>[
      ProductCard(),
      ProductCard(),
      ProductCard(),
      ProductCard(),
      ProductCard(),
    ])
    );
  }

}