// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import '../../../domain/models/activity/activity.dart';
import '../../../utils/result.dart';

/// Data source for activities.
abstract class ActivityRepository {
  /// Get activities by [Destination] ref.
  Future<Result<List<Activity>>> getByDestination(String ref);
}
