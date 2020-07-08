import 'package:flutter/material.dart';
import './Login.dart';
import './Register.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text("Home Page"),
      ),
      body: Stack(children: <Widget>[
        ShaderMask(
          shaderCallback: (rect) {
            return LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Colors.indigo],
            ).createShader(
                Rect.fromLTRB(0, -140, rect.width, rect.height - 20));
          },
          blendMode: BlendMode.darken,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage('assets/images/coffee_header.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Center(
          child: Column(
            children: [
            SizedBox(
              height: 250.0,
              child: Opacity(opacity: 0.5,
              child: Padding(
                padding: const EdgeInsets.only(top: 120.0,bottom: 20.0),
                child: Text("YouName",style: TextStyle(color:Colors.white,fontSize: 35),),
              ),),
            ),
            Container(
                      margin: EdgeInsets.only(bottom: 10.0,top: 10.0),
                      child: Text(
                        'WELLCOME TO YOUNAME',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      )),
               
              
              SizedBox(
                height: 40.0,
                
              ),
                
                   Container(
                     margin: EdgeInsets.symmetric(horizontal: 30.0),
                     child: SizedBox(
                      width: double.infinity,
                      height: 45.0,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        onPressed: () {
                            Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new RegisterPage()),
                      );
                        },
                        color: Colors.white,
                        child: Text('REGISTER',   style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,),
                        textColor: Colors.blueAccent,
                      ),
                  ),
                   ),
                
            
                
                   Container(
                     margin: EdgeInsets.symmetric(horizontal: 30.0,vertical: 30.0),
                     child: SizedBox(
                      width: double.infinity,
                      height: 45.0,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        onPressed: () {
                              Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new LoginPage()),
                      );
                        },
                        color: Colors.blueAccent,
                        child: Text('LOGIN',   style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,),
                        textColor: Colors.white,
                      ),
                  ),
                   ),
                
             
            ],
          ),
        ),
      ]),
    );
  }
}
