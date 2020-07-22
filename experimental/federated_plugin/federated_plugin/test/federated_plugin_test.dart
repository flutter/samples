// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:federated_plugin/federated_plugin.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('Federated Plugin Test', () {
    final location = Location(latitude: 131.0, longitude: 221.0);
    MethodChannel('location').setMockMethodCallHandler((call) async {
      if (call.method == 'getLocation') {
        return [location.longitude, location.latitude];
      }
    });

    test('getLocation method test', () async {
      final result = await getLocation();
      expect(result.longitude, location.longitude);
      expect(result.latitude, location.latitude);
    });
  });
}
