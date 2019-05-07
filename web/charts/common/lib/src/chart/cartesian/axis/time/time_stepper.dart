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

import 'date_time_extents.dart' show DateTimeExtents;

/// Represents the step/tick information for the given time range.
abstract class TimeStepper {
  /// Get new bounding extents to the ticks that would contain the given
  /// timeExtents.
  DateTimeExtents updateBoundingSteps(DateTimeExtents timeExtents);

  /// Returns the number steps/ticks are between the given extents inclusive.
  ///
  /// Does not extend the extents to the bounding ticks.
  int getStepCountBetween(DateTimeExtents timeExtents, int tickIncrement);

  /// Generates an Iterable for iterating over the time steps bounded by the
  /// given timeExtents. The desired tickIncrement can be set on the returned
  /// [TimeStepIteratorFactory].
  TimeStepIteratorFactory getSteps(DateTimeExtents timeExtents);

  /// Returns the typical stepSize for this stepper assuming increment by 1.
  int get typicalStepSizeMs;

  /// An ordered list of step increments that makes sense given the step.
  ///
  /// Example: hours may increment by 1, 2, 3, 4, 6, 12.  It doesn't make sense
  /// to increment hours by 7.
  List<int> get allowedTickIncrements;
}

/// Iterator with a reset function that can be used multiple times to avoid
/// object instantiation during the Android layout/draw phases.
abstract class TimeStepIterator extends Iterator<DateTime> {
  /// Reset the iterator and set the tickIncrement to the specified value.
  ///
  /// This method is provided so that the same iterator instance can be used for
  /// different tick increments, avoiding object allocation during Android
  /// layout/draw phases.
  TimeStepIterator reset(int tickIncrement);
}

/// Factory that creates TimeStepIterator with the set tickIncrement value.
abstract class TimeStepIteratorFactory extends Iterable {
  /// Get iterator and optionally set the tickIncrement.
  @override
  TimeStepIterator get iterator;
}
