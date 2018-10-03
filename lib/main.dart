import 'package:flutter/material.dart';
import 'package:medalert/config/app.dart';
import 'package:medalert/ui/home.dart';

void main() => runApp(new MaterialApp(
  title: Application.title,
  theme: Application.theme,
  home: new MyHomePage(title: 'MedAlert'),
));

