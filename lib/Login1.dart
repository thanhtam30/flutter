import 'package:flutter/material.dart';

class LoginExample1 extends StatefulWidget {
  @override
  _LoginExample1State createState() => _LoginExample1State();
}

class _LoginExample1State extends State<LoginExample1> {
  FocusNode myForcusNode = new FocusNode();
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
          //

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
                // focusNode: myForcusNode,
                style: TextStyle(color: Colors.grey),
                decoration: InputDecoration(
                  fillColor: Colors.grey,
                  filled: true,
                  labelText: 'Name',
                  labelStyle: TextStyle(
                      // color: myForcusNode.hasFocus ? Colors.blue : Colors.black,
                      fontSize: 20),
                  contentPadding:
                      const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 25),
                )),
          ),
          //
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  // margin: EdgeInsets.only(top: 50.0),
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text("Fist and fast",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Address',
                        fillColor: Colors.grey,
                        filled: true,
                        hintStyle: TextStyle(fontSize: 25.0)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 30.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'City', fillColor: Colors.grey, filled: true),
                  ),
                ),
              ],
            ),
          ),

          Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 20.0)),
              Expanded(
                flex: 1,
                child: Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'State', fillColor: Colors.grey, filled: true),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Zip Code',
                        fillColor: Colors.grey,
                        filled: true),
                  ),
                ),
              ),
            ],
          ),

          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
            child: Text(
              'xxxxxx',
              style: TextStyle(color: Colors.grey, fontSize: 20.0),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: 'Phone number',
                  fillColor: Colors.grey,
                  filled: true),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: 'Messager', fillColor: Colors.grey, filled: true),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 20.0),
            child: SizedBox(
              width: 200.0,
              height: 45.0,
              child: new RaisedButton(
                color: Colors.grey,
                child: new Text('sign In'),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
        ],
      )
    );
  }
}
