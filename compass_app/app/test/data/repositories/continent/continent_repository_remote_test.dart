// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:compass_app/data/repositories/continent/continent_repository.dart';
import 'package:compass_app/data/repositories/continent/continent_repository_remote.dart';
import 'package:compass_app/utils/result.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../testing/fakes/services/fake_api_client.dart';
import '../../../../testing/utils/result.dart';

void main() {
  group('ContinentRepositoryRemote tests', () {
    late FakeApiClient apiClient;
    late ContinentRepository repository;

    setUp(() {
      apiClient = FakeApiClient();
      repository = ContinentRepositoryRemote(apiClient: apiClient);
    });

    test('should get continents', () async {
      final result = await repository.getContinents();
      expect(result, isA<Ok>());

      final list = result.asOk.value;
      expect(list.length, 3);

      final destination = list.first;
      expect(destination.name, 'CONTINENT');

      // Only one request happened
      expect(apiClient.requestCount, 1);
    });

    test('should get continents from cache', () async {
      // Request continents once
      var result = await repository.getContinents();
      expect(result, isA<Ok>());

      // Request continents another time
      result = await repository.getContinents();
      expect(result, isA<Ok>());

      // Only one request happened
      expect(apiClient.requestCount, 1);
    });
  });
}
