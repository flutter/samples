// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import '../../../domain/models/continent/continent.dart';
import '../../../utils/result.dart';

/// Data source with all possible continents.
abstract class ContinentRepository {
  /// Get complete list of continents.
  Future<Result<List<Continent>>> getContinents();
}
