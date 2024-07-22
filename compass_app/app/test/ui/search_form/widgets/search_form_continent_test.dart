import 'package:compass_app/ui/search_form/view_models/search_form_viewmodel.dart';
import 'package:compass_app/ui/search_form/widgets/search_form_continent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

import '../../../util/fakes/repositories/fake_continent_repository.dart';
import '../../../util/fakes/repositories/fake_itinerary_config_repository.dart';

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
      await mockNetworkImages(() async {
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: SearchFormContinent(
                viewModel: viewModel,
              ),
            ),
          ),
        );
      });
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
