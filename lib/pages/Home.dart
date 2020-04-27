import 'dart:async';
import 'dart:convert';
import 'package:covid19zc_app/formatter/display_text.dart';
import 'package:covid19zc_app/models/home_figures.dart';
import 'package:http/http.dart' as http;
import 'package:covid19zc_app/assets/styles/hex.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isDispose = false;
  StreamController _streamController;
  Stream<dynamic> fetchData() async* {
    final response = await http.get( 'http://api.covid19zc.com/figures');
    yield json.decode(response.body);
  }
  loadData() async{
    fetchData().listen((onData){
      _streamController.add(onData);
    });
  }

  @override
  void initState() {
    _streamController = new StreamController();
    loadData();
    Timer.periodic(Duration(hours: 1), (timer) { 
      if (!isDispose) {
        loadData();
      } else {timer.cancel();}
    });
    super.initState();
  }

  @override
  void dispose() {
    isDispose = true;
    super.dispose();
  }


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
          child: StreamBuilder(
            stream: _streamController.stream,
            builder: (context, snapshot){
              if (snapshot.hasError)
                return new Text('Error...');
              switch (snapshot.connectionState) {
                case ConnectionState.waiting:
                  return new Text('Loading...');
                  break;
                default:
                Map<String,dynamic> data = snapshot.data;
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: homeChildren(width, height, data)
                );
              }
            }
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  List<Widget> homeChildren(double width, double height, Map<String, dynamic> data){
    List<Widget> homeChildren = List<Widget>();
    data.forEach((key, data){
      Figures dataFigures = Figures(key, data);
      homeChildren.add( Card(
        elevation: 5.0,
        margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                child: Text( dataFigures.value,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                radius: 30,
                backgroundColor: Color(hexColor('#FF5A6F'))
              ),
              Container(
                width: width - 120,
                child: ListTile(
                  title: Text( dataFigures.key,
                    style: TextStyle(
                      color: Color(0xffff5a6f),
                      fontSize: 22
                    ),
                  ),
                  subtitle: Text( 'As of ' + capitalize(dataFigures.dataUpdatedAt),
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
    });
    return homeChildren;
  }
}