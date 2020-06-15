import 'package:flutter/material.dart';

class LoginExample2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('Login Screen1'),
      ),
      body: ListView(
        children: <Widget>[
          Column(
        children: <Widget>[
          Container(
              padding: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 40.0),
              child: CircleAvatar(
                child: Image.asset(
                  'assets/images/clock.png',
                  width: 100.0,
                  height: 100.0,
                ),
              )),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextFormField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 30.0),
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  )),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(20.0),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Password',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.lock),
                      iconSize: 20.0,
                      onPressed: () {},
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0))),
              )),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: SizedBox(
              width: 100.0,
              height: 45.0,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                onPressed: () {},
                color: Colors.blue[300],
                child: Text('Login'),
                textColor: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Forgot Password',
              style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Not a member ? Signup now',
              style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
        ],
      )
    );
  }
}
