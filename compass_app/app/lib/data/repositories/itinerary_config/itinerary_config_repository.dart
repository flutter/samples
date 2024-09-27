// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import '../../../domain/models/itinerary_config/itinerary_config.dart';
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
