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

/// Formatter of [DateTime] ticks
abstract class TimeTickFormatter {
  /// Format for tick that is the first in a set of ticks.
  String formatFirstTick(DateTime date);

  /// Format for a 'simple' tick.
  ///
  /// Ex. Not a first tick or transition tick.
  String formatSimpleTick(DateTime date);

  /// Format for a transitional tick.
  String formatTransitionTick(DateTime date);

  /// Returns true if tick is a transitional tick.
  bool isTransition(DateTime tickValue, DateTime prevTickValue);
}
