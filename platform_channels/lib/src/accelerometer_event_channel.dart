// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/services.dart';

/// This class includes the implementation for [EventChannel] to listen to value
/// changes from the Accelerometer sensor from native side. It has a [readings]
/// getter to provide a stream of [AccelerometerReadings].
class Accelerometer {
  static final _eventChannel = const EventChannel('eventChannelDemo');

  /// Method responsible for providing a stream of [AccelerometerReadings] to listen
  /// to value changes from the Accelerometer sensor.
  static Stream<AccelerometerReadings> get readings {
    return _eventChannel.receiveBroadcastStream().map(
          (dynamic event) => AccelerometerReadings(
            event[0] as double,
            event[1] as double,
            event[2] as double,
          ),
        );
  }
}

class AccelerometerReadings {
  /// Acceleration force along the x-axis.
  final double x;

  /// Acceleration force along the y-axis.
  final double y;

  /// Acceleration force along the z-axis.
  final double z;

  AccelerometerReadings(this.x, this.y, this.z);
}
