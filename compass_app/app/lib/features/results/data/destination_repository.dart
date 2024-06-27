import 'package:compass_app/common/utils/response.dart';
import 'package:compass_app/features/results/business/model/destination.dart';

/// Data source with all possible destinations
class DestinationRepository {

  /// Get complete list of destinations
  Future<Response<List<Destination>>> getDestinations() {
    // TODO: Load some data
    return Future.value(Response.ok([]));
  }
}