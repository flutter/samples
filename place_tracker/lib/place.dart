import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

enum PlaceCategory {
  favorite,
  visited,
  wantToGo,
}

class Place {
  const Place({
    @required this.latLng,
    @required this.name,
    @required this.category,
    this.description,
    this.starRating = 0,
  }) : assert(latLng != null),
       assert(name != null),
       assert(category != null),
       assert(starRating != null && starRating >= 0 && starRating <= 5);

  final LatLng latLng;
  final String name;
  final PlaceCategory category;
  final String description;
  final int starRating;

  double get latitude => latLng.latitude;
  double get longitude => latLng.longitude;

  Place copyWith({
    LatLng latLng,
    String name,
    PlaceCategory category,
    String description,
    int starRating,
  }) {
    return Place(
        latLng: latLng ?? this.latLng,
        name: name ?? this.name,
        category: category ?? this.category,
        description: description ?? this.description,
        starRating: starRating ?? this.starRating,
    );
  }
}
