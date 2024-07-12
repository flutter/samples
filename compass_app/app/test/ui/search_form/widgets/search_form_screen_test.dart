import 'package:compass_app/ui/search_form/view_models/search_form_viewmodel.dart';
import 'package:compass_app/ui/search_form/widgets/search_form_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

import '../../../util/mocks.dart';
import '../../../util/fakes/repositories/fake_continent_repository.dart';

void main() {
  group('SearchFormScreen widget tests', () {
    late SearchFormViewModel viewModel;
    late MockGoRouter goRouter;

    setUp(() {
      viewModel = SearchFormViewModel(
        continentRepository: FakeContinentRepository(),
      );
      goRouter = MockGoRouter();
    });

    loadWidget(WidgetTester tester) async {
      await mockNetworkImages(() async {
        await tester.pumpWidget(
          MaterialApp(
            home: InheritedGoRouter(
              goRouter: goRouter,
              child: Scaffold(
                body: SearchFormScreen(
                  viewModel: viewModel,
                ),
              ),
            ),
          ),
        );
      });
    }

    testWidgets('Should fill form and perform search', (WidgetTester tester) async {
      await loadWidget(tester);
      expect(find.byType(SearchFormScreen), findsOneWidget);

      // Select continent
      await tester.tap(find.text('CONTINENT'), warnIfMissed: false);

      // Select date
      viewModel.dateRange = DateTimeRange(start: DateTime(2024, 6, 12), end: DateTime(2024, 7, 23));

      // Select guests
      await tester.tap(find.byKey(const ValueKey('add_guests')));

      // Refresh screen state
      await tester.pumpAndSettle();

      // Perform search
      await tester.tap(find.byKey(const ValueKey('submit_button')));

      // Should navigate to results screen
      verify(() => goRouter.go('/results?continent=CONTINENT&checkIn=2024-06-12&checkOut=2024-07-23&guests=1')).called(1);
    });
  });
}
