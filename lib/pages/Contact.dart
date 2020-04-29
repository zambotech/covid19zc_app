import 'package:covid19zc_app/data/contacts.dart';
import 'package:covid19zc_app/services/url_launcher.dart';
import 'package:flutter/material.dart';

import '../assets/styles/hex.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('COVID-19 Tracker: Zamboanga City'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Card(
                elevation: 5.0,
                margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        child: new CircleAvatar(child: 
                        new Icon(Icons.phone),
                        foregroundColor: Colors.white,
                        backgroundColor: Color(hexColor('#FF5A6F')),
                        ),
                        radius: 30.0,
                        backgroundColor: Color(hexColor('#FF5A6F'))
                      ),
                      Container(
                        width: width - 120,
                        child: ListTile(
                          title: Text( 'HOTLINE NUMBERS',
                            style: TextStyle(
                              color: Color(0xffff5a6f),
                              fontSize: 22
                            ),
                          ),
                          subtitle: Text( 'Contact details sourced from Beng Climaco, Zamboanga City Medical Center, and DOH RO IX Facebook pages.',
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
              ),
              Expanded(
                child: ListView(
                  primary: false,
                  children: cardOfContacts()
                ),
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  List<Widget> cardOfContacts() {
    List<Widget> cardOfContacts = List<Widget>();

    for (var cardOfContactsCounter = 0; cardOfContactsCounter < 3; cardOfContactsCounter++) {
      cardOfContacts.add( Card(
        elevation: 5.0,
        margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Theme(
          data: ThemeData(
            accentColor: Color(0xffff5a6f),
          ),
          child: ExpansionTile(
            title: Text(
              cardOfContactsCounter == 0 ? 'Zamboanga Task Force COVID-19' : cardOfContactsCounter == 1 ? 'Zamboanga City Medical Center Teleconsultation' : 'Relief Operations',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xffff5a6f),
              ),
            ),
            children: cardOfContactsCounter == 0 ? expansionZamboangaTaskForce() : cardOfContactsCounter == 1 ? expansionZCMCTeleconsultation() : expansionReliefOperations()
          ),
        ),
      ));
    }

    return cardOfContacts;
  }

  //Zamboanga Task Force COVID-19
  List<Widget> expansionZamboangaTaskForce() {
    List<Widget> expansionZamboangaTaskForce = List<Widget>();
    List<Widget> globeHotline = List<Widget>();
    List<Widget> policeOperation = List<Widget>();
    List<Widget> zcdrrmoHotline = List<Widget>();
    List<Widget> smartHotline = List<Widget>();
    List<Widget> healthLine = List<Widget>();

    globeHotline.add( Text('Globe Hotlines',
      style: TextStyle(
        color: Color(0xff44337a),
      ),
    ));
    policeOperation.add( Text('Police Operations',
      style: TextStyle(
        color: Color(0xff44337a),
      ),
    ));
    zcdrrmoHotline.add( Text('ZCDRRMO',
      style: TextStyle(
        color: Color(0xff44337a),
      ),
    ));
    smartHotline.add( Text('Smart Hotlines',
      style: TextStyle(
        color: Color(0xff44337a),
      ),
    ));
    healthLine.add( Text('Health Lines',
      style: TextStyle(
        color: Color(0xff44337a),
      ),
    ));

    for (var expansionZamboangaTaskForceCounter = 0; expansionZamboangaTaskForceCounter < 3; expansionZamboangaTaskForceCounter++) {
      //This loop will add all contacts to your first column in each row
      for (var number = 0; number < (expansionZamboangaTaskForceCounter == 0 ? (globeHotlines.length + 2) : expansionZamboangaTaskForceCounter == 1 ? (policeOperations.length + 2) : (zcdrrmo.length + 2)); number++) {
        (expansionZamboangaTaskForceCounter ==  0 ? globeHotline : expansionZamboangaTaskForceCounter == 1 ? policeOperation : zcdrrmoHotline).add( number == 0 || number == ((expansionZamboangaTaskForceCounter == 0 ? globeHotlines.length : expansionZamboangaTaskForceCounter == 1 ? policeOperations.length : zcdrrmo.length) + 1) ? Text('') : 
        GestureDetector(
          onTap: (){
            launchDialPad('tel:'+ (expansionZamboangaTaskForceCounter == 0 ? globeHotlines[number - 1] : expansionZamboangaTaskForceCounter == 1 ? policeOperations[number - 1] : zcdrrmo[number - 1]));
          },
          child: Text( (expansionZamboangaTaskForceCounter == 0 ? globeHotlines[number - 1] : expansionZamboangaTaskForceCounter == 1 ? policeOperations[number - 1] : zcdrrmo[number - 1]),
            style: TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.normal
            ),
          ),
        ));
      }
      //This loop will add all contacts to your second column in each row
      for (var number = 0; number < ( expansionZamboangaTaskForceCounter == 0 ? (smartHotlines.length + 2) : expansionZamboangaTaskForceCounter == 1 ? (healthLines.length + 2) : 0); number++) {
        (expansionZamboangaTaskForceCounter ==  0 ? smartHotline : healthLine).add( number == 0 || number == ((expansionZamboangaTaskForceCounter == 0 ? smartHotlines.length : healthLines.length) + 1) ? Text('') : 
        GestureDetector(
          onTap: (){
            launchDialPad('tel:'+ (expansionZamboangaTaskForceCounter == 0 ? smartHotlines[number - 1] : healthLines[number - 1]));
          },
          child: Text( (expansionZamboangaTaskForceCounter == 0 ? smartHotlines[number - 1] : healthLines[number - 1]),
            style: TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.normal
            ),
          ),
        ));
      }

      expansionZamboangaTaskForce.add( Row(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Column(
                children: (expansionZamboangaTaskForceCounter ==  0 ? globeHotline : expansionZamboangaTaskForceCounter == 1 ? policeOperation : zcdrrmoHotline)
              ),
            ),
          ),
          expansionZamboangaTaskForceCounter == 2 ? Container() : Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: (expansionZamboangaTaskForceCounter ==  0 ? smartHotline : expansionZamboangaTaskForceCounter == 1 ? healthLine : <Widget>[]),
              ),
            ),
          ),
        ],
      ));
    }

    return expansionZamboangaTaskForce;
  }
  //Zamboanga City Medical Center Teleconsultation
  List<Widget> expansionZCMCTeleconsultation() {
    List<Widget> expansionZCMCTeleconsultation = List<Widget>();

    for (var expansionZCMCTeleconsultationCounter = 0; expansionZCMCTeleconsultationCounter < 2; expansionZCMCTeleconsultationCounter++) {
      expansionZCMCTeleconsultation.add( Column(
        children: <Widget>[
          Text(
            expansionZCMCTeleconsultationCounter == 0 ? '8:00AM to 12:00NN (Monday to Saturday)' : '12:00NN to 4:00PM (Monday to Friday)',
            style: TextStyle(
              color: Color(0xff44337a),
            ),
          ),
          expansionZCMCTeleconsultationCounter == 0 ? Container() : Text(
            '8:00AM to 12:00NN (Sunday)',
            style: TextStyle(
              color: Color(0xff44337a),
            ),
          ),
          Text(''),
          Column(
            children: <Widget>[
              Text('Smart / Talk N’ Text / Sun',
                style: TextStyle(
                  color: Color(0xff44337a),
                ),
              ),
              Container(
                height: 120,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 8,
                  ),
                  itemCount: expansionZCMCTeleconsultationCounter == 0 ? zcmcSmart0.length : zcmcSmart1.length,
                  itemBuilder: (context, position){
                    return Center(
                      child: GestureDetector(
                        onTap: (){
                          launchDialPad('tel:'+(expansionZCMCTeleconsultationCounter == 0 ? zcmcSmart0[position] : zcmcSmart1[position]));
                        },
                        child: Text( expansionZCMCTeleconsultationCounter == 0 ? zcmcSmart0[position] : zcmcSmart1[position],
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.normal
                          ),
                        ),
                      )
                    );
                  }
                ),
              ),
            ],
          ),
          Text(''),
          Column(
            children: <Widget>[
              Text('Globe / TM',
                style: TextStyle(
                  color: Color(0xff44337a),
                ),
              ),
              Container(
                height: 120,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 8,
                  ),
                  itemCount: expansionZCMCTeleconsultationCounter == 0 ? zcmcGlobe0.length : zcmcGlobe1.length,
                  itemBuilder: (context, position){
                    return Center(
                      child: GestureDetector(
                        onTap: (){
                          launchDialPad('tel:'+(expansionZCMCTeleconsultationCounter == 0 ?  zcmcGlobe0[position] : zcmcGlobe1[position]));
                        },
                        child: Text( expansionZCMCTeleconsultationCounter == 0 ?  zcmcGlobe0[position] : zcmcGlobe1[position],
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.normal
                          ),
                        ),
                      )
                    );
                  }
                ),
              ),
            ],
          ),
          Text(''),
        ],
      ));
    }
    return expansionZCMCTeleconsultation;
  }
  //Relief Operations
  List<Widget> expansionReliefOperations() {
    List<Widget> expansionReliefOperations = List<Widget>();
    List<Widget> colChildren = List<Widget>();
    for (var expansionReliefOperationsCounter = 0; expansionReliefOperationsCounter < (reliefOperations.length + 1); expansionReliefOperationsCounter++) {
      colChildren.add(
        GestureDetector(
          onTap: (){
            launchDialPad('tel:'+(expansionReliefOperationsCounter != (reliefOperations.length) ? reliefOperations[expansionReliefOperationsCounter] : ''));
          },
          child: Text( expansionReliefOperationsCounter != (reliefOperations.length) ? reliefOperations[expansionReliefOperationsCounter] : '',
            style: TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.normal
            ),
          ),
        )
      );
    }
    expansionReliefOperations.add( Column(
      children: colChildren
    ));
    return expansionReliefOperations;
  }
}