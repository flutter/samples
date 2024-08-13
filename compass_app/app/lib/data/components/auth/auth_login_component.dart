import 'package:compass_model/model.dart';
import 'package:logging/logging.dart';

import '../../../utils/result.dart';
import '../../repositories/auth/auth_token_repository.dart';
import '../../services/api_client.dart';

class AuthLoginComponent {
  AuthLoginComponent({
    required AuthTokenRepository authTokenRepository,
    required ApiClient apiClient,
  })  : _authTokenRepository = authTokenRepository,
        _apiClient = apiClient;

  final AuthTokenRepository _authTokenRepository;
  final ApiClient _apiClient;
  final _log = Logger('AuthLoginComponent');

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
