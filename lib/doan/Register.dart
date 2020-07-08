import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

dynamic datepicker;

class _RegisterPageState extends State<RegisterPage> {
  Widget logo() {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.12),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 120,
        child: Stack(
          children: <Widget>[
            Positioned(
                child: Container(
              child: Align(
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).primaryColor),
                  width: 150,
                  height: 150,
                ),
              ),
              height: 134,
            )),
            Positioned(
              child: Container(
                  height: 150,
                  child: Align(
                    child: Text(
                      "REGISTER",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )),
            ),
            Positioned(
              width: MediaQuery.of(context).size.width * 0.15,
              height: MediaQuery.of(context).size.width * 0.1,
              bottom: MediaQuery.of(context).size.height * 0.046,
              right: MediaQuery.of(context).size.width * 0.22,
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).primaryColor),
              ),
            ),
            Positioned(
              width: MediaQuery.of(context).size.width * 0.08,
              height: MediaQuery.of(context).size.width * 0.08,
              bottom: 0,
              right: MediaQuery.of(context).size.width * 0.30,
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).primaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }

  File _imageFile;
  _openGallary(BuildContext context) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState(() {
      _imageFile = picture;
    });
    Navigator.of(context).pop();
  }

  _openCamera(BuildContext context) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState(() {
      _imageFile = picture;
    });
    Navigator.of(context).pop();
  }

  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Make a Choice"),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: Text('Gallary'),
                    onTap: () {
                      _openGallary(context);
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: GestureDetector(
                      child: Text('Camera'),
                      onTap: () {
                        _openCamera(context);
                      },
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  Widget _decideImageView() {
    if (_imageFile == null) {
      return Text("No Image Selected");
    } else {
      return Image.file(
        _imageFile,
        width: 400,
        height: 400,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Register"),
        ),
        body: ListView(children: <Widget>[
          logo(),
          Column(
            children: <Widget>[
                SizedBox(
                    height: 40.0,
                  ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0)),
                    hintText: 'First Name',
                    prefixIcon: Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 0, 15.0, 0),
                      child: Icon(Icons.account_circle),
                    ),
                  ),
                ),
              ),
               Container(
                
                margin: EdgeInsets.symmetric(horizontal: 30.0,vertical: 10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0)),
                    hintText: 'Nick Name',
                    prefixIcon: Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 0, 15.0, 0),
                      child: Icon(Icons.account_circle),
                    ),
                  ),
                ),
              ),
              
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child:FlatButton(
                        onPressed: () {
                          DatePicker.showDatePicker(context,
                              showTitleActions: true,
                              minTime: DateTime(1900, 1, 1),
                              maxTime: DateTime(2020, 12, 30),
                              onChanged: (date) {
                            setState(() {
                              datepicker =
                                  DateFormat("dd/MM/yyyy").format(date);
                            });
                          }, onConfirm: (date) {
                            setState(() {
                              datepicker = [
                                datepicker.day,
                                '/',
                                datepicker.month,
                                '/',
                                datepicker.year
                              ];
                            });
                          },
                              currentTime: DateTime.now(),
                              locale: LocaleType.vi);
                        },
                        child: Text(
                          datepicker == null
                              ? 'Chọn ngày tháng năm sinh '
                              : '${datepicker}',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                     
                  
                
              ),
              
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child:  Center(
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            _decideImageView(),
                            RaisedButton(
                              onPressed: () {
                                _showChoiceDialog(context);
                              },
                              child: Icon(Icons.add_a_photo),
                            )
                          ],
                        ),
                      ),
                      
                  
                
              ),
              Container(
                
                margin: EdgeInsets.symmetric(horizontal: 30.0,vertical: 10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0)),
                    hintText: 'Email',
                    prefixIcon: Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 0, 15.0, 0),
                      child: Icon(Icons.email),
                    ),
                  ),
                ),
              ),
                  Container(
                
                margin: EdgeInsets.symmetric(horizontal: 30.0,vertical: 10.0),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0)),
                    hintText: 'Password',
                    prefixIcon: Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 0, 15.0, 0),
                      child: Icon(Icons.lock),
                    ),
                  ),
                ),
              ),
              
                  Container(
                
                margin: EdgeInsets.symmetric(horizontal: 30.0,vertical: 10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0)),
                    hintText: 'Phone',
                    prefixIcon: Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 0, 15.0, 0),
                      child: Icon(Icons.phone_iphone),
                    ),
                  ),
                ),
              ),
               Container(
                
                margin: EdgeInsets.symmetric(horizontal: 30.0,vertical: 10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0)),
                    hintText: 'Adress',
                    prefixIcon: Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 0, 15.0, 0),
                      child: Icon(Icons.add_location),
                    ),
                  ),
                ),
              ),
               Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 45.0,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        onPressed: () {},
                        color: Theme.of(context).primaryColor,
                        child: Text(
                          'REGISTER',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        textColor: Colors.white,
                      ),
                    ),
                  ),
            ],
          )
        ]));
  }
}
