import 'package:flutter/material.dart';
class RowExample extends StatelessWidget {
  const RowExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
      Row(
        
      children: <Widget>[
        Padding(padding: EdgeInsets.fromLTRB(20, 10, 0, 20)),
        Container(
          color: Colors.red,
          child:FlutterLogo(
            size:60
          ) ,
          
        ),Container(
          color:Colors.blue,
          child: FlutterLogo(
            size: 60,
          ),
          
        ),Container(
          color:Colors.yellow,
          child: FlutterLogo(
            size: 60,
          ),
        )
      ],
    
    );
  }
}