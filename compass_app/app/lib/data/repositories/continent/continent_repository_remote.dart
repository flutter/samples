// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import '../../../domain/models/continent/continent.dart';
import '../../../utils/result.dart';
import '../../services/api/api_client.dart';
import 'continent_repository.dart';

/// Remote data source for [Continent].
/// Implements basic local caching.
/// See: https://docs.flutter.dev/get-started/fwe/local-caching
class ContinentRepositoryRemote implements ContinentRepository {
  ContinentRepositoryRemote({
    required ApiClient apiClient,
  }) : _apiClient = apiClient;

  final ApiClient _apiClient;

  List<Continent>? _cachedData;

  @override
  Future<Result<List<Continent>>> getContinents() async {
    if (_cachedData == null) {
      // No cached data, request continents
      final result = await _apiClient.getContinents();
      if (result is Ok<List<Continent>>) {
        // Store value if result Ok
        _cachedData = result.value;
      }
      return result;
    } else {
      // Return cached data if available
      return Result.ok(_cachedData!);
    }
  }
}
