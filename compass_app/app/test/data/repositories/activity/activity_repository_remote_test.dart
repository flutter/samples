// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:compass_app/data/repositories/activity/activity_repository.dart';
import 'package:compass_app/data/repositories/activity/activity_repository_remote.dart';
import 'package:compass_app/utils/result.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../testing/fakes/services/fake_api_client.dart';
import '../../../../testing/utils/result.dart';

void main() {
  group('ActivityRepositoryRemote tests', () {
    late FakeApiClient apiClient;
    late ActivityRepository repository;

    setUp(() {
      apiClient = FakeApiClient();
      repository = ActivityRepositoryRemote(apiClient: apiClient);
    });

    test('should get activities for destination', () async {
      final result = await repository.getByDestination('alaska');
      expect(result, isA<Ok>());

      final list = result.asOk.value;
      expect(list.length, 1);

      final destination = list.first;
      expect(destination.name, 'Glacier Trekking and Ice Climbing');

      // Only one request happened
      expect(apiClient.requestCount, 1);
    });

    test('should get destinations from cache', () async {
      // Request destination once
      var result = await repository.getByDestination('alaska');
      expect(result, isA<Ok>());

      // Request destination another time
      result = await repository.getByDestination('alaska');
      expect(result, isA<Ok>());

      // Only one request happened
      expect(apiClient.requestCount, 1);
    });
  });
}
