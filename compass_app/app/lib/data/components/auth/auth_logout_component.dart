import 'package:compass_model/model.dart';
import 'package:logging/logging.dart';

import '../../repositories/auth/auth_token_repository.dart';
import '../../repositories/itinerary_config/itinerary_config_repository.dart';

/// Performs user logout.
class AuthLogoutComponent {
  AuthLogoutComponent({
    required AuthTokenRepository authTokenRepository,
    required ItineraryConfigRepository itineraryConfigRepository,
  })  : _authTokenRepository = authTokenRepository,
        _itineraryConfigRepository = itineraryConfigRepository;

  final AuthTokenRepository _authTokenRepository;
  final ItineraryConfigRepository _itineraryConfigRepository;
  final _log = Logger('AuthLogoutComponent');

  /// Perform user logout.
  ///
  /// 1. Clears the stored ItineraryConfig.
  /// 2. Clears the stored auth token.
  ///
  /// GoRouter will automatically redirect the user to /login
  Future<void> logout() async {
    _log.info('User logged out');

    // Clear stored ItineraryConfig
    await _itineraryConfigRepository.setItineraryConfig(const ItineraryConfig());

    // Clear stored auth token
    await _authTokenRepository.saveToken(null);
  }
}
