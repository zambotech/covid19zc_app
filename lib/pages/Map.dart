import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong/latlong.dart';
import 'package:permission_handler/permission_handler.dart';
import '../assets/styles/markers.dart';

class Map extends StatefulWidget {
  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {

  MapController controller = new MapController();
  Position position;
  Widget _child;

  Future<void> getPermission() async {
    PermissionStatus permission = await PermissionHandler()
    .checkPermissionStatus(PermissionGroup.location);

    if (permission == PermissionStatus.denied || permission == PermissionStatus.unknown) {
      await PermissionHandler()
      .requestPermissions([PermissionGroup.locationAlways]);
    }

    var geolocator = Geolocator();

    GeolocationStatus geolocationStatus = 
    await geolocator.checkGeolocationPermissionStatus();

    switch(geolocationStatus) {
      case GeolocationStatus.denied:
        showToast('Access Denied');
        break;
      case GeolocationStatus.disabled:
        showToast('Disabled');
        break;
      case GeolocationStatus.restricted:
        showToast('Restricted');
        break;
      case GeolocationStatus.unknown:
        showToast('Unknown');
        break;
      case GeolocationStatus.granted:
        showToast('Access Granted');
        _getCurrentLocation();
    }
  }

  void _getCurrentLocation() async {
    Position res = await Geolocator().getCurrentPosition();
    setState(() {
      position = res;
      _child = _mapWidget();
    });
  }

  void showToast(message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIos: 1,
      backgroundColor: Colors.redAccent,
      textColor: Colors.white,
      fontSize: 14.0
    );
  }

  @override
  void initState() {
    getPermission();
    super.initState();
  }

  Widget _mapWidget() {
    return new FlutterMap(options: 
      new MapOptions(
        center: new LatLng(position.latitude, position.longitude),
        minZoom: 13.0
      ),
      layers: [
        new TileLayerOptions(
          urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
          subdomains: ['a','b','c']
        ),
        new MarkerLayerOptions(
          markers: [
            new Marker(
              width: 45.0,
              height: 45.0,
              point: new LatLng(position.latitude, position.longitude),
              builder: (context) => new Container(
                child: Transform.scale(
                  scale: 1.5,
                    child: IconButton(
                    icon: new Icon(Icons.location_on),
                    color: Colors.blue,
                    onPressed: () {
                      print('Tetuan');
                    },
                  ),
                )
              )
            ),
            tetuan, 
            tumaga, 
            staMaria, 
            talonTalon, 
            sinunuc, 
            cityJail, 
            upper
          ]
        ),
        CircleLayerOptions(
          circles: [
          new CircleMarker(
            point: LatLng(position.latitude, position.longitude),
            color: Colors.blueAccent.withOpacity(0.2),
            borderStrokeWidth: 1.0,
            borderColor: Colors.blueAccent,
            radius: 40
          ),
            tetuanCircleMarker, 
            tumagaCircleMarker, 
            staMariaCircleMarker, 
            talonTalonCircleMarker, 
            sinunucCircleMarker, 
            cityJailCircleMarker, 
            upperCircleMarker
          ]
        ),
      ]
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COVID-19 Tracker: Zamboanga City'),
        centerTitle: true,
      ),
      body: _child,
      
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}