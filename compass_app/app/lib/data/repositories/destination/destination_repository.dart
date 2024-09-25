// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import '../../../domain/models/destination/destination.dart';
import '../../../utils/result.dart';

/// Data source with all possible destinations
abstract class DestinationRepository {
  /// Get complete list of destinations
  Future<Result<List<Destination>>> getDestinations();
}
