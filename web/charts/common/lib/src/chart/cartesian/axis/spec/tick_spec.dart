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

import 'axis_spec.dart' show TextStyleSpec;

/// Definition for a tick.
///
/// Used to define a tick that is used by static tick provider.
class TickSpec<D> {
  final D value;
  final String label;
  final TextStyleSpec style;

  /// [value] the value of this tick
  /// [label] optional label for this tick. If not set, uses the tick formatter
  /// of the axis.
  /// [style] optional style for this tick. If not set, uses the style of the
  /// axis.
  const TickSpec(this.value, {this.label, this.style});
}
