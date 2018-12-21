import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'app_model.dart';
import 'place.dart';
import 'place_list.dart';
import 'place_map.dart';
import 'stub_data.dart';

enum PlaceTrackerViewType {
  map,
  list,
}

class PlaceTrackerApp extends StatefulWidget {
  @override
  _PlaceTrackerAppState createState() => _PlaceTrackerAppState();
}

class _PlaceTrackerAppState extends State<PlaceTrackerApp> {
  AppState appState = AppState();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (BuildContext context, Widget child) {
        return AppModel<AppState>(
          initialState: AppState(),
          child: child,
        );
      },
      home: _PlaceTrackerHomePage(),
    );
  }
}

class _PlaceTrackerHomePage extends StatelessWidget {
  const _PlaceTrackerHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 0.0),
              child: Icon(Icons.pin_drop, size: 24.0),
            ),
            Text('Place Tracker'),
          ],
        ),
        backgroundColor: Colors.green[700],
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 16.0, 0.0),
            child: IconButton(
              icon: Icon(
                AppState.of(context).viewType == PlaceTrackerViewType.map
                    ? Icons.list
                    : Icons.map,
                size: 32.0,
              ),
              onPressed: () {
                AppState.updateWith(
                  context,
                  viewType:
                      AppState.of(context).viewType == PlaceTrackerViewType.map
                          ? PlaceTrackerViewType.list
                          : PlaceTrackerViewType.map,
                );
              },
            ),
          ),
        ],
      ),
      body: IndexedStack(
        index:
            AppState.of(context).viewType == PlaceTrackerViewType.map ? 0 : 1,
        children: <Widget>[
          PlaceMap(center: const LatLng(45.521563, -122.677433)),
          PlaceList(),
        ],
      ),
    );
  }
}

class AppState {
  const AppState({
    this.places = StubData.places,
    this.selectedCategory = PlaceCategory.favorite,
    this.viewType = PlaceTrackerViewType.map,
  })  : assert(places != null),
        assert(selectedCategory != null);

  final List<Place> places;
  final PlaceCategory selectedCategory;
  final PlaceTrackerViewType viewType;

  AppState copyWith({
    List<Place> places,
    PlaceCategory selectedCategory,
    PlaceTrackerViewType viewType,
  }) {
    return AppState(
      places: places ?? this.places,
      selectedCategory: selectedCategory ?? this.selectedCategory,
      viewType: viewType ?? this.viewType,
    );
  }

  static AppState of(BuildContext context) => AppModel.of<AppState>(context);

  static void update(BuildContext context, AppState newState) {
    AppModel.update<AppState>(context, newState);
  }

  static void updateWith(
    BuildContext context, {
    List<Place> places,
    PlaceCategory selectedCategory,
    PlaceTrackerViewType viewType,
  }) {
    update(
      context,
      AppState.of(context).copyWith(
        places: places,
        selectedCategory: selectedCategory,
        viewType: viewType,
      ),
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other.runtimeType != runtimeType) return false;
    final AppState otherAppState = other;
    return otherAppState.places == places &&
        otherAppState.selectedCategory == selectedCategory &&
        otherAppState.viewType == viewType;
  }

  @override
  int get hashCode => hashValues(places, selectedCategory, viewType);
}
