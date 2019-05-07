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

/// Hour stepper.
class HourTimeStepper extends BaseTimeStepper {
  static const _defaultIncrements = const [1, 2, 3, 4, 6, 12, 24];
  static const _hoursInDay = 24;
  static const _millisecondsInHour = 3600 * 1000;

  final List<int> _allowedTickIncrements;

  HourTimeStepper._internal(
      DateTimeFactory dateTimeFactory, List<int> increments)
      : _allowedTickIncrements = increments,
        super(dateTimeFactory);

  factory HourTimeStepper(DateTimeFactory dateTimeFactory,
      {List<int> allowedTickIncrements}) {
    // Set the default increments if null.
    allowedTickIncrements ??= _defaultIncrements;

    // Must have at least one increment option.
    assert(allowedTickIncrements.isNotEmpty);
    // All increments must be between 1 and 24 inclusive.
    assert(allowedTickIncrements
            .any((increment) => increment <= 0 || increment > 24) ==
        false);

    return new HourTimeStepper._internal(
        dateTimeFactory, allowedTickIncrements);
  }

  @override
  int get typicalStepSizeMs => _millisecondsInHour;

  @override
  List<int> get allowedTickIncrements => _allowedTickIncrements;

  /// Get the step time before or on the given [time] from [tickIncrement].
  ///
  /// Guarantee a step at the start of the next day.
  /// Ex. Time is Aug 20 10 AM, increment is 1 hour. Returns 10 AM.
  /// Ex. Time is Aug 20 6 AM, increment is 4 hours. Returns 4 AM.
  @override
  DateTime getStepTimeBeforeInclusive(DateTime time, int tickIncrement) {
    final nextDay = dateTimeFactory
        .createDateTime(time.year, time.month, time.day)
        .add(new Duration(hours: _hoursInDay + 1));
    final nextDayStart = dateTimeFactory.createDateTime(
        nextDay.year, nextDay.month, nextDay.day);

    final hoursToNextDay =
        ((nextDayStart.millisecondsSinceEpoch - time.millisecondsSinceEpoch) /
                _millisecondsInHour)
            .ceil();

    final hoursRemainder = hoursToNextDay % tickIncrement;
    final rewindHours =
        hoursRemainder == 0 ? 0 : tickIncrement - hoursRemainder;
    final stepBefore = dateTimeFactory.createDateTime(
        time.year, time.month, time.day, time.hour - rewindHours);

    return stepBefore;
  }

  /// Get next step time.
  ///
  /// [time] is expected to be a [DateTime] with the hour at start of the hour.
  @override
  DateTime getNextStepTime(DateTime time, int tickIncrement) {
    return time.add(new Duration(hours: tickIncrement));
  }
}
