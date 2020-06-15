import 'package:flutter/material.dart';
import './Row.dart';
import './Colomn.dart';
import './Container.dart';
import './Stack.dart';
import 'package:Example1/Card.dart';
class HomeExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
      appBar: AppBar(
            title: Text("Home"),
            leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
            actions: <Widget>[Text("login")]),
        
        body: ListView(
         children: <Widget>[
           Column(
            children: <Widget>[
                 Padding(padding: EdgeInsets.fromLTRB(20, 20, 0, 0)),
                    Text("Row",style: TextStyle(color:Colors.blue,fontSize: 30),),
                    Padding(padding: EdgeInsets.fromLTRB(10, 20, 0, 20)),
                    RowExample(),
                    Padding(padding: EdgeInsets.fromLTRB(20, 20, 0, 0)),
                    Text("Column",style: TextStyle(color:Colors.blue,fontSize: 30),),
                    Padding(padding: EdgeInsets.fromLTRB(10, 20, 0, 20)),
                    ColomnExample(),
                     Padding(padding: EdgeInsets.fromLTRB(20, 20, 0, 0)),
                    Text("Card",style: TextStyle(color:Colors.blue,fontSize: 30),),
                    Padding(padding: EdgeInsets.fromLTRB(10, 20, 0, 20)),
                    CardExample(),
                     Padding(padding: EdgeInsets.fromLTRB(20, 20, 0, 0)),
                    Text("Stack",style: TextStyle(color:Colors.blue,fontSize: 30),),

                    StackExample(),
                    Padding(padding: EdgeInsets.fromLTRB(10, 20, 0, 10)),
                   
            ],
          ),
         ],
        ),
    
    );
  }
}