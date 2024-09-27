// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import '../../../domain/models/continent/continent.dart';
import '../../../utils/result.dart';
import '../../services/local/local_data_service.dart';
import 'continent_repository.dart';

/// Local data source with all possible continents.
class ContinentRepositoryLocal implements ContinentRepository {
  ContinentRepositoryLocal({
    required LocalDataService localDataService,
  }) : _localDataService = localDataService;

  final LocalDataService _localDataService;

  @override
  Future<Result<List<Continent>>> getContinents() async {
    return Future.value(Result.ok(_localDataService.getContinents()));
  }
}
