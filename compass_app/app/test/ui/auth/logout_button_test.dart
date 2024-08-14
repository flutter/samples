import 'package:compass_app/data/components/auth/auth_logout_component.dart';
import 'package:compass_app/data/repositories/auth/auth_token_repository.dart';
import 'package:compass_app/data/repositories/itinerary_config/itinerary_config_repository.dart';
import 'package:compass_app/ui/auth/login/view_models/login_viewmodel.dart';
import 'package:compass_app/ui/auth/logout/view_models/logout_viewmodel.dart';
import 'package:compass_app/ui/auth/logout/widgets/logout_button.dart';
import 'package:compass_model/model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';
import 'package:provider/provider.dart';

import '../../../testing/app.dart';
import '../../../testing/fakes/repositories/fake_auth_token_repository.dart';
import '../../../testing/fakes/repositories/fake_itinerary_config_repository.dart';
import '../../../testing/mocks.dart';

void main() {
  group('LogoutButton test', () {
    late MockGoRouter goRouter;
    late FakeAuthTokenRepository fakeAuthTokenRepository;
    late FakeItineraryConfigRepository fakeItineraryConfigRepository;
    late LogoutViewModel viewModel;

    setUp(() {
      goRouter = MockGoRouter();
      fakeAuthTokenRepository = FakeAuthTokenRepository();
      // Setup a token, should be cleared after logout
      fakeAuthTokenRepository.token = 'TOKEN';
      // Setup an ItineraryConfig with some data, should be cleared after logout
      fakeItineraryConfigRepository = FakeItineraryConfigRepository(
          itineraryConfig: ItineraryConfig(continent: 'CONTINENT'));
      viewModel = LogoutViewModel(
        authLogoutComponent: AuthLogoutComponent(
          authTokenRepository: fakeAuthTokenRepository,
          itineraryConfigRepository: fakeItineraryConfigRepository,
        ),
      );
    });

    Future<void> loadScreen(WidgetTester tester) async {
      await testApp(
        tester,
        LogoutButton(viewModel: viewModel),
        goRouter: goRouter,
      );
    }

    testWidgets('should load widget', (WidgetTester tester) async {
      await mockNetworkImages(() async {
        await loadScreen(tester);
        expect(find.byType(LogoutButton), findsOneWidget);
      });
    });

    testWidgets('should perform logout', (WidgetTester tester) async {
      await mockNetworkImages(() async {
        await loadScreen(tester);

        // Repo should have a key
        expect(fakeAuthTokenRepository.token, 'TOKEN');
        // Itinerary config should have data
        expect(
          fakeItineraryConfigRepository.itineraryConfig,
          ItineraryConfig(continent: 'CONTINENT'),
        );

        // // Perform logout
        await tester.tap(find.byType(LogoutButton));
        await tester.pumpAndSettle();

        // Repo should have no key
        expect(fakeAuthTokenRepository.token, null);
        // Itinerary config should be cleared
        expect(
          fakeItineraryConfigRepository.itineraryConfig,
          ItineraryConfig(),
        );
      });
    });
  });
}
