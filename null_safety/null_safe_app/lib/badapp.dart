import 'package:flutter/material.dart';

import 'services.dart';

// This app doesn't work correctly when the services return null. Try to
// uncomment the for-loop and appBar lines below, and note how the new null
// safety static analysis immediately flags those lines as errors.
class BadMyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localizedAppName = Config.getAppName();
    final temperatures = WeatherService.getTemperature();

    var tempWidgets = [
      Text('Temperature next 3 days:'),
      // for (final t in temperatures) Text(t.round().toString()),
    ];

    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(title: Text(localizedAppName)),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: tempWidgets,
          ),
        ),
      ),
    );
  }
}
