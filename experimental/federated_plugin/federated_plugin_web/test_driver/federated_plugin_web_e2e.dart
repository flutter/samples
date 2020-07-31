// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:html';

import 'package:e2e/e2e.dart';
import 'package:federated_plugin_web/federated_plugin_web.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

const kLatitude = 4;
const kLongitude = 3;

class WindowMock extends Mock implements Window {
  @override
  Navigator get navigator => NavigatorMock();
}

class NavigatorMock extends Mock implements Navigator {
  @override
  Geolocation get geolocation => GeoLocationMock();
}

class GeoLocationMock extends Mock implements Geolocation {
  @override
  Future<Geoposition> getCurrentPosition(
      {bool enableHighAccuracy, Duration timeout, Duration maximumAge}) async {
    return GeoPositionMock();
  }
}

class GeoPositionMock extends Mock implements Geoposition {
  @override
  Coordinates get coords => MockCoordinates();
}

class MockCoordinates extends Mock implements Coordinates {
  @override
  num get latitude => kLatitude;

  @override
  num get longitude => kLongitude;
}

void main() {
  E2EWidgetsFlutterBinding.ensureInitialized();

  group('FederatedPlugin test', () {
    final windowMock = WindowMock();

    testWidgets('getLocation Method', (tester) async {
      final federatedPlugin = FederatedPlugin(window: windowMock);
      final location = await federatedPlugin.getLocation();

      // Verify the values of Location.longitude and Location.latitude.
      expect(location.longitude, kLongitude);
      expect(location.latitude, kLatitude);
    });
  });
}
