import 'package:flutter/material.dart';
class ContainerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:Colors.black26
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 10.0,color: Colors.black38) ,
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
                 margin: EdgeInsets.all(4.0),
                 child: Image.asset('assets/images/light-1.png'),
              ),
              ),
               Expanded(child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 10.0,color: Colors.black38) ,
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
                 margin: EdgeInsets.all(4.0),
                 child: Image.asset('assets/images/light-1.png'),
              ),
              ),
               Expanded(child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 10.0,color: Colors.black38) ,
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
                 margin: EdgeInsets.all(4.0),
                 child: Image.asset('assets/images/light-1.png'),
              ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 10.0,color: Colors.black38) ,
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
                 margin: EdgeInsets.all(4.0),
                 child: Image.asset('assets/images/light-1.png'),
              ),
              ),
               Expanded(child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 10.0,color: Colors.black38) ,
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
                 margin: EdgeInsets.all(4.0),
                 child: Image.asset('assets/images/light-1.png'),
              ),
              ),
               Expanded(child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 10.0,color: Colors.black38) ,
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
                 margin: EdgeInsets.all(4.0),
                 child: Image.asset('assets/images/light-1.png'),
              ),
              )
            ],
          )
        ],
      ),
    );
  }
}