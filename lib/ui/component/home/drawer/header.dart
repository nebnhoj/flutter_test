import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: ListView(
        children: <Widget>[
          new Image.network("https://placeimg.com/640/480/any",height: 100.0,),
          new Text("JOHN DOE",style: TextStyle(  fontWeight: FontWeight.bold,color: Colors.black54),),
          new Text("jd.cruz@gmail.com",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black38),),
        ],
      ),
      decoration: BoxDecoration(),
    );
  }
}
