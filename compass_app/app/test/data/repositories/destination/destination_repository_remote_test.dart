// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:compass_app/data/repositories/destination/destination_repository.dart';
import 'package:compass_app/data/repositories/destination/destination_repository_remote.dart';
import 'package:compass_app/utils/result.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../testing/fakes/services/fake_api_client.dart';
import '../../../../testing/utils/result.dart';

void main() {
  group('DestinationRepositoryRemote tests', () {
    late FakeApiClient apiClient;
    late DestinationRepository repository;

    setUp(() {
      apiClient = FakeApiClient();
      repository = DestinationRepositoryRemote(apiClient: apiClient);
    });

    test('should get destinations', () async {
      final result = await repository.getDestinations();
      expect(result, isA<Ok>());

      final list = result.asOk.value;
      expect(list.length, 2);

      final destination = list.first;
      expect(destination.name, 'name1');

      // Only one request happened
      expect(apiClient.requestCount, 1);
    });

    test('should get destinations from cache', () async {
      // Request destination once
      var result = await repository.getDestinations();
      expect(result, isA<Ok>());

      // Request destination another time
      result = await repository.getDestinations();
      expect(result, isA<Ok>());

      // Only one request happened
      expect(apiClient.requestCount, 1);
    });
  });
}
