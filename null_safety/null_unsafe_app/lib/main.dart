// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:window_size/window_size.dart';

void main() {
  setupWindow();
  runApp(const MyApp());
}

const double windowWidth = 400;
const double windowHeight = 400;

void setupWindow() {
  if (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) {
    WidgetsFlutterBinding.ensureInitialized();
    setWindowTitle('Weather');
    setWindowMinSize(const Size(windowWidth, windowHeight));
  }
}

// This app simulates possible null errors. Try running it and see if it fails.
// You can then try to hot reload a few times; you should see it occasionally
// failing and occasionally succeeding.
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get data from services. Note: in a real application,
    // these would be async calls, but we’re using sync calls
    // for simplicity.
    final localizedAppName = Config.getAppName();
    final temperatures = WeatherService.getTemperatures();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text(localizedAppName)),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Temperature next 3 days:'),
              for (final t in temperatures) Text(t.round().toString()),
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
    // the current time to simulate a variance in responses.
    if (DateTime.now().second.isEven) {
      return 'Weather forecast';
    } else {
      // Oops, we don't have a localization.
      return null;
    }
  }
}

class WeatherService {
  static List<double> getTemperatures() {
    // Imagine this makes a network call to get the current temperature.
    // We're using the current time to simulate a variance in responses.
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
