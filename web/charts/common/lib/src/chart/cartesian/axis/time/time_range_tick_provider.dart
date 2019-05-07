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

import '../tick_provider.dart' show BaseTickProvider;
import '../time/date_time_extents.dart' show DateTimeExtents;

/// Provides ticks for a particular time unit.
///
/// Used by [AutoAdjustingDateTimeTickProvider].
abstract class TimeRangeTickProvider extends BaseTickProvider<DateTime> {
  /// Returns if this tick provider will produce a sufficient number of ticks
  /// for [domainExtents].
  bool providesSufficientTicksForRange(DateTimeExtents domainExtents);

  /// Find the closet step size, from provided step size, in milliseconds.
  int getClosestStepSize(int stepSize);
}
