import 'package:compass_app/ui/results/business/search_destination_usecase.dart';
import 'package:compass_app/ui/results/presentation/results_screen.dart';
import 'package:compass_app/ui/results/presentation/results_viewmodel.dart';
import 'package:compass_app/utils/result.dart';
import 'package:compass_app/data/models/destination.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';
import 'package:provider/provider.dart';

void main() {
  group('ResultsScreen widget tests', () {
    testWidgets('should load empty screen', (WidgetTester tester) async {
      await loadScreen(tester, []);
      expect(find.byType(ResultsScreen), findsOneWidget);
    });

    testWidgets('should display destination', (WidgetTester tester) async {
      await mockNetworkImages(() async {
        await loadScreen(tester, [
          Destination(
            ref: 'ref1',
            name: 'name1',
            country: 'country1',
            continent: 'continent1',
            knownFor: 'knownFor1',
            tags: ['tags1'],
            imageUrl: 'imageUrl1',
          ),
        ]);

        // Wait for list to load
        await tester.pumpAndSettle();

        expect(find.byType(ResultsScreen), findsOneWidget);
        // Note: Name is converted to uppercase
        expect(find.text('NAME1'), findsOneWidget);
        expect(find.text('tags1'), findsOneWidget);
      });
    });
  });
}

// Build and render the ResultsScreen widget
Future<void> loadScreen(WidgetTester tester, List<Destination> list) async {
  // Wrap the widget with a ChangeNotifierProvider containing
  // a ResultsViewModel with a fake SearchDestinationUsecase
  await tester.pumpWidget(
    ChangeNotifierProvider(
      create: (_) => ResultsViewModel(
          searchDestinationUsecase: _FakeSearchDestinationUsecase(list)),
      child: const MaterialApp(
        home: ResultsScreen(),
      ),
    ),
  );
}

class _FakeSearchDestinationUsecase implements SearchDestinationUsecase {
  _FakeSearchDestinationUsecase(this.list);

  final List<Destination> list;

  @override
  Future<Result<List<Destination>>> search({String? continent}) {
    return Future.value(Result.ok(list));
  }
}
