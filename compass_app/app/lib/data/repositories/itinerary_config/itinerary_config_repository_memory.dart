import 'dart:async';

import 'package:compass_model/model.dart';

import '../../../utils/result.dart';
import 'itinerary_config_repository.dart';

/// In-memory implementation of [ItineraryConfigRepository].
class ItineraryConfigRepositoryMemory implements ItineraryConfigRepository {
  ItineraryConfig? _itineraryConfig;
  final StreamController<ItineraryConfig> _streamController =
      StreamController.broadcast();

  @override
  Future<Result<ItineraryConfig>> getItineraryConfig() async {
    return Result.ok(_itineraryConfig ?? const ItineraryConfig());
  }

  @override
  Stream<ItineraryConfig> getItineraryConfigUpdates() {
    return _streamController.stream;
  }

  @override
  Future<Result<bool>> setItineraryConfig(
    ItineraryConfig itineraryConfig,
  ) async {
    _itineraryConfig = itineraryConfig;
    _streamController.add(itineraryConfig);
    return Result.ok(true);
  }
}
