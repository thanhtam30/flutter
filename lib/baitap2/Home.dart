import 'package:flutter/material.dart';
import './Login1.dart';
import './Register.dart';

class HomeLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Route _createRoute() {
      return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              LoginExample(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return child;
          });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Home "),
      ),
      body: Center(
        child: Container(
          color: const Color(0xff2980b9),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  height: 40.0,
                  child: RaisedButton(
                    onPressed: () {
                      // _createRoute();
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new LoginExample()),
                      );
                    },
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0)),
                    child: Text("Login".toUpperCase()),
                    textColor: Colors.blue,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Container(
                  width: double.infinity,
                  // color:Colors.blue,
                  height: 40.0,
                  child: RaisedButton(
                    color: const Color(0xff2980b9),
                    onPressed: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new RegisterExample()),
                      );
                    },
                    child: Text('Register'.toUpperCase()),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      side: BorderSide(color: Colors.white, width: 3),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
