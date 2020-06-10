// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:platform_channels/src/accelerometer_event_channel.dart';

/// Demonstrates how to use [EventChannel] to listen continuous values
/// of Accelerometer Sensor from platform.
///
/// The widget uses a [StreamBuilder] to rebuild it's descendant whenever it
/// listens a new value from the [Accelerometer.readings] stream. If there's
/// a change in the [AccelerometerReadings.x] and [AccelerometerReadings.y],
/// the height and width of [AnimatedContainer] are changed respectively. If
/// there's a change in [AccelerometerReadings.z], the borderRadius is changed.
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
              final width = 150 + snapshot.data.y * 10;
              final height = 150 + snapshot.data.x * 10;
              final borderRadius = snapshot.data.z;

              return AnimatedContainer(
                duration: Duration(milliseconds: 200),
                width: width < 0 ? 150 : width,
                height: height < 0 ? 150 : height,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(
                    borderRadius < 0 ? 0 : borderRadius * 2,
                  ),
                ),
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
