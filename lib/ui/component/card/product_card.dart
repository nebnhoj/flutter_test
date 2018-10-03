

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProductCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return new Card(
     child: new Column(
       mainAxisSize: MainAxisSize.min,
       children: <Widget>[
         new Padding(
             padding: new EdgeInsets.all(8.0),
             child: new Image.network("https://placeimg.com/640/480/any")
         ),
         new ListTile(
           title: Text("Title"),
         ),
         new ButtonTheme.bar(
           // make buttons use the appropriate styles for cards
           child: new ButtonBar(
             children: <Widget>[
               new FlatButton(
                 child: const Text('BUY TICKETS'),
                 onPressed: () {
                   /* ... */
                 },
               ),
               new FlatButton(
                 child: const Text('LISTEN'),
                 onPressed: () {
                   /* ... */
                 },
               ),
             ],
           ),
         ),
       ],
     ),
   );
  }

}