import 'package:logging/logging.dart';

import '../../repositories/auth/auth_token_repository.dart';

class AuthLogoutComponent {
  AuthLogoutComponent({
    required AuthTokenRepository authTokenRepository,
  }) : _authTokenRepository = authTokenRepository;

  final AuthTokenRepository _authTokenRepository;
  final _log = Logger('AuthLogoutComponent');

  Future<void> logout() async {
    _log.info('User logged out');
    await _authTokenRepository.saveToken(null);
  }
}
