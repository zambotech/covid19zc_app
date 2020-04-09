import 'package:flutter/material.dart';

class Cases extends StatefulWidget {
  @override
  _CasesState createState() => _CasesState();
}

class _CasesState extends State<Cases> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COVID-19 Tracker: Zamboanga City'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Cases',
            ),
            Text(
              'Coming soon...',
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}