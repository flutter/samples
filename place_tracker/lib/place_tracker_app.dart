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
        return AppModel<AppState>(
            initialState: AppState(),
            child: child
        );
      },
      home: _PlaceTrackerHomePage(),
    );
  }
}

class _PlaceTrackerHomePage extends StatelessWidget {
  const _PlaceTrackerHomePage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppState appState = AppModel.of<AppState>(context);
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
                AppModel.update<AppState>(context, AppState(
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
}

class _AppModelScope<T> extends InheritedWidget {
  const _AppModelScope({
    Key key,
    this.appModelState,
    Widget child
  }) : super(key: key, child: child);

  final _AppModelState<T> appModelState;

  @override
  bool updateShouldNotify(_AppModelScope oldWidget) => true;
}

class AppModel<T> extends StatefulWidget {
  AppModel({
    Key key,
    @required this.initialState,
    this.child,
  }) : assert(initialState != null),
       super(key: key);

  final T initialState;
  final Widget child;

  _AppModelState<T> createState() => _AppModelState<T>();

  static T of<T>(BuildContext context) {
    final ofType = _AppModelScope<T>();
    final _AppModelScope<dynamic> scope = context.inheritFromWidgetOfExactType(ofType.runtimeType);
    return scope.appModelState.currentState;
  }

  static void update<T>(BuildContext context, T newState) {
    final ofType = _AppModelScope<T>();
    final _AppModelScope<dynamic> scope = context.inheritFromWidgetOfExactType(ofType.runtimeType);
    scope.appModelState.updateState(newState);
  }
}

class _AppModelState<T> extends State<AppModel<T>> {
  @override
  void initState() {
    super.initState();
    currentState = widget.initialState;
  }

  T currentState;

  void updateState(T newState) {
    if (newState != currentState) {
      setState(() {
        currentState = newState;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return _AppModelScope<T>(
      appModelState: this,
      child: widget.child,
    );
  }
}
