import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

enum PlaceCategory {
  FAVORITE,
  VISITED,
  WANT_TO_GO,
}

class Place {
  Place(
      {@required this.latlng,
      @required this.name,
      @required this.category,
      this.description,
      this.starRating = 0});

  final LatLng latlng;
  String name;
  PlaceCategory category;
  String description;
  int starRating;

  double get latitude => latlng.latitude;
  double get longitude => latlng.longitude;

  Place copy() {
    return new Place(
        latlng: latlng,
        name: name,
        category: category,
        description: description,
        starRating: starRating);
  }
}
