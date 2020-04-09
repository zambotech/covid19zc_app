import 'package:flutter/material.dart';
import 'Home.dart';
import 'Cases.dart';
import 'Stat.dart';
import 'Symptoms.dart';
import 'Contact.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int _currentIndex = 2;
  final List<Widget> tabs = [
    Cases(),
    Stat(),
    Home(),
    Symptoms(),
    Contact(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex], 
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            title: Text('Cases'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.multiline_chart),
            title: Text('Stats'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_quote),
            title: Text('Symptoms'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            title: Text('Contact'),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      )
    );
  }
}