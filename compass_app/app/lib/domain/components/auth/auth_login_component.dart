import 'package:compass_model/model.dart';
import 'package:logging/logging.dart';

import '../../../data/services/auth_api_client.dart';
import '../../../utils/result.dart';
import '../../../data/repositories/auth/auth_token_repository.dart';

/// Performs user login.
class AuthLoginComponent {
  AuthLoginComponent({
    required AuthTokenRepository authTokenRepository,
    required AuthApiClient apiClient,
  })  : _authTokenRepository = authTokenRepository,
        _apiClient = apiClient;

  final AuthTokenRepository _authTokenRepository;
  final AuthApiClient _apiClient;
  final _log = Logger('AuthLoginComponent');

  /// Login with username and password.
  /// Performs login with the server and stores the obtained auth token.
  Future<Result<void>> login({
    required String email,
    required String password,
  }) async {
    final result = await _apiClient.login(
      LoginRequest(
        email: email,
        password: password,
      ),
    );
    switch (result) {
      case Ok<LoginResponse>():
        _log.info('User logged int');
        return await _authTokenRepository.saveToken(result.value.token);
      case Error<LoginResponse>():
        _log.warning('Error logging in: ${result.error}');
        return Result.error(result.error);
    }
  }
}
