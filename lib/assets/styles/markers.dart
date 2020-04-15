import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';


Marker tetuan = (
  new Marker(
    width: 45.0,
    height: 45.0,
    point: new LatLng(6.915614, 122.086401),
    builder: (context) => new Container(
      child: Transform.scale(
        scale: 1.5,
          child: IconButton(
          icon: new Image.asset("lib/assets/images/virus.png"),
          onPressed: () {
            print('Tetuan');
          },
        ),
      )
    )
  )
);

Marker tumaga = (
  new Marker(
    width: 45.0,
    height: 45.0,
    point: new LatLng(6.949417, 122.078325),
    builder: (context) => new Container(
      child: Transform.scale(
        scale: 1.5,
          child: IconButton(
          icon: new Image.asset("lib/assets/images/virus.png"),
          onPressed: () {
            print('Tetuan');
          },
        ),
      )
    )
  )
);

CircleMarker tetuanCircleMarker = (
  new CircleMarker(
    point: LatLng(6.915614, 122.086401),
    color: Colors.redAccent.withOpacity(0.2),
    borderStrokeWidth: 1.0,
    borderColor: Colors.redAccent,
    radius: 60 
  )
);

CircleMarker tumagaCircleMarker = (
  new CircleMarker(
    point: LatLng(6.949417, 122.078325),
    color: Colors.redAccent.withOpacity(0.2),
    borderStrokeWidth: 1.0,
    borderColor: Colors.redAccent,
    radius: 60 
  )
);