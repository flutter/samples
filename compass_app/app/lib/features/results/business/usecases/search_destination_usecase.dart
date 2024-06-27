import 'package:compass_app/common/utils/response.dart';
import 'package:compass_app/features/results/business/model/destination.dart';
import 'package:compass_app/features/results/data/destination_repository.dart';

/// Perform search over possible destinations
class SearchDestinationUsecase {
  SearchDestinationUsecase({required this.repository});

  final DestinationRepository repository;

  Future<Response<List<Destination>>> search({ String? continent }) async {
    bool filter(Destination destination) {
      return (continent == null || destination.continent == continent);
    }

    final response = await repository.getDestinations();
    return switch (response) {
      Ok() => Response.ok(response.value.where(filter).toList()),
      Error() => response,
    };
  }
}