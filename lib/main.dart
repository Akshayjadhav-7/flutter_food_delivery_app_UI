import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/screens/home_page.dart';
import 'package:flutter_food_delivery_app/screens/startpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Roboto',
        primarySwatch: Colors.blue,
      ),
      home:  StartPage(),
    );
  }
}

