import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'app_state.dart';
import 'place_list.dart';
import 'place_map.dart';

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
  const _PlaceTrackerHomePage({ Key key }) : super(key: key);

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
                  size: 32.0
              ),
              onPressed: () {
                AppState.updateWith(
                  context,
                  viewType: AppState.of(context).viewType == PlaceTrackerViewType.map
                      ? PlaceTrackerViewType.list
                      : PlaceTrackerViewType.map,
                );
              },
            ),
          ),
        ],
      ),
      body: IndexedStack(
        index: AppState.of(context).viewType == PlaceTrackerViewType.map ? 0 : 1,
        children: <Widget>[
          PlaceMap(center: const LatLng(45.521563, -122.677433)),
          PlaceList(),
        ],
      ),
    );
  }
}
