import 'package:compass_app/routing/queries/search_query_parameters.dart';
import 'package:compass_app/ui/results/view_models/results_viewmodel.dart';
import 'package:compass_app/ui/results/widgets/results_screen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

import '../../util/fakes/repositories/fake_destination_repository.dart';
import '../../util/mocks.dart';

void main() {
  group('ResultsScreen widget tests', () {
    late MockGoRouter goRouter;
    late ResultsViewModel viewModel;

    setUp(() {
      viewModel = ResultsViewModel(
        destinationRepository: FakeDestinationRepository(),
        queryParameters: SearchQueryParameters.fromQueryParameters({
          'continent': 'Europe',
          'checkIn': '2024-01-01',
          'checkOut': '2024-01-31',
          'guests': '2',
        }),
      )..search();
      goRouter = MockGoRouter();
    });

    // Build and render the ResultsScreen widget
    Future<void> loadScreen(WidgetTester tester) async {
      // Load some data
      await tester.pumpWidget(
        MaterialApp(
          home: InheritedGoRouter(
            goRouter: goRouter,
            child: ResultsScreen(
              viewModel: viewModel,
            ),
          ),
        ),
      );
    }

    testWidgets('should load screen', (WidgetTester tester) async {
      await mockNetworkImages(() async {
        await loadScreen(tester);
        expect(find.byType(ResultsScreen), findsOneWidget);
      });
    });

    testWidgets('should display destination', (WidgetTester tester) async {
      await mockNetworkImages(() async {
        await loadScreen(tester);

        // Wait for list to load
        await tester.pumpAndSettle();

        // Note: Name is converted to uppercase
        expect(find.text('NAME1'), findsOneWidget);
        expect(find.text('tags1'), findsOneWidget);
      });
    });

    testWidgets('should tap and navigate to activities',
        (WidgetTester tester) async {
      await mockNetworkImages(() async {
        await loadScreen(tester);

        // Wait for list to load
        await tester.pumpAndSettle();

        await tester.tap(find.text('NAME1'));

        verify(() => goRouter.go(
                '/activities?continent=Europe&checkIn=2024-01-01&checkOut=2024-01-31&guests=2&destination=ref1'))
            .called(1);
      });
    });
  });
}
