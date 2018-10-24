import 'package:flutter/material.dart';
import 'place_map.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class _Home extends StatelessWidget {
  const _Home({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlaceMap(
      center: const LatLng(45.521563, -122.677433),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Place Tracker',
      home: _Home(),
    )
  );
}
