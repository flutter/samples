// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:compass_app/data/services/api/auth_api_client.dart';
import 'package:compass_app/data/services/api/model/login_request/login_request.dart';
import 'package:compass_app/data/services/api/model/login_response/login_response.dart';
import 'package:compass_app/utils/result.dart';

class FakeAuthApiClient implements AuthApiClient {
  @override
  Future<Result<LoginResponse>> login(LoginRequest loginRequest) async {
    if (loginRequest.email == 'EMAIL' && loginRequest.password == 'PASSWORD') {
      return const Result.ok(LoginResponse(token: 'TOKEN', userId: '123'));
    }
    return Result.error(Exception('ERROR!'));
  }
}
