// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:e2e/e2e_driver.dart' as driver;

Future<void> main() => driver.e2eDriver(responseDataCallback: (data) async {
      await driver.writeResponseData(
        data['scrolling'] as Map<String, dynamic>,
        // This result is saved to `build/scrolling.json`.
        testOutputFilename: 'scrolling',
      );

      await driver.writeResponseData(
        data['favorites_operations'] as Map<String, dynamic>,
        // This result is saved to `build/favorites_operations.json`.
        testOutputFilename: 'favorites_operations',
      );
    });
