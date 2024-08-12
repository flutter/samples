import 'package:logging/logging.dart';

import '../../utils/result.dart';
import '../repositories/auth/auth_token_repository.dart';

class AuthComponent {
  AuthComponent({
    required AuthTokenRepository authTokenRepository,
  }) : _authTokenRepository = authTokenRepository;

  final AuthTokenRepository _authTokenRepository;
  final _log = Logger('AuthComponent');

  Future<bool> isSignedIn() async {
    final token = await authToken();
    return token != null;
  }

  Future<String?> authToken() async {
    final result = await _authTokenRepository.getToken();
    switch (result) {
      case Ok<String?>():
        _log.fine('Fetched auth token: ${result.value}');
        return result.value;
      case Error<String?>():
        _log.warning('Error fetching auth token: ${result.error}');
        return null;
    }
  }

  Future<void> logout() async {
    final result = await _authTokenRepository.saveToken(null);
    switch (result) {
      case Ok<void>():
        _log.fine('Logged out');
      case Error<void>():
        _log.warning('Error logging out: ${result.error}');
    }
  }

  Future<Result<void>> login({
    required String email,
    required String password,
  }) async {
    Future.delayed(Duration(seconds: 1));
    // TODO
    return Result.ok(null);
  }
}
