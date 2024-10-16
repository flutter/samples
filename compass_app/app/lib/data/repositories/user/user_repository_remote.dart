// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import '../../../domain/models/user/user.dart';
import '../../../utils/result.dart';
import '../../services/api/api_client.dart';
import '../../services/api/model/user/user_api_model.dart';
import 'user_repository.dart';

class UserRepositoryRemote implements UserRepository {
  UserRepositoryRemote({
    required ApiClient apiClient,
  }) : _apiClient = apiClient;

  final ApiClient _apiClient;

  User? _cachedData;

  @override
  Future<Result<User>> getUser() async {
    if (_cachedData != null) {
      return Future.value(Result.ok(_cachedData!));
    }

    final result = await _apiClient.getUser();
    switch (result) {
      case Ok<UserApiModel>():
        final user = User(
          name: result.value.name,
          picture: result.value.picture,
        );
        _cachedData = user;
        return Result.ok(user);
      case Error<UserApiModel>():
        return Result.error(result.error);
    }
  }
}
