import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

import '../../../utils/result.dart';
import '../../repositories/auth/auth_token_repository.dart';

/// Exposes the signed-in state of the user.
class AuthSignedInComponent extends ChangeNotifier {
  AuthSignedInComponent({
    required AuthTokenRepository authTokenRepository,
  }) : _authTokenRepository = authTokenRepository {
    _authTokenRepository.addListener(_onTokenChanged);
  }

  final AuthTokenRepository _authTokenRepository;
  final _log = Logger('AuthSignedInComponent');

  Future<bool> isSignedIn() async {
    final result = await _authTokenRepository.getToken();
    return result is Ok<String?> && result.value != null;
  }

  @override
  void dispose() {
    _authTokenRepository.removeListener(_onTokenChanged);
    super.dispose();
  }

  void _onTokenChanged() {
    _log.fine('Signed-In State changed!');
    notifyListeners();
  }
}
