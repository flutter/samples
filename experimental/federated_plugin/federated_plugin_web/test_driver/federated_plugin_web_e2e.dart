// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:html';

import 'package:e2e/e2e.dart';
import 'package:federated_plugin_web/federated_plugin_web.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

const kBatteryLevel = 0.49;

class NavigatorMock extends Mock implements Navigator {}

class BatteryManagerMock extends Mock implements BatteryManager {
  @override
  num get level => kBatteryLevel;
}

void main() {
  E2EWidgetsFlutterBinding.ensureInitialized();

  group('FederatedPlugin test', () {
    final navigatorMock = NavigatorMock();

    setUp(() {
      when(navigatorMock.getBattery())
          .thenAnswer((realInvocation) async => BatteryManagerMock());
    });

    testWidgets('getBatteryLevel Method', (tester) async {
      final federatedPlugin = FederatedPlugin(navigator: navigatorMock);
      final batteryLevel = await federatedPlugin.getBatteryLevel();

      // Verify that getBattery was called.
      verify(navigatorMock.getBattery());

      // Verify the battery level.
      expect(batteryLevel, kBatteryLevel * 100);
    });
  });
}
