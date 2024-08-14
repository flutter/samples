import 'package:compass_app/data/components/auth/auth_logout_component.dart';
import 'package:compass_app/ui/search_form/view_models/search_form_viewmodel.dart';
import 'package:compass_app/ui/search_form/widgets/search_form_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:provider/provider.dart';

import '../../../../testing/app.dart';
import '../../../../testing/fakes/repositories/fake_auth_token_repository.dart';
import '../../../../testing/fakes/repositories/fake_continent_repository.dart';
import '../../../../testing/fakes/repositories/fake_itinerary_config_repository.dart';
import '../../../../testing/mocks.dart';

void main() {
  group('SearchFormScreen widget tests', () {
    late SearchFormViewModel viewModel;
    late MockGoRouter goRouter;

    setUp(() {
      viewModel = SearchFormViewModel(
        continentRepository: FakeContinentRepository(),
        itineraryConfigRepository: FakeItineraryConfigRepository(),
      );
      goRouter = MockGoRouter();
    });

    loadWidget(WidgetTester tester) async {
      await testApp(
        tester,
        Provider.value(
          value: AuthLogoutComponent(
            authTokenRepository: FakeAuthTokenRepository(),
            itineraryConfigRepository: FakeItineraryConfigRepository(),
          ),
          child: SearchFormScreen(viewModel: viewModel),
        ),
        goRouter: goRouter,
      );
    }

    testWidgets('Should fill form and perform search',
        (WidgetTester tester) async {
      await loadWidget(tester);
      expect(find.byType(SearchFormScreen), findsOneWidget);

      // Select continent
      await tester.tap(find.text('CONTINENT'), warnIfMissed: false);

      // Select date
      viewModel.dateRange = DateTimeRange(
          start: DateTime(2024, 6, 12), end: DateTime(2024, 7, 23));

      // Select guests
      await tester.tap(find.byKey(const ValueKey('add_guests')));

      // Refresh screen state
      await tester.pumpAndSettle();

      // Perform search
      await tester.tap(find.byKey(const ValueKey('submit_button')));

      // Should navigate to results screen
      verify(() => goRouter.go('/results')).called(1);
    });
  });
}
