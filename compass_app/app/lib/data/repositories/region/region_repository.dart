import '../../../utils/result.dart';
import '../../models/region.dart';

abstract class RegionRepository {
  Future<Result<List<Region>>> getDestinations();
}