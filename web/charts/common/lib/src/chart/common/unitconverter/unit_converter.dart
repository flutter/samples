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

/// Converts a num value in the 'from' unit to a num value in the 'to' unit.
///
/// [F] Type of the value in the 'from' units.
/// [T] Type of the value in 'to' units.
abstract class UnitConverter<F extends num, T extends num> {
  /// Converts 'from' unit value to the 'to' unit value.
  T convert(F value);

  /// Converts 'to' unit value back to the 'from' unit value.
  F invert(T value);
}
