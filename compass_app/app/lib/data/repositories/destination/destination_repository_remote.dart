// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import '../../../domain/models/destination/destination.dart';
import '../../../utils/result.dart';
import '../../services/api/api_client.dart';
import 'destination_repository.dart';

/// Remote data source for [Destination].
/// Implements basic local caching.
/// See: https://docs.flutter.dev/get-started/fwe/local-caching
class DestinationRepositoryRemote implements DestinationRepository {
  DestinationRepositoryRemote({
    required ApiClient apiClient,
  }) : _apiClient = apiClient;

  final ApiClient _apiClient;

  List<Destination>? _cachedData;

  @override
  Future<Result<List<Destination>>> getDestinations() async {
    if (_cachedData == null) {
      // No cached data, request destinations
      final result = await _apiClient.getDestinations();
      if (result is Ok<List<Destination>>) {
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
