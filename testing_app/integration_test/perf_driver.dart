// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:developer';

import 'package:integration_test/integration_test_driver.dart';

Future<void> main() {
  return integrationDriver(
    responseDataCallback: (data) async {
      // If the tests reported any data, save it to the disk.
      if (data != null) {
        for (var entry in data.entries) {
          log('Writing ${entry.key} to the disk.');
          // Default storage destination is the 'build' directory.
          await writeResponseData(
            entry.value as Map<String, dynamic>,
            testOutputFilename: entry.key,
          );
        }
      }
    },
  );
}
