import 'package:compass_model/model.dart';
import 'package:compass_app/data/repositories/destination/destination_repository.dart';
import 'package:compass_app/utils/result.dart';

import '../../models/destination.dart';

// TODO: Move to a better place
class FakeDestinationRepository implements DestinationRepository {
  @override
  Future<Result<List<Destination>>> getDestinations() {
    return Future.value(
      Result.ok([kDestination1, kDestination2]),
    );
  }
}
