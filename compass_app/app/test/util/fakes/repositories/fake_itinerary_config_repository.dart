import 'package:compass_app/data/repositories/itinerary_config/itinerary_config_repository.dart';
import 'package:compass_app/utils/result.dart';
import 'package:compass_model/src/model/itinerary_config/itinerary_config.dart';

import 'fake_destination_repository.dart';

class FakeItineraryConfigRepository implements ItineraryConfigRepository {
  FakeItineraryConfigRepository({this.itineraryConfig});

  ItineraryConfig? itineraryConfig;

  @override
  Future<Result<ItineraryConfig>> getItineraryConfig() async {
    return Result.ok(itineraryConfig ?? const ItineraryConfig());
  }

  @override
  Stream<ItineraryConfig> getItineraryConfigUpdates() {
    // TODO: implement getItineraryConfigUpdates
    throw UnimplementedError();
  }

  @override
  Future<Result<void>> setItineraryConfig(
      ItineraryConfig itineraryConfig) async {
    this.itineraryConfig = itineraryConfig;
    return Result.ok(null);
  }
}
