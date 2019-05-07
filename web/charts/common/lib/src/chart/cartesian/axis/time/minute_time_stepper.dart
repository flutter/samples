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
import 'base_time_stepper.dart';

/// Minute stepper where ticks generated aligns with the hour.
class MinuteTimeStepper extends BaseTimeStepper {
  static const _defaultIncrements = const [5, 10, 15, 20, 30];
  static const _millisecondsInMinute = 60 * 1000;

  final List<int> _allowedTickIncrements;

  MinuteTimeStepper._internal(
      DateTimeFactory dateTimeFactory, List<int> increments)
      : _allowedTickIncrements = increments,
        super(dateTimeFactory);

  factory MinuteTimeStepper(DateTimeFactory dateTimeFactory,
      {List<int> allowedTickIncrements}) {
    // Set the default increments if null.
    allowedTickIncrements ??= _defaultIncrements;

    // Must have at least one increment
    assert(allowedTickIncrements.isNotEmpty);
    // Increment must be between 1 and 60 inclusive.
    assert(allowedTickIncrements
            .any((increment) => increment <= 0 || increment > 60) ==
        false);

    return new MinuteTimeStepper._internal(
        dateTimeFactory, allowedTickIncrements);
  }

  @override
  int get typicalStepSizeMs => _millisecondsInMinute;

  List<int> get allowedTickIncrements => _allowedTickIncrements;

  /// Picks a tick start time that guarantees the start of the hour is included.
  ///
  /// Ex. Time is 3:46, increments is 5 minutes, step before is 3:45, because
  /// we can guarantee a step at 4:00.
  @override
  DateTime getStepTimeBeforeInclusive(DateTime time, int tickIncrement) {
    final nextHourStart = time.millisecondsSinceEpoch +
        (60 - time.minute) * _millisecondsInMinute;

    final minutesToNextHour =
        ((nextHourStart - time.millisecondsSinceEpoch) / _millisecondsInMinute)
            .ceil();

    final minRemainder = minutesToNextHour % tickIncrement;
    final rewindMinutes = minRemainder == 0 ? 0 : tickIncrement - minRemainder;

    final stepBefore = dateTimeFactory.createDateTimeFromMilliSecondsSinceEpoch(
        time.millisecondsSinceEpoch - rewindMinutes * _millisecondsInMinute);

    return stepBefore;
  }

  @override
  DateTime getNextStepTime(DateTime time, int tickIncrement) {
    return time.add(new Duration(minutes: tickIncrement));
  }
}
