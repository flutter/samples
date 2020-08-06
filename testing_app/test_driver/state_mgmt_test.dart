// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Testing App State Management Tests', () {
    FlutterDriver driver;

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      if (driver != null) {
        await driver.close();
      }
    });

    test('Verifying add method', () async {
      /// This function is used for communication between
      /// the driver and the application.
      /// The [enableFlutterDriverExtension] call must have a [DataHandler]
      /// callback to handle these requests.
      /// We are currently using it to perform operations on the provider.
      /// Specifically, send 'ADD' command to the handler in this case.
      await driver.requestData('ADD');

      // Check if the new item appears in the list.
      await driver.waitFor(find.text('Item 30'));
    });

    test('Verifying remove method', () async {
      /// Perform remove operation on the provider using the [DataHandler].
      await driver.requestData('REMOVE');

      // Verify if it disappears.
      await driver.waitForAbsent(find.text('Item 30'));
    });
  });
}
