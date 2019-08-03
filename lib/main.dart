import 'package:flutter/material.dart';
import 'package:self_study/home_widget.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Selfstudy',
      home: Home(),
    );
  }
}


