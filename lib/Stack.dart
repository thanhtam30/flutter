import 'package:flutter/material.dart';
class StackExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      
      alignment: Alignment(0.6, 0.6),
      children: <Widget>[
        Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/clock.png'),
        ),
        Container(
          decoration: BoxDecoration(
            color:Colors.black45
          ),
          child: Text(
            'Mia B',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}