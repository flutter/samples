import 'package:compass_app/ui/search_form/view_models/search_form_viewmodel.dart';
import 'package:compass_app/ui/search_form/widgets/search_form_region.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

import '../../../util/fakes/repositories/fake_region_repository.dart';

void main() {
  group('SearchFormRegion widget tests', () {
    late SearchFormViewModel viewModel;

    setUp(() {
      viewModel = SearchFormViewModel(
        regionRepository: FakeRegionRepository(),
      );
    });

    loadWidget(WidgetTester tester) async {
      await mockNetworkImages(() async {
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: SearchFormRegion(
                viewModel: viewModel,
              ),
            ),
          ),
        );
      });
    }

    testWidgets('Should load and select region', (WidgetTester tester) async {
      await loadWidget(tester);
      expect(find.byType(SearchFormRegion), findsOneWidget);

      // Select region
      await tester.tap(find.text('REGION'), warnIfMissed: false);

      expect(viewModel.selectedRegion, 'REGION');
    });
  });
}
