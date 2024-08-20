import 'package:compass_app/domain/components/auth/auth_logout_component.dart';
import 'package:compass_model/model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../testing/fakes/repositories/fake_auth_token_repository.dart';
import '../../../../testing/fakes/repositories/fake_itinerary_config_repository.dart';

void main() {
  group('AuthLogoutComponent test', () {
    late AuthLogoutComponent authLogoutComponent;
    late FakeAuthTokenRepository authTokenRepository;
    late FakeItineraryConfigRepository itineraryConfigRepository;

    setUp(() {
      authTokenRepository = FakeAuthTokenRepository();
      itineraryConfigRepository = FakeItineraryConfigRepository(
        itineraryConfig: const ItineraryConfig(continent: 'CONTINENT'),
      );
      authLogoutComponent = AuthLogoutComponent(
        authTokenRepository: authTokenRepository,
        itineraryConfigRepository: itineraryConfigRepository,
      );
    });

    test('should perform logout', () async {
      await authLogoutComponent.logout();
      // Token should be removed
      expect(authTokenRepository.token, null);
      // Itinerary config should be cleared
      expect(
        itineraryConfigRepository.itineraryConfig,
        const ItineraryConfig(),
      );
    });
  });
}
