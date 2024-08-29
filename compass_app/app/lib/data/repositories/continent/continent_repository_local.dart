import 'package:compass_model/model.dart';

import '../../../utils/result.dart';
import '../../services/local/local_data_service.dart';
import 'continent_repository.dart';

/// Local data source with all possible continents.
class ContinentRepositoryLocal implements ContinentRepository {
  ContinentRepositoryLocal({
    required LocalDataService localDataService,
  }) : _localDataService = localDataService;

  final LocalDataService _localDataService;

  @override
  Future<Result<List<Continent>>> getContinents() async {
    return Future.value(Result.ok(_localDataService.getContinents()));
  }
}
