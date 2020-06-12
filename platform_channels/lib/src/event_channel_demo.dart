// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:platform_channels/src/accelerometer_event_channel.dart';

/// Demonstrates how to use [EventChannel] to listen continuous values
/// of Accelerometer Sensor from platform.
///
/// The widget uses a [StreamBuilder] to rebuild it's descendant whenever it
/// listens a new value from the [Accelerometer.readings] stream. It has three
/// [Text] widgets to display the value of [AccelerometerReadings.x],
/// [AccelerometerReadings.y], and [AccelerometerReadings.z] respectively.
class EventChannelDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.headline5;
    return Scaffold(
      appBar: AppBar(
        title: Text('EventChannel Demo'),
      ),
      body: Center(
        child: StreamBuilder<AccelerometerReadings>(
          stream: Accelerometer.readings,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else if (snapshot.hasData) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'x axis: ' + snapshot.data.x.toStringAsFixed(3),
                    style: textStyle,
                  ),
                  Text(
                    'y axis: ' + snapshot.data.y.toStringAsFixed(3),
                    style: textStyle,
                  ),
                  Text(
                    'z axis: ' + snapshot.data.z.toStringAsFixed(3),
                    style: textStyle,
                  )
                ],
              );
            }

            return Text(
              'No Data Available',
              style: textStyle,
            );
          },
        ),
      ),
    );
  }
}
