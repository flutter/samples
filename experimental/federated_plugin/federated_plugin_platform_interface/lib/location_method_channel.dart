// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:federated_plugin_platform_interface/federated_plugin_platform_interface.dart';
import 'package:federated_plugin_platform_interface/location_model.dart';
import 'package:flutter/services.dart';

/// Implements [FederatedPluginInterface] using [MethodChannel] to fetch
/// location from platform.
class LocationMethodChannel extends FederatedPluginInterface {
  static const MethodChannel _methodChannel = MethodChannel('location');

  @override
  Future<Location> getLocation() async {
    final result =
        await _methodChannel.invokeMethod<List<dynamic>>('getLocation');

    return Location(
      longitude: result.first as double,
      latitude: result.last as double,
    );
  }
}
