// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import '../../../domain/models/destination/destination.dart';
import '../../../utils/result.dart';
import '../../services/local/local_data_service.dart';
import 'destination_repository.dart';

/// Local implementation of DestinationRepository
/// Uses data from assets folder
class DestinationRepositoryLocal implements DestinationRepository {
  DestinationRepositoryLocal({
    required LocalDataService localDataService,
  }) : _localDataService = localDataService;

  final LocalDataService _localDataService;

  /// Obtain list of destinations from local assets
  @override
  Future<Result<List<Destination>>> getDestinations() async {
    try {
      return Result.ok(await _localDataService.getDestinations());
    } on Exception catch (error) {
      return Result.error(error);
    }
  }
}
