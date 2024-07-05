import 'package:compass_app/ui/results/presentation/results_screen.dart';
import 'package:compass_app/ui/results/presentation/results_viewmodel.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';
import 'package:provider/provider.dart';

import 'fake_destination_repository.dart';

void main() {
  // TODO: Add more cases
  group('ResultsScreen widget tests', () {
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
  });
}

// Build and render the ResultsScreen widget
Future<void> loadScreen(WidgetTester tester) async {
  // Wrap the widget with a ChangeNotifierProvider containing
  // a ResultsViewModel with a fake SearchDestinationUsecase
  await tester.pumpWidget(
    ChangeNotifierProvider(
      create: (_) => ResultsViewModel(
        destinationRepository: FakeDestinationRepository(),
      ),
      child: const MaterialApp(
        home: ResultsScreen(),
      ),
    ),
  );
}
