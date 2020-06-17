import 'package:flutter/material.dart';

class RegisterExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register')),
      body: ListView(
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: Container(
                        width: 200.0,
                        height: 200.0,
                        // color: Colors.red,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.all(Radius.circular(
                                  100.0) //                 <--- border radius here
                              ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                          child: Text(
                            'Login',
                            style: TextStyle(fontSize: 81, color: Colors.white),
                          ),
                        ),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0)),
                        hintText: 'Display Name'.toUpperCase(),
                       prefixIcon:Padding(padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child:  Icon(Icons.account_circle),),),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        focusColor: Colors.red,
                        hintText: 'Email'.toUpperCase(),
                        
                         prefixIcon:Padding(padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child:  Icon(Icons.email),),),
                         
                  ),
                  
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        focusColor: Colors.red,
                        hintText: 'PassWord'.toUpperCase(),
                     prefixIcon:Padding(padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child:  Icon(Icons.lock),),)
                         
                  ),
                  
                ),Padding( padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 20.0),
                child: Container(
                  width: double.infinity,
                  height: 50.0,
                  child:RaisedButton(onPressed: (){},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  )
                  ,color: Colors.blue[300],
                child: Text('Create Account'.toUpperCase(),style: TextStyle(fontSize: 25.0),),
                textColor: Colors.white,) ,
                ),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
