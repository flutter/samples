import 'package:compass_app/data/models/continent.dart';
import 'package:compass_app/data/repositories/continent/continent_repository.dart';
import 'package:compass_app/utils/result.dart';

class FakeContinentRepository implements ContinentRepository {
  @override
  Future<Result<List<Continent>>> getContinents() async {
    return Result.ok([
      Continent(name: 'CONTINENT', imageUrl: 'URL'),
      Continent(name: 'CONTINENT2', imageUrl: 'URL'),
      Continent(name: 'CONTINENT3', imageUrl: 'URL'),
    ]);
  }
}
