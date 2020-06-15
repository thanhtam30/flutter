import 'package:flutter/material.dart';

class LoginExample3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('Login Screen3'),
      ),
      body: ListView(
        children: <Widget>[
          Column(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.fromLTRB(100, 100, 100, 20),
              child: Image.asset('assets/images/background.png',
                  width: 100, height: 100)),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Email',
                    contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0))),
              )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
            child: TextFormField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                  hintText: 'PassWord',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0))),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 20.0),
            child: SizedBox(
              height: 40.0,
              width: double.infinity,
              child: RaisedButton(
                onPressed: () {},
                color: Colors.blue[300],
                child: Text('Login'),textColor: Colors.white,
                shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(18.0),
                )
                ,
              ),
            ),
          )
        ],
      ),
        ],
      )
    );
  }
}
