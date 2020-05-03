
import 'package:flutter/material.dart';

import '../services/url_launcher.dart';

class MyListTile extends StatelessWidget {
  const MyListTile({
    this.title,
    this.sourceName,
    this.publishedDate,
    this.sourceURL,
  });
  final String title;
  final String sourceName;
  final String publishedDate;
  final String sourceURL;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> launchInBrowser(sourceURL),
      child: Padding(
        padding: EdgeInsets.only(top: 8, bottom: 8),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  color: Color(0xff44337a),
                  decoration: TextDecoration.underline,
                ),
              ),
              Text(
                sourceName,
                style: TextStyle(
                  fontSize: 16
                ),
              ),
              Text(
                publishedDate,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}