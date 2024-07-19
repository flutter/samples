import 'package:compass_app/ui/results/view_models/results_viewmodel.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../util/fakes/repositories/fake_destination_repository.dart';

void main() {
  group('ResultsViewModel tests', () {
    final viewModel = ResultsViewModel(
      destinationRepository: FakeDestinationRepository(),
      queryParameters: {
        'continent': 'Europe',
      },
    )..search();

    // perform a simple test
    // verifies that the list of items is properly loaded
    // TODO: Verify loading state and calls to search method
    test('should load items', () async {
      expect(viewModel.destinations.length, 2);
    });
  });
}
