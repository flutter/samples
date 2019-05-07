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

/// Month stepper.
class MonthTimeStepper extends BaseTimeStepper {
  static const _defaultIncrements = const [1, 2, 3, 4, 6, 12];

  final List<int> _allowedTickIncrements;

  MonthTimeStepper._internal(
      DateTimeFactory dateTimeFactory, List<int> increments)
      : _allowedTickIncrements = increments,
        super(dateTimeFactory);

  factory MonthTimeStepper(DateTimeFactory dateTimeFactory,
      {List<int> allowedTickIncrements}) {
    // Set the default increments if null.
    allowedTickIncrements ??= _defaultIncrements;

    // Must have at least one increment option.
    assert(allowedTickIncrements.isNotEmpty);
    // All increments must be > 0.
    assert(allowedTickIncrements.any((increment) => increment <= 0) == false);

    return new MonthTimeStepper._internal(
        dateTimeFactory, allowedTickIncrements);
  }

  @override
  int get typicalStepSizeMs => 30 * 24 * 3600 * 1000;

  @override
  List<int> get allowedTickIncrements => _allowedTickIncrements;

  /// Guarantee a step ending in the last month of the year.
  ///
  /// If date is 2017 Oct and increments is 6, the step before is 2017 June.
  @override
  DateTime getStepTimeBeforeInclusive(DateTime time, int tickIncrement) {
    final monthRemainder = time.month % tickIncrement;
    var newMonth = (time.month - monthRemainder) % DateTime.monthsPerYear;
    // Handles the last month of the year (December) edge case.
    // Ex. When month is December and increment is 1
    if (time.month == DateTime.monthsPerYear && newMonth == 0) {
      newMonth = DateTime.monthsPerYear;
    }
    final newYear =
        time.year - (monthRemainder / DateTime.monthsPerYear).floor();

    return dateTimeFactory.createDateTime(newYear, newMonth);
  }

  @override
  DateTime getNextStepTime(DateTime time, int tickIncrement) {
    final incrementedMonth = time.month + tickIncrement;
    final newMonth = incrementedMonth % DateTime.monthsPerYear;
    final newYear =
        time.year + (incrementedMonth / DateTime.monthsPerYear).floor();

    return dateTimeFactory.createDateTime(newYear, newMonth);
  }
}
