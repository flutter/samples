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

import '../../../../common/date_time_factory.dart' show DateTimeFactory;
import 'base_time_stepper.dart' show BaseTimeStepper;

/// Day stepper.
class DayTimeStepper extends BaseTimeStepper {
  // TODO: Remove the 14 day increment if we add week stepper.
  static const _defaultIncrements = const [1, 2, 3, 7, 14];
  static const _hoursInDay = 24;

  final List<int> _allowedTickIncrements;

  DayTimeStepper._internal(
      DateTimeFactory dateTimeFactory, List<int> increments)
      : _allowedTickIncrements = increments,
        super(dateTimeFactory);

  factory DayTimeStepper(DateTimeFactory dateTimeFactory,
      {List<int> allowedTickIncrements}) {
    // Set the default increments if null.
    allowedTickIncrements ??= _defaultIncrements;

    // Must have at least one increment option.
    assert(allowedTickIncrements.isNotEmpty);
    // All increments must be > 0.
    assert(allowedTickIncrements.any((increment) => increment <= 0) == false);

    return new DayTimeStepper._internal(dateTimeFactory, allowedTickIncrements);
  }

  @override
  int get typicalStepSizeMs => _hoursInDay * 3600 * 1000;

  @override
  List<int> get allowedTickIncrements => _allowedTickIncrements;

  /// Get the step time before or on the given [time] from [tickIncrement].
  ///
  /// Increments are based off the beginning of the month.
  /// Ex. 5 day increments in a month is 1,6,11,16,21,26,31
  /// Ex. Time is Aug 20, increment is 1 day. Returns Aug 20.
  /// Ex. Time is Aug 20, increment is 2 days. Returns Aug 19 because 2 day
  /// increments in a month is 1,3,5,7,9,11,13,15,17,19,21....
  @override
  DateTime getStepTimeBeforeInclusive(DateTime time, int tickIncrement) {
    final dayRemainder = (time.day - 1) % tickIncrement;
    // Subtract an extra hour in case stepping through a daylight saving change.
    final dayBefore = dayRemainder > 0
        ? time.subtract(new Duration(hours: (_hoursInDay * dayRemainder) - 1))
        : time;
    // Explicitly leaving off hours and beyond to truncate to start of day.
    final stepBefore = dateTimeFactory.createDateTime(
        dayBefore.year, dayBefore.month, dayBefore.day);

    return stepBefore;
  }

  @override
  DateTime getNextStepTime(DateTime time, int tickIncrement) {
    // Add an extra hour in case stepping through a daylight saving change.
    final stepAfter =
        time.add(new Duration(hours: (_hoursInDay * tickIncrement) + 1));
    // Explicitly leaving off hours and beyond to truncate to start of day.
    return dateTimeFactory.createDateTime(
        stepAfter.year, stepAfter.month, stepAfter.day);
  }
}
