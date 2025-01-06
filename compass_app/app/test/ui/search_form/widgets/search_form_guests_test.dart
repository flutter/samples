// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:compass_app/ui/search_form/view_models/search_form_viewmodel.dart';
import 'package:compass_app/ui/search_form/widgets/search_form_guests.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../testing/app.dart';
import '../../../../testing/fakes/repositories/fake_continent_repository.dart';
import '../../../../testing/fakes/repositories/fake_itinerary_config_repository.dart';

void main() {
  group('SearchFormGuests widget tests', () {
    late SearchFormViewModel viewModel;

    setUp(() {
      viewModel = SearchFormViewModel(
        continentRepository: FakeContinentRepository(),
        itineraryConfigRepository: FakeItineraryConfigRepository(),
      );
    });

    loadWidget(WidgetTester tester) async {
      await testApp(tester, SearchFormGuests(viewModel: viewModel));
    }

    testWidgets('Increase number of guests', (WidgetTester tester) async {
      await loadWidget(tester);
      expect(find.byType(SearchFormGuests), findsOneWidget);

      // Initial state
      expect(find.text('0'), findsOneWidget);

      await tester.tap(find.byKey(const ValueKey(addGuestsKey)));
      await tester.pumpAndSettle();

      expect(find.text('1'), findsOneWidget);
    });

    testWidgets('Decrease number of guests', (WidgetTester tester) async {
      await loadWidget(tester);
      expect(find.byType(SearchFormGuests), findsOneWidget);

      // Initial state
      expect(find.text('0'), findsOneWidget);

      await tester.tap(find.byKey(const ValueKey(removeGuestsKey)));
      await tester.pumpAndSettle();

      // Should remain at 0
      expect(find.text('0'), findsOneWidget);

      await tester.tap(find.byKey(const ValueKey(addGuestsKey)));
      await tester.pumpAndSettle();

      // Increase to 1
      expect(find.text('1'), findsOneWidget);

      await tester.tap(find.byKey(const ValueKey(removeGuestsKey)));
      await tester.pumpAndSettle();

      // Back to 0
      expect(find.text('0'), findsOneWidget);
    });
  });
}
