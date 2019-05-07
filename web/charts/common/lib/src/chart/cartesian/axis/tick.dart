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

import 'package:meta/meta.dart';
import '../../../common/text_element.dart';

/// A labeled point on an axis.
///
/// [D] is the type of the value this tick is associated with.
class Tick<D> {
  /// The value that this tick represents
  final D value;

  /// [TextElement] for this tick.
  TextElement textElement;

  /// Location on the axis where this tick is rendered (in canvas coordinates).
  double locationPx;

  /// Offset of the label for this tick from its location.
  ///
  /// This is a vertical offset for ticks on a vertical axis, or horizontal
  /// offset for ticks on a horizontal axis.
  double labelOffsetPx;

  Tick(
      {@required this.value,
      @required this.textElement,
      this.locationPx,
      this.labelOffsetPx});

  @override
  String toString() => 'Tick(value: $value, locationPx: $locationPx, '
      'labelOffsetPx: $labelOffsetPx)';
}
