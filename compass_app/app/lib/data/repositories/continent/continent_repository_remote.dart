import 'package:compass_shared/model.dart';

import '../../../utils/result.dart';
import '../../services/apiclient.dart';
import 'continent_repository.dart';

class ContinentRepositoryRemote implements ContinentRepository {
  const ContinentRepositoryRemote({
    required ApiClient apiClient,
  }) : _apiClient = apiClient;

  final ApiClient _apiClient;

  @override
  Future<Result<List<Continent>>> getContinents() {
    // TODO: Implement basic caching
    return _apiClient.getContinents();
  }
}
