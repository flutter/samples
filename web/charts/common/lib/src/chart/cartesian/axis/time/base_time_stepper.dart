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

import '../../../../common/date_time_factory.dart';
import 'date_time_extents.dart' show DateTimeExtents;
import 'time_stepper.dart'
    show TimeStepper, TimeStepIteratorFactory, TimeStepIterator;

/// A base stepper for operating with DateTimeFactory and time range steps.
abstract class BaseTimeStepper implements TimeStepper {
  /// The factory to generate a DateTime object.
  ///
  /// This is needed because Dart's DateTime does not handle time zone.
  /// There is a time zone aware library that we could use that implements the
  /// DateTime interface.
  final DateTimeFactory dateTimeFactory;

  _TimeStepIteratorFactoryImpl _stepsIterable;

  BaseTimeStepper(this.dateTimeFactory);

  /// Get the step time before or on the given [time] from [tickIncrement].
  DateTime getStepTimeBeforeInclusive(DateTime time, int tickIncrement);

  /// Get the next step time after [time] from [tickIncrement].
  DateTime getNextStepTime(DateTime time, int tickIncrement);

  @override
  int getStepCountBetween(DateTimeExtents timeExtent, int tickIncrement) {
    checkTickIncrement(tickIncrement);
    final min = timeExtent.start;
    final max = timeExtent.end;
    var time = getStepTimeAfterInclusive(min, tickIncrement);

    var cnt = 0;
    while (time.compareTo(max) <= 0) {
      cnt++;
      time = getNextStepTime(time, tickIncrement);
    }
    return cnt;
  }

  @override
  TimeStepIteratorFactory getSteps(DateTimeExtents timeExtent) {
    // Keep the steps iterable unless time extent changes, so the same iterator
    // can be used and reset for different increments.
    if (_stepsIterable == null || _stepsIterable.timeExtent != timeExtent) {
      _stepsIterable = new _TimeStepIteratorFactoryImpl(timeExtent, this);
    }
    return _stepsIterable;
  }

  @override
  DateTimeExtents updateBoundingSteps(DateTimeExtents timeExtent) {
    final stepBefore = getStepTimeBeforeInclusive(timeExtent.start, 1);
    final stepAfter = getStepTimeAfterInclusive(timeExtent.end, 1);

    return new DateTimeExtents(start: stepBefore, end: stepAfter);
  }

  DateTime getStepTimeAfterInclusive(DateTime time, int tickIncrement) {
    final boundedStart = getStepTimeBeforeInclusive(time, tickIncrement);
    if (boundedStart == time) {
      return boundedStart;
    }
    return getNextStepTime(boundedStart, tickIncrement);
  }
}

class _TimeStepIteratorImpl implements TimeStepIterator {
  final DateTime extentStartTime;
  final DateTime extentEndTime;
  final BaseTimeStepper stepper;
  DateTime _current;
  int _tickIncrement = 1;

  _TimeStepIteratorImpl(
      this.extentStartTime, this.extentEndTime, this.stepper) {
    reset(_tickIncrement);
  }

  @override
  bool moveNext() {
    if (_current == null) {
      _current =
          stepper.getStepTimeAfterInclusive(extentStartTime, _tickIncrement);
    } else {
      _current = stepper.getNextStepTime(_current, _tickIncrement);
    }

    return _current.compareTo(extentEndTime) <= 0;
  }

  @override
  DateTime get current => _current;

  @override
  TimeStepIterator reset(int tickIncrement) {
    checkTickIncrement(tickIncrement);
    _tickIncrement = tickIncrement;
    _current = null;
    return this;
  }
}

class _TimeStepIteratorFactoryImpl extends TimeStepIteratorFactory {
  final DateTimeExtents timeExtent;
  final _TimeStepIteratorImpl _timeStepIterator;

  _TimeStepIteratorFactoryImpl._internal(
      _TimeStepIteratorImpl timeStepIterator, this.timeExtent)
      : _timeStepIterator = timeStepIterator;

  factory _TimeStepIteratorFactoryImpl(
      DateTimeExtents timeExtent, BaseTimeStepper stepper) {
    final startTime = timeExtent.start;
    final endTime = timeExtent.end;
    return new _TimeStepIteratorFactoryImpl._internal(
        new _TimeStepIteratorImpl(startTime, endTime, stepper), timeExtent);
  }

  @override
  TimeStepIterator get iterator => _timeStepIterator;
}

void checkTickIncrement(int tickIncrement) {
  /// tickIncrement must be greater than 0
  assert(tickIncrement > 0);
}
