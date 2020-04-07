import 'package:flutter/material.dart';
import 'assets/hex.dart';

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
        accentColor: Colors.red[200],
        fontFamily: 'Inter'
      ),
      home: MyHomePage(title: 'COVID-19 Tracker: Zamboanga City'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Tracking current statistics of confirmed COVID-19 cases and history in Zamboanga City',
              style: TextStyle(
                  color: Colors.red[300],
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,),
                  textAlign: TextAlign.center,
            ),
            Text(
              'Coming soon...',
              style: TextStyle(
                  color: Colors.red[300],
                  fontSize: 19.0,
                  fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
