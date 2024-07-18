import 'package:compass_model/model.dart';
import 'package:compass_app/data/repositories/continent/continent_repository.dart';
import 'package:compass_app/utils/result.dart';

class FakeContinentRepository implements ContinentRepository {
  @override
  Future<Result<List<Continent>>> getContinents() async {
    return Result.ok([
      const Continent(name: 'CONTINENT', imageUrl: 'URL'),
      const Continent(name: 'CONTINENT2', imageUrl: 'URL'),
      const Continent(name: 'CONTINENT3', imageUrl: 'URL'),
    ]);
  }
}
