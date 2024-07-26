import 'package:compass_model/model.dart';

import '../../../utils/result.dart';

/// Data source for the current [ItineraryConfig]
abstract class ItineraryConfigRepository {
  /// Get current [ItineraryConfig], may be empty if no configuration started.
  /// Method is async to support writing to database, file, etc.
  Future<Result<ItineraryConfig>> getItineraryConfig();

  /// Sets [ItineraryConfig], overrides the previous one stored.
  /// Returns Result.Ok if set is successful.
  Future<Result<void>> setItineraryConfig(ItineraryConfig itineraryConfig);
}
