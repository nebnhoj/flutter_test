import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return RaisedButton(child:
      new Row(children: <Widget>[
        Icon(Icons.add),
        Text("ADD ITEM")
      ],
      ),
      onPressed: (){

      print("clicked");
      },
     );
  }

}