// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:compass_app/data/services/api/auth_api_client.dart';
import 'package:compass_app/data/services/api/model/login_request/login_request.dart';
import 'package:compass_app/data/services/api/model/login_response/login_response.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../testing/mocks.dart';
import '../../../../testing/utils/result.dart';

void main() {
  group('AuthApiClient', () {
    late MockHttpClient mockHttpClient;
    late AuthApiClient apiClient;

    setUp(() {
      mockHttpClient = MockHttpClient();
      apiClient = AuthApiClient(clientFactory: () => mockHttpClient);
    });

    test('should post login', () async {
      const loginResponse = LoginResponse(
        token: 'TOKEN',
        userId: '123',
      );
      mockHttpClient.mockPost(
        '/login',
        loginResponse,
        200,
      );
      final result = await apiClient.login(
        const LoginRequest(
          email: 'EMAIL',
          password: 'PASSWORD',
        ),
      );
      expect(result.asOk.value, loginResponse);
    });
  });
}
