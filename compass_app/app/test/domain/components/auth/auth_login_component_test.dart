import 'package:compass_app/domain/components/auth/auth_login_component.dart';
import 'package:compass_app/data/services/api_client.dart';
import 'package:compass_app/utils/result.dart';
import 'package:compass_model/model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../testing/fakes/repositories/fake_auth_token_repository.dart';
import '../../../../testing/fakes/services/fake_api_client.dart';

void main() {
  group('AuthLoginComponent test', () {
    late AuthLoginComponent authLoginComponent;
    late FakeAuthTokenRepository authTokenRepository;
    late ApiClient apiClient;

    setUp(() {
      authTokenRepository = FakeAuthTokenRepository();
      apiClient = _ApiClient();
      authLoginComponent = AuthLoginComponent(
        authTokenRepository: authTokenRepository,
        apiClient: apiClient,
      );
    });

    test('should perform login', () async {
      // Pass valid email and password
      final result = await authLoginComponent.login(
        email: 'EMAIL',
        password: 'PASSWORD',
      );
      // Got good response
      expect(result, isA<Ok<void>>());
      expect(authTokenRepository.token, 'TOKEN');
    });

    test('should fail to login', () async {
      // Pass wrong email and password
      final result = await authLoginComponent.login(
        email: 'WRONG',
        password: 'WRONG',
      );
      // Got bad response
      expect(result, isA<Error<void>>());
      expect(result.asError.error.toString(), 'Exception: ERROR');
      expect(authTokenRepository.token, null);
    });
  });
}

class _ApiClient extends FakeApiClient {
  @override
  Future<Result<LoginResponse>> login(LoginRequest loginRequest) async {
    if (loginRequest.email == 'EMAIL' && loginRequest.password == 'PASSWORD') {
      return Result.ok(const LoginResponse(token: 'TOKEN', userId: '1234'));
    } else {
      return Result.error(Exception('ERROR'));
    }
  }
}
