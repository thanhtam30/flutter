import 'package:flutter/material.dart';
import './Home.dart';
import './Login1.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home: HomeLogin(),
    );
  }
}

