import 'package:compass_model/model.dart';

import '../../../utils/result.dart';

/// Data source with all possible destinations
abstract class DestinationRepository {
  /// Get complete list of destinations
  Future<Result<List<Destination>>> getDestinations();

  // TODO: Consider creating getByContinent instead of filtering in ViewModel
}
