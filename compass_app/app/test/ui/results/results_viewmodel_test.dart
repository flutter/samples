import 'package:compass_app/routing/queries/search_query_parameters.dart';
import 'package:compass_app/ui/results/view_models/results_viewmodel.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../util/fakes/repositories/fake_destination_repository.dart';

void main() {
  group('ResultsViewModel tests', () {
    final viewModel = ResultsViewModel(
      destinationRepository: FakeDestinationRepository(),
      queryParameters: SearchQueryParameters.fromQueryParameters({
        'continent': 'Europe',
        'checkIn': '2024-01-01',
        'checkOut': '2024-01-31',
        'guests': '2',
      }),
    )..search();

    // perform a simple test
    // verifies that the list of items is properly loaded
    // TODO: Verify loading state and calls to search method
    test('should load items', () async {
      expect(viewModel.destinations.length, 2);
    });
  });
}
