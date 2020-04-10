import 'package:flutter/material.dart';
import 'assets/hex.dart';
import 'pages/BottomNavigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryColor: Color(hexColor('#FF5A6F')),
        accentColor: Color(0xfffff5f5),
        fontFamily: 'Inter',
        textTheme: TextTheme(
        body1: TextStyle(
          fontSize: 20.0, 
          fontFamily: 'Inter', 
          fontWeight: FontWeight.bold, 
          color: Colors.red[300],
          ),
        ),
      ),
      home: BottomNavigation(),
    );
  }
}
