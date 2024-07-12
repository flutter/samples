import '../../../utils/result.dart';
import '../../models/region.dart';

/// Data source with all possible regions.
abstract class RegionRepository {
  /// Get complete list of regions.
  Future<Result<List<Region>>> getDestinations();
}
