import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

enum PlaceCategory {
  FAVORITE,
  VISITED,
  WANT_TO_GO,
}

class Place {
  Place(
      {@required this.latLng,
      @required this.name,
      @required this.category,
      this.description,
      this.starRating = 0});

  final LatLng latLng;
  String name;
  PlaceCategory category;
  String description;
  int starRating;

  double get latitude => latLng.latitude;
  double get longitude => latLng.longitude;

  Place copy() {
    return new Place(
        latLng: latLng,
        name: name,
        category: category,
        description: description,
        starRating: starRating);
  }
}
