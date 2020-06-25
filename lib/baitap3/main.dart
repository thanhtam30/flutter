import 'package:flutter/material.dart';
import './Home.dart';
import './Login1.dart';
import './Listview.dart';
import './Swiper.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     initialRoute: '/',
       routes: {
         '/':(context)=>SwiperExample(),
         '/listview':(context)=>ListViewExample()
       },
      // home: SwiperExample(),
    );
  }
}

