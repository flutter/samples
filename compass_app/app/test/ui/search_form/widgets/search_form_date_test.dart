// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:compass_app/ui/search_form/view_models/search_form_viewmodel.dart';
import 'package:compass_app/ui/search_form/widgets/search_form_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../testing/app.dart';
import '../../../../testing/fakes/repositories/fake_continent_repository.dart';
import '../../../../testing/fakes/repositories/fake_itinerary_config_repository.dart';

void main() {
  group('SearchFormDate widget tests', () {
    late SearchFormViewModel viewModel;

    setUp(() {
      viewModel = SearchFormViewModel(
        continentRepository: FakeContinentRepository(),
        itineraryConfigRepository: FakeItineraryConfigRepository(),
      );
    });

    loadWidget(WidgetTester tester) async {
      await testApp(tester, SearchFormDate(viewModel: viewModel));
    }

    testWidgets('should display date in different month',
        (WidgetTester tester) async {
      await loadWidget(tester);
      expect(find.byType(SearchFormDate), findsOneWidget);

      // Initial state
      expect(find.text('Add Dates'), findsOneWidget);

      // Simulate date picker input:
      viewModel.dateRange = DateTimeRange(
          start: DateTime(2024, 6, 12), end: DateTime(2024, 7, 23));
      await tester.pumpAndSettle();

      expect(find.text('12 Jun - 23 Jul'), findsOneWidget);
    });

    testWidgets('should display date in same month',
        (WidgetTester tester) async {
      await loadWidget(tester);
      expect(find.byType(SearchFormDate), findsOneWidget);

      // Initial state
      expect(find.text('Add Dates'), findsOneWidget);

      // Simulate date picker input:
      viewModel.dateRange = DateTimeRange(
          start: DateTime(2024, 6, 12), end: DateTime(2024, 6, 23));
      await tester.pumpAndSettle();

      expect(find.text('12 - 23 Jun'), findsOneWidget);
    });
  });
}
