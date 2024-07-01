import 'package:compass_app/common/utils/result.dart';
import 'package:compass_app/features/results/business/model/destination.dart';
import 'package:compass_app/features/results/business/usecases/search_destination_usecase.dart';
import 'package:compass_app/features/results/presentation/results_viewmodel.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ResultsViewModel tests', () {
    final fakeUsecase = _FakeUsecase();
    final viewModel = ResultsViewModel(searchDestinationUsecase: fakeUsecase);

    // perform a simple test
    // verifies that the list of items is properly loaded
    // TODO: Verify loading state and calls to search method
    test('should load items', () async {
      // Loads items on startup
      expect(viewModel.destinations.length, 1);
    });
  });
}

class _FakeUsecase implements SearchDestinationUsecase {
  @override
  Future<Result<List<Destination>>> search({String? continent}) async {
    return Result.ok([
      Destination(
        ref: 'ref1',
        name: 'name1',
        country: 'country1',
        continent: 'continent1',
        knownFor: 'knownFor1',
        tags: ['tags1'],
        imageUrl: 'imageUrl1',
      ),
    ]);
  }
}
