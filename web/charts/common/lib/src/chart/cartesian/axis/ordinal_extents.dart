// Copyright 2018 the Charts project authors. Please see the AUTHORS file
// for details.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:collection' show HashSet;
import 'scale.dart' show Extents;

/// A range of ordinals.
class OrdinalExtents extends Extents<String> {
  final List<String> _range;

  /// The extents representing the ordinal values in [range].
  ///
  /// The elements of [range] must all be unique.
  ///
  /// [D] is the domain class type for the elements in the extents.
  OrdinalExtents(List<String> range) : _range = range {
    // This asserts that all elements in [range] are unique.
    final uniqueValueCount = new HashSet.from(_range).length;
    assert(uniqueValueCount == range.length);
  }

  factory OrdinalExtents.all(List<String> range) => new OrdinalExtents(range);

  bool get isEmpty => _range.isEmpty;

  /// The number of values inside this extent.
  int get length => _range.length;

  String operator [](int index) => _range[index];

  int indexOf(String value) => _range.indexOf(value);
}
