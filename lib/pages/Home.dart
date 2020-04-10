import 'package:covid19zc_app/assets/hex.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        title: Text('COVID-19 Tracker: Zamboanga City'),
        centerTitle: true,
      ),
      
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: homeChildren(width, height)
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  List<Widget> homeChildren(double width, double height){
    List<Widget> homeChildren = List<Widget>();
    for (var i = 0; i < 3; i++) {
      homeChildren.add( Card(
        elevation: 5.0,
        margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                child: Text(
                  i == 0 ? '4' 
                  : i == 1 ? '93'
                  : '2381',
                  style: TextStyle(
                    color: Color(0xff44337a),
                  ),
                ),
                radius: 30,
                backgroundColor: Theme.of(context).accentColor
              ),
              Container(
                width: width - 120,
                child: ListTile(
                  title: Text(
                    i == 0 ? 'Cases Confirmed' 
                    : i == 1 ? 'PUI' 
                    : 'PUM',
                    style: TextStyle(
                      color: Color(0xffff5a6f),
                      fontSize: 22
                    ),
                  ),
                  subtitle: Text(
                    i == 0 ? 'As of April 04, 2020'
                    : i == 1 ? 'As of April 01, 2020'
                    : 'As of April 01, 2020',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ));
    }
    return homeChildren;
  }
}