import '../../../domain/models/destination/destination.dart';
import '../../../utils/result.dart';

/// Data source with all possible destinations
abstract class DestinationRepository {
  /// Get complete list of destinations
  Future<Result<List<Destination>>> getDestinations();
}
