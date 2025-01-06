// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:compass_app/ui/search_form/view_models/search_form_viewmodel.dart';
import 'package:compass_app/ui/search_form/widgets/search_form_submit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../testing/app.dart';
import '../../../../testing/fakes/repositories/fake_continent_repository.dart';
import '../../../../testing/fakes/repositories/fake_itinerary_config_repository.dart';
import '../../../../testing/mocks.dart';

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
      await testApp(
        tester,
        SearchFormSubmit(viewModel: viewModel),
        goRouter: goRouter,
      );
    }

    testWidgets('Should be enabled and allow tap', (WidgetTester tester) async {
      await loadWidget(tester);
      expect(find.byType(SearchFormSubmit), findsOneWidget);

      // Tap should not navigate
      await tester.tap(find.byKey(const ValueKey(searchFormSubmitButtonKey)));
      verifyNever(() => goRouter.go(any()));

      // Fill in data
      viewModel.guests = 2;
      viewModel.selectedContinent = 'CONTINENT';
      final newDateRange = DateTimeRange(
        start: DateTime(2024, 1, 1),
        end: DateTime(2024, 1, 31),
      );
      viewModel.dateRange = newDateRange;
      await tester.pumpAndSettle();

      // Perform search
      await tester.tap(find.byKey(const ValueKey(searchFormSubmitButtonKey)));

      // Should navigate to results screen
      verify(() => goRouter.go('/results')).called(1);
    });
  });
}
