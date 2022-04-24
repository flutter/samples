// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

import 'place.dart';
import 'place_list.dart';
import 'place_map.dart';
import 'stub_data.dart';

enum PlaceTrackerViewType {
  map,
  list,
}

class PlaceTrackerApp extends StatelessWidget {
  const PlaceTrackerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: _PlaceTrackerHomePage(),
    );
  }
}

class _PlaceTrackerHomePage extends StatelessWidget {
  const _PlaceTrackerHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var state = Provider.of<AppState>(context);
    return Scaffold(
      appBar: AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 0.0),
              child: Icon(Icons.pin_drop, size: 24.0),
            ),
            Text('Place Tracker'),
          ],
        ),
        backgroundColor: Colors.green[700],
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 16.0, 0.0),
            child: IconButton(
              icon: Icon(
                state.viewType == PlaceTrackerViewType.map
                    ? Icons.list
                    : Icons.map,
                size: 32.0,
              ),
              onPressed: () {
                state.setViewType(
                  state.viewType == PlaceTrackerViewType.map
                      ? PlaceTrackerViewType.list
                      : PlaceTrackerViewType.map,
                );
              },
            ),
          ),
        ],
      ),
      body: IndexedStack(
        index: state.viewType == PlaceTrackerViewType.map ? 0 : 1,
        children: const [
          PlaceMap(center: LatLng(45.521563, -122.677433)),
          PlaceList()
        ],
      ),
    );
  }
}

class AppState extends ChangeNotifier {
  AppState({
    this.places = StubData.places,
    this.selectedCategory = PlaceCategory.favorite,
    this.viewType = PlaceTrackerViewType.map,
  });

  List<Place> places;
  PlaceCategory selectedCategory;
  PlaceTrackerViewType viewType;

  void setViewType(PlaceTrackerViewType viewType) {
    this.viewType = viewType;
    notifyListeners();
  }

  void setSelectedCategory(PlaceCategory newCategory) {
    selectedCategory = newCategory;
    notifyListeners();
  }

  void setPlaces(List<Place> newPlaces) {
    places = newPlaces;
    notifyListeners();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is AppState &&
        other.places == places &&
        other.selectedCategory == selectedCategory &&
        other.viewType == viewType;
  }

  @override
  int get hashCode => Object.hash(places, selectedCategory, viewType);
}
