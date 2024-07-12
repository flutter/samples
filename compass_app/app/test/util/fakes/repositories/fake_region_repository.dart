import 'package:compass_app/data/models/region.dart';
import 'package:compass_app/data/repositories/region/region_repository.dart';
import 'package:compass_app/utils/result.dart';

class FakeRegionRepository implements RegionRepository {
  @override
  Future<Result<List<Region>>> getDestinations() async {
    return Result.ok([
      Region(name: 'REGION', imageUrl: 'URL'),
      Region(name: 'REGION2', imageUrl: 'URL'),
      Region(name: 'REGION3', imageUrl: 'URL'),
    ]);
  }
}
