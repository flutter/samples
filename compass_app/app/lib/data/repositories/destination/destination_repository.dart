import 'package:compass_app/utils/result.dart';
import 'package:compass_app/data/models/destination.dart';

/// Data source with all possible destinations
abstract class DestinationRepository {
  /// Get complete list of destinations
  Future<Result<List<Destination>>> getDestinations();
}
