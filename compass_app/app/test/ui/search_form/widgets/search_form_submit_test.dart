import 'package:compass_app/ui/search_form/view_models/search_form_viewmodel.dart';
import 'package:compass_app/ui/search_form/widgets/search_form_submit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';

import '../../../util/fakes/repositories/fake_continent_repository.dart';
import '../../../util/fakes/repositories/fake_itinerary_config_repository.dart';
import '../../../util/mocks.dart';

void main() {
  group('SearchFormSubmit widget tests', () {
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
      await tester.pumpWidget(
        MaterialApp(
          home: InheritedGoRouter(
            goRouter: goRouter,
            child: Scaffold(
              body: SearchFormSubmit(
                viewModel: viewModel,
              ),
            ),
          ),
        ),
      );
    }

    testWidgets('Should be enabled and allow tap', (WidgetTester tester) async {
      await loadWidget(tester);
      expect(find.byType(SearchFormSubmit), findsOneWidget);

      // Tap should not navigate
      await tester.tap(find.byKey(const ValueKey('submit_button')));
      verifyNever(() => goRouter.go(any()));

      // Fill in data
      viewModel.guests = 2;
      viewModel.selectedContinent = 'CONTINENT';
      final DateTimeRange newDateRange = DateTimeRange(
        start: DateTime(2024, 1, 1),
        end: DateTime(2024, 1, 31),
      );
      viewModel.dateRange = newDateRange;
      await tester.pumpAndSettle();

      // Perform search
      await tester.tap(find.byKey(const ValueKey('submit_button')));

      // Should navigate to results screen
      verify(() => goRouter.go('/results')).called(1);
    });
  });
}
