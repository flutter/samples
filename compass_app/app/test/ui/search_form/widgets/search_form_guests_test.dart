import 'package:compass_app/ui/search_form/view_models/search_form_viewmodel.dart';
import 'package:compass_app/ui/search_form/widgets/search_form_date.dart';
import 'package:compass_app/ui/search_form/widgets/search_form_guests.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

import '../../../util/fakes/repositories/fake_region_repository.dart';

void main() {
  group('SearchFormGuests widget tests', () {
    late SearchFormViewModel viewModel;

    setUp(() {
      viewModel = SearchFormViewModel(
        regionRepository: FakeRegionRepository(),
      );
    });

    loadWidget(WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SearchFormGuests(
              viewModel: viewModel,
            ),
          ),
        ),
      );
    }

    testWidgets('Increase number of guests', (WidgetTester tester) async {
      await loadWidget(tester);
      expect(find.byType(SearchFormGuests), findsOneWidget);

      // Initial state
      expect(find.text('0'), findsOneWidget);

      await tester.tap(find.byKey(const ValueKey('add_guests')));
      await tester.pumpAndSettle();

      expect(find.text('1'), findsOneWidget);
    });

    testWidgets('Decrease number of guests', (WidgetTester tester) async {
      await loadWidget(tester);
      expect(find.byType(SearchFormGuests), findsOneWidget);

      // Initial state
      expect(find.text('0'), findsOneWidget);

      await tester.tap(find.byKey(const ValueKey('remove_guests')));
      await tester.pumpAndSettle();

      // Should remain at 0
      expect(find.text('0'), findsOneWidget);

      await tester.tap(find.byKey(const ValueKey('add_guests')));
      await tester.pumpAndSettle();

      // Increase to 1
      expect(find.text('1'), findsOneWidget);

      await tester.tap(find.byKey(const ValueKey('remove_guests')));
      await tester.pumpAndSettle();

      // Back to 0
      expect(find.text('0'), findsOneWidget);
    });
  });
}
