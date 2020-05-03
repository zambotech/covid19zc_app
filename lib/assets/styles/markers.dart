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

Marker sinunuc = (
  new Marker(
    width: 45.0,
    height: 45.0,
    point: new LatLng(6.9395572,121.9891133),
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

Marker talonTalon = (
  new Marker(
    width: 45.0,
    height: 45.0,
    point: new LatLng(6.9000659,122.1186706),
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

Marker upper = (
  new Marker(
    width: 45.0,
    height: 45.0,
    point: new LatLng(6.9241994,122.0276053),
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

Marker staMaria = (
  new Marker(
    width: 45.0,
    height: 45.0,
    point: new LatLng(6.9310651,122.07282),
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

Marker cityJail = (
  new Marker(
    width: 45.0,
    height: 45.0,
    point: new LatLng(6.9122961,122.0612291),
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

CircleMarker sinunucCircleMarker = (
  new CircleMarker(
    point: LatLng(6.9395572,121.9891133),
    color: Colors.redAccent.withOpacity(0.2),
    borderStrokeWidth: 1.0,
    borderColor: Colors.redAccent,
    radius: 60 
  )
);

CircleMarker talonTalonCircleMarker = (
  new CircleMarker(
    point: LatLng(6.9000659,122.1186706),
    color: Colors.redAccent.withOpacity(0.2),
    borderStrokeWidth: 1.0,
    borderColor: Colors.redAccent,
    radius: 60 
  )
);

CircleMarker upperCircleMarker = (
  new CircleMarker(
    point: LatLng(6.9241994,122.0276053),
    color: Colors.redAccent.withOpacity(0.2),
    borderStrokeWidth: 1.0,
    borderColor: Colors.redAccent,
    radius: 60 
  )
);

CircleMarker staMariaCircleMarker = (
  new CircleMarker(
    point: LatLng(6.9310651,122.07282),
    color: Colors.redAccent.withOpacity(0.2),
    borderStrokeWidth: 1.0,
    borderColor: Colors.redAccent,
    radius: 60 
  )
);

CircleMarker cityJailCircleMarker = (
  new CircleMarker(
    point: LatLng(6.9122961,122.0612291),
    color: Colors.redAccent.withOpacity(0.2),
    borderStrokeWidth: 1.0,
    borderColor: Colors.redAccent,
    radius: 60 
  )
);