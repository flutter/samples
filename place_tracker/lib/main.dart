import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'place_tracker_app.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => AppState(),
    child: PlaceTrackerApp(),
  ));
}
