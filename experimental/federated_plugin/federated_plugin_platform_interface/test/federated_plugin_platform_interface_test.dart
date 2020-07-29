// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:federated_plugin_platform_interface/location_method_channel.dart';
import 'package:federated_plugin_platform_interface/location_model.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('MethodChannel test', () {
    final location = Location(latitude: 1.0, longitude: 2.0);
    MethodChannel('location').setMockMethodCallHandler((call) async {
      if (call.method == 'getLocation') {
        return [location.longitude, location.latitude];
      }
    });

    test('getLocation method test', () async {
      final locationMethodChannel = LocationMethodChannel();
      final result = await locationMethodChannel.getLocation();
      expect(result.longitude, location.longitude);
      expect(result.latitude, result.latitude);
    });
  });
}
