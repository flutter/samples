// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:compass_app/ui/search_form/view_models/search_form_viewmodel.dart';
import 'package:compass_app/ui/search_form/widgets/search_form_continent.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../testing/app.dart';
import '../../../../testing/fakes/repositories/fake_continent_repository.dart';
import '../../../../testing/fakes/repositories/fake_itinerary_config_repository.dart';

void main() {
  group('SearchFormContinent widget tests', () {
    late SearchFormViewModel viewModel;

    setUp(() {
      viewModel = SearchFormViewModel(
        continentRepository: FakeContinentRepository(),
        itineraryConfigRepository: FakeItineraryConfigRepository(),
      );
    });

    loadWidget(WidgetTester tester) async {
      await testApp(tester, SearchFormContinent(viewModel: viewModel));
    }

    testWidgets('Should load and select continent',
        (WidgetTester tester) async {
      await loadWidget(tester);
      expect(find.byType(SearchFormContinent), findsOneWidget);

      // Select continent
      await tester.tap(find.text('CONTINENT'), warnIfMissed: false);

      expect(viewModel.selectedContinent, 'CONTINENT');
    });
  });
}
