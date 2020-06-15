import 'package:flutter/material.dart';
class ColomnExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color:Colors.red,
          child: FlutterLogo(
            size:60
          ),
        ),
        Container(
          color:Colors.yellow,
          child: FlutterLogo(
            size:60
          ),
        ),
         Container(
          color:Colors.blue,
          child: FlutterLogo(
            size:60
          ),
        )
      ],
    );
  }
}