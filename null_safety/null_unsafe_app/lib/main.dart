import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// This app simulates possible null errors. Try running it and see if it fails.
// You can then try to hot reload a few times; you should see it occasionally
// failing and occasionally succeeding.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var localizedAppName = Config.getAppName();
    var temperatures = WeatherService.getTemperature();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text(localizedAppName)),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Temperature next 3 days:'),
              for (var t in temperatures) Text(t.round().toString()),
            ],
          ),
        ),
      ),
    );
  }
}

class Config {
  static String getAppName() {
    // Imagine this looks up a localized version of the app name. We're using
    // the current time to simulate a variance in responces.
    if (DateTime.now().second.isEven) {
      return 'Weather forecast';
    } else {
      // Oops, we don't have a localization.
      return null;
    }
  }
}

class WeatherService {
  static List<double> getTemperature() {
    // Imagine this makes a network call to get the current temperature.
    // We're using the current time to simulate a variance in responces.
    if (DateTime.now().millisecond.isEven) {
      return [32.2, 34.5, 31.0];
    } else {
      if ((DateTime.now().second / 10).round().isEven) {
        // Oops, we couldn't get any temperatures.
        return null;
      } else {
        // Oops, we couldn't get one of the temperatures.
        return [32.2, 34.5, null, 31.0];
      }
    }
  }
}
