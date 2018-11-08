import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

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
        return PlaceTrackerAppModel(
            state: appState,
            child: child
        );
      },
      home: _PlaceTrackerHomePage(
        onChanged: (AppState newAppState) {
          setState(() {
            appState = newAppState;
          });
        },
      ),
    );
  }
}

class _PlaceTrackerHomePage extends StatelessWidget {
  const _PlaceTrackerHomePage({
    Key key,
    this.onChanged,
  }) : assert(onChanged != null),
       super(key: key);

  final ValueChanged<AppState> onChanged;

  @override
  Widget build(BuildContext context) {
    final AppState appState = AppState.of(context);
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
                  appState.viewType == PlaceTrackerViewType.map
                      ? Icons.list
                      : Icons.map,
                  size: 32.0
              ),
              onPressed: () {
                onChanged(
                  AppState(
                    places: appState.places,
                    selectedCategory: appState.selectedCategory,
                    viewType: appState.viewType == PlaceTrackerViewType.map
                        ? PlaceTrackerViewType.list
                        : PlaceTrackerViewType.map,
                  ),
                );
              },
            ),
          ),
        ],
      ),
      body: IndexedStack(
        index: appState.viewType == PlaceTrackerViewType.map ? 0 : 1,
        children: <Widget>[
          PlaceMap(
            center: const LatLng(45.521563, -122.677433),
            onChanged: (AppState value) => onChanged(value),
          ),
          PlaceList(
            onChanged: (AppState value) => onChanged(value),
          ),
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
  }) : assert(places != null),
       assert(selectedCategory != null);

  final List<Place> places;
  final PlaceCategory selectedCategory;
  final PlaceTrackerViewType viewType;

  @override
  bool operator ==(Object other) {
    if (identical(this, other))
      return true;
    if (other.runtimeType != runtimeType)
      return false;
    final AppState otherAppState = other;
    return otherAppState.places == places
        && otherAppState.selectedCategory == selectedCategory
        && otherAppState.viewType == viewType;
  }

  @override
  int get hashCode => places.hashCode;

  static AppState of(BuildContext context) {
    final PlaceTrackerAppModel model = context.inheritFromWidgetOfExactType(PlaceTrackerAppModel);
    return model.state;
  }
}

class PlaceTrackerAppModel extends InheritedWidget {
  PlaceTrackerAppModel({
    Key key,
    this.state = const AppState(),
    Widget child,
  }) : assert(state != null),
        super(key: key, child: child);

  final AppState state;

  @override
  bool updateShouldNotify(PlaceTrackerAppModel oldWidget) => state != oldWidget.state;
}
