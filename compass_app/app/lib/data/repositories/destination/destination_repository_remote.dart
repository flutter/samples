import 'package:compass_shared/model.dart';

import '../../../utils/result.dart';
import '../../services/apiclient.dart';
import 'destination_repository.dart';

class DestinationRepositoryRemote implements DestinationRepository {
  const DestinationRepositoryRemote({
    required ApiClient apiClient,
  }) : _apiClient = apiClient;

  final ApiClient _apiClient;

  @override
  Future<Result<List<Destination>>> getDestinations() {
    // TODO: Implement basic caching
    return _apiClient.getDestinations();
  }
}
