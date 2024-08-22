import 'package:compass_app/data/repositories/auth/auth_repository_remote.dart';
import 'package:compass_app/utils/result.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../testing/fakes/services/fake_api_client.dart';
import '../../../../testing/fakes/services/fake_auth_api_client.dart';
import '../../../../testing/fakes/services/fake_shared_preferences_service.dart';

void main() {
  group('AuthRepositoryRemote tests', () {
    late FakeApiClient apiClient;
    late FakeAuthApiClient authApiClient;
    late FakeSharedPreferencesService sharedPreferencesService;
    late AuthRepositoryRemote repository;

    setUp(() {
      apiClient = FakeApiClient();
      authApiClient = FakeAuthApiClient();
      sharedPreferencesService = FakeSharedPreferencesService();
      repository = AuthRepositoryRemote(
        apiClient: apiClient,
        authApiClient: authApiClient,
        sharedPreferencesService: sharedPreferencesService,
      );
    });

    test('fetch on start, has token', () async {
      // Stored token in shared preferences
      sharedPreferencesService.token = 'TOKEN';
      // No token configured in ApiClient
      apiClient.fakeToken = null;

      // Create an AuthRepository, should perform initial fetch
      final repository = AuthRepositoryRemote(
        apiClient: apiClient,
        authApiClient: authApiClient,
        sharedPreferencesService: sharedPreferencesService,
      );

      final isAuthenticated = await repository.isAuthenticated;

      // True because Token is SharedPreferences
      expect(isAuthenticated, isTrue);

      // Token was fetched
      expect(apiClient.fakeToken, 'TOKEN');
    });

    test('fetch on start, no token', () async {
      // Stored token in shared preferences
      sharedPreferencesService.token = null;
      // No token configured in ApiClient
      apiClient.fakeToken = null;

      // Create an AuthRepository, should perform initial fetch
      final repository = AuthRepositoryRemote(
        apiClient: apiClient,
        authApiClient: authApiClient,
        sharedPreferencesService: sharedPreferencesService,
      );

      final isAuthenticated = await repository.isAuthenticated;

      // True because Token is SharedPreferences
      expect(isAuthenticated, isFalse);

      // Token was not fetched
      expect(apiClient.fakeToken, null);
    });

    test('perform login', () async {
      final result = await repository.login(
        email: 'EMAIL',
        password: 'PASSWORD',
      );
      expect(result, isA<Ok>());
      expect(apiClient.fakeToken, 'TOKEN');
      expect(sharedPreferencesService.token, 'TOKEN');
    });

    test('perform logout', () async {
      // logged in status
      sharedPreferencesService.token = 'TOKEN';
      apiClient.token = 'TOKEN';

      final result = await repository.logout();
      expect(result, isA<Ok>());
      expect(apiClient.fakeToken, null);
      expect(sharedPreferencesService.token, null);
    });
  });
}
