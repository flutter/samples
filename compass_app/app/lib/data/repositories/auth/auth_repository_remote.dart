import 'package:compass_model/model.dart';
import 'package:logging/logging.dart';

import '../../../utils/result.dart';
import '../../services/api_client.dart';
import '../../services/auth_api_client.dart';
import '../../services/shared_preferences_service.dart';
import 'auth_repository.dart';

class AuthRepositoryRemote extends AuthRepository {
  AuthRepositoryRemote({
    required ApiClient apiClient,
    required AuthApiClient authApiClient,
    required SharedPreferencesService sharedPreferencesService,
  })  : _apiClient = apiClient,
        _authApiClient = authApiClient,
        _sharedPreferencesService = sharedPreferencesService {
    _fetch();
  }

  final AuthApiClient _authApiClient;
  final ApiClient _apiClient;
  final SharedPreferencesService _sharedPreferencesService;

  String? _token;
  final _log = Logger('AuthRepositoryRemote');

  Future<void> _fetch() async {
    final result = await _sharedPreferencesService.fetchToken();
    switch (result) {
      case Ok<String?>():
        _token = result.value;
      case Error<String?>():
        _log.severe(
          'Failed to fech Token from SharedPreferences',
          result.error,
        );
    }
  }

  @override
  Future<bool> get isAuthenticated async {
    // Token is cached, return true
    if (_token != null) {
      return true;
    }
    // No token cached, fetch from storage
    await _fetch();
    return _token != null;
  }

  @override
  Future<Result<void>> login({
    required String email,
    required String password,
  }) async {
    try {
      final result = await _authApiClient.login(
        LoginRequest(
          email: email,
          password: password,
        ),
      );
      switch (result) {
        case Ok<LoginResponse>():
          _log.info('User logged int');
          // Keep token in cache
          _token = result.value.token;
          // Configure ApiClient token
          _apiClient.token = _token;
          // Store in Shared preferences
          return await _sharedPreferencesService.saveToken(result.value.token);
        case Error<LoginResponse>():
          _log.warning('Error logging in: ${result.error}');
          return Result.error(result.error);
      }
    } finally {
      notifyListeners();
    }
  }

  @override
  Future<Result<void>> logout() async {
    _log.info('User logged out');
    try {
      // Clear stored ItineraryConfig
      // var result = await _itineraryConfigRepository
      //     .setItineraryConfig(const ItineraryConfig());
      // if (result is Error<void>) {
      //   _log.severe('Failed to clear stored ItineraryConfig');
      //   return result;
      // }

      // Clear stored auth token
      final result = await _sharedPreferencesService.saveToken(null);
      if (result is Error<void>) {
        _log.severe('Failed to clear stored auth token');
      }
      _token = null;
      return result;
    } finally {
      notifyListeners();
    }
  }
}
