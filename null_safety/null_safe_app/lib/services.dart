// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class Config {
  static String? getAppName() {
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
  static List<double?>? getTemperatures() {
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
