import 'package:compass_app/common/utils/result.dart';
import 'package:compass_app/features/results/business/model/destination.dart';
import 'package:flutter/material.dart';

/// Data source with all possible destinations
class DestinationRepository {
  /// Get complete list of destinations
  Future<Result<List<Destination>>> getDestinations() {
    // TODO: Load some data
    return Future.delayed(
      // Simulate loading from network
      const Duration(milliseconds: 1000),
      () => Result.ok([]),
    );
  }
}
