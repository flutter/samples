import 'package:flutter/material.dart';
import 'place_map.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Place Tracker',
    home: PlaceMap(
      center: const LatLng(45.521563, -122.677433),
    ),
  )
);
