// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

import 'services.dart';

class GoodMyApp extends StatelessWidget {
  const GoodMyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localizedAppName = Config.getAppName();
    final temperatures = WeatherService.getTemperatures();

    List<Widget> tempWidgets;
    if (temperatures == null) {
      tempWidgets = [const Text('Temperature: Failed getting forecast :-(')];
    } else {
      // Null safety uses flow analysis. The code checked for null in the branch
      // above, so in this branch it known that temperatures cannot be null.
      // Notice how we access temperatures without getting an analysis error.
      tempWidgets = [
        const Text('Temperature next 3 days:'),
        for (final t in temperatures)
          // We first use the conditional member access operator to only call
          // round() and toString() if t isn't null. We then test if that
          // succeeded, and if not use a null conditional operator to supply a
          // value handling the error case.
          Text(t?.round().toString() ?? 'no forecast'),
      ];
    }

    return MaterialApp(
      home: Scaffold(
        // Here we again use the null conditional operator.
        appBar: AppBar(title: Text(localizedAppName ?? 'Weather')),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // Notice how we're *not* getting an error saying that `tempWidgets`
            // is null here despite tempWidgets being declared in line 9 without
            // an initial value. This is because of null safety's definite
            // assignment feature: We know that in all branches of the code
            // (both the if- and else- branches above), the variable was
            // assigned a value, and thus isn't null. Try removing the assigment
            // from the if-branch and notice the immediate error.
            children: tempWidgets,
          ),
        ),
      ),
    );
  }
}
