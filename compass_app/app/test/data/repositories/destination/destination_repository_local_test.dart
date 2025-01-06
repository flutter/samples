// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:compass_app/data/repositories/destination/destination_repository_local.dart';
import 'package:compass_app/data/services/local/local_data_service.dart';
import 'package:compass_app/utils/result.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../testing/utils/result.dart';

void main() {
  group('DestinationRepositoryLocal tests', () {
    // To load assets
    TestWidgetsFlutterBinding.ensureInitialized();

    final repository = DestinationRepositoryLocal(
      localDataService: LocalDataService(),
    );

    test('should load and parse', () async {
      // Should load the json and parse it
      final result = await repository.getDestinations();
      expect(result, isA<Ok>());

      // Check that the list is complete
      final list = result.asOk.value;
      expect(list.length, 137);

      // Check first item
      final destination = list.first;
      expect(destination.name, 'Alaska');
    });
  });
}
