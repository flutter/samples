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

/// Year stepper.
class YearTimeStepper extends BaseTimeStepper {
  static const _defaultIncrements = const [1, 2, 5, 10, 50, 100, 500, 1000];

  final List<int> _allowedTickIncrements;

  YearTimeStepper._internal(
      DateTimeFactory dateTimeFactory, List<int> increments)
      : _allowedTickIncrements = increments,
        super(dateTimeFactory);

  factory YearTimeStepper(DateTimeFactory dateTimeFactory,
      {List<int> allowedTickIncrements}) {
    // Set the default increments if null.
    allowedTickIncrements ??= _defaultIncrements;

    // Must have at least one increment option.
    assert(allowedTickIncrements.isNotEmpty);
    // All increments must be > 0.
    assert(allowedTickIncrements.any((increment) => increment <= 0) == false);

    return new YearTimeStepper._internal(
        dateTimeFactory, allowedTickIncrements);
  }

  @override
  int get typicalStepSizeMs => 365 * 24 * 3600 * 1000;

  @override
  List<int> get allowedTickIncrements => _allowedTickIncrements;

  /// Guarantees the increment is a factor of the tick value.
  ///
  /// Example: 2017, tick increment of 10, step before is 2010.
  @override
  DateTime getStepTimeBeforeInclusive(DateTime time, int tickIncrement) {
    final yearRemainder = time.year % tickIncrement;
    return dateTimeFactory.createDateTime(time.year - yearRemainder);
  }

  @override
  DateTime getNextStepTime(DateTime time, int tickIncrement) {
    return dateTimeFactory.createDateTime(time.year + tickIncrement);
  }
}
