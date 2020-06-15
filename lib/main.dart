import 'package:flutter/material.dart';
import './Home.dart';
import './Login1.dart';
import './Login2.dart';
import './Login3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;
  final widgetOptions = [
    HomeExample(),
    LoginExample1(),
    LoginExample2(),
    LoginExample3()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Colors.black,
  selectedItemColor: Colors.blue,
  unselectedItemColor: Colors.red,
                  

        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text('LoginScreen1')),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), title: Text('LoginScreen2')),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), title: Text('LoginScreen3'))
        ],
        currentIndex: selectedIndex,
        // fixedColor: Colors.deepPurple,
        
        onTap: onItemTapped,
      ),
    ));
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
