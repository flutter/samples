import 'package:compass_shared/model.dart';

import '../../../utils/result.dart';

/// Data source with all possible continents.
abstract class ContinentRepository {
  /// Get complete list of continents.
  Future<Result<List<Continent>>> getContinents();
}
