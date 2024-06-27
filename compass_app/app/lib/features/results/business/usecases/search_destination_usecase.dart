import 'package:compass_app/common/utils/result.dart';
import 'package:compass_app/features/results/business/model/destination.dart';
import 'package:compass_app/features/results/data/destination_repository.dart';

class SearchDestinationUsecase {
  SearchDestinationUsecase({
    required DestinationRepository repository,
  }) : _repository = repository;

  final DestinationRepository _repository;

  /// Perform search over possible destinations
  Future<Result<List<Destination>>> search({String? continent}) async {
    bool filter(Destination destination) {
      return (continent == null || destination.continent == continent);
    }

    final result = await _repository.getDestinations();
    print('Result: $result');
    return switch (result) {
      Ok() => Result.ok(result.value.where(filter).toList()),
      Error() => result,
    };
  }
}
