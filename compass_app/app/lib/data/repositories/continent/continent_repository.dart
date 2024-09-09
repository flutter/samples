import '../../../domain/models/continent/continent.dart';
import '../../../utils/result.dart';

/// Data source with all possible continents.
abstract class ContinentRepository {
  /// Get complete list of continents.
  Future<Result<List<Continent>>> getContinents();
}
