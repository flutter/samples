import '../../../utils/result.dart';
import '../../models/continent.dart';

/// Data source with all possible continents.
abstract class ContinentRepository {
  /// Get complete list of continents.
  Future<Result<List<Continent>>> getContinents();
}
