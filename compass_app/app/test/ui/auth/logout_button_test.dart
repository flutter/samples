// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:compass_app/domain/models/itinerary_config/itinerary_config.dart';
import 'package:compass_app/ui/auth/logout/view_models/logout_viewmodel.dart';
import 'package:compass_app/ui/auth/logout/widgets/logout_button.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

import '../../../testing/app.dart';
import '../../../testing/fakes/repositories/fake_auth_repository.dart';
import '../../../testing/fakes/repositories/fake_itinerary_config_repository.dart';
import '../../../testing/mocks.dart';

void main() {
  group('LogoutButton test', () {
    late MockGoRouter goRouter;
    late FakeAuthRepository fakeAuthRepository;
    late FakeItineraryConfigRepository fakeItineraryConfigRepository;
    late LogoutViewModel viewModel;

    setUp(() {
      goRouter = MockGoRouter();
      fakeAuthRepository = FakeAuthRepository();
      // Setup a token, should be cleared after logout
      fakeAuthRepository.token = 'TOKEN';
      // Setup an ItineraryConfig with some data, should be cleared after logout
      fakeItineraryConfigRepository = FakeItineraryConfigRepository(
          itineraryConfig: const ItineraryConfig(continent: 'CONTINENT'));
      viewModel = LogoutViewModel(
        authRepository: fakeAuthRepository,
        itineraryConfigRepository: fakeItineraryConfigRepository,
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
        expect(fakeAuthRepository.token, 'TOKEN');
        // Itinerary config should have data
        expect(
          fakeItineraryConfigRepository.itineraryConfig,
          const ItineraryConfig(continent: 'CONTINENT'),
        );

        // // Perform logout
        await tester.tap(find.byType(LogoutButton));
        await tester.pumpAndSettle();

        // Repo should have no key
        expect(fakeAuthRepository.token, null);
        // Itinerary config should be cleared
        expect(
          fakeItineraryConfigRepository.itineraryConfig,
          const ItineraryConfig(),
        );
      });
    });
  });
}
