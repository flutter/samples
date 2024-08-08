import 'package:compass_app/ui/results/view_models/results_viewmodel.dart';
import 'package:compass_model/model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../testing/fakes/repositories/fake_destination_repository.dart';
import '../../../testing/fakes/repositories/fake_itinerary_config_repository.dart';

void main() {
  group('ResultsViewModel tests', () {
    final viewModel = ResultsViewModel(
      destinationRepository: FakeDestinationRepository(),
      itineraryConfigRepository: FakeItineraryConfigRepository(
        itineraryConfig: ItineraryConfig(
          continent: 'Europe',
          startDate: DateTime(2024, 01, 01),
          endDate: DateTime(2024, 01, 31),
          guests: 2,
        ),
      ),
    );

    // perform a simple test
    // verifies that the list of items is properly loaded
    // TODO: Verify loading state and calls to search method
    test('should load items', () async {
      expect(viewModel.destinations.length, 2);
    });
  });
}
