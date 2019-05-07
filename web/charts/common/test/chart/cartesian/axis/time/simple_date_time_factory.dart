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

import 'package:charts_common/src/common/date_time_factory.dart';
import 'package:intl/intl.dart' show DateFormat;

/// Returns DateTime for testing.
class SimpleDateTimeFactory implements DateTimeFactory {
  const SimpleDateTimeFactory();

  @override
  DateTime createDateTimeFromMilliSecondsSinceEpoch(
          int millisecondsSinceEpoch) =>
      new DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpoch);

  @override
  DateTime createDateTime(int year,
          [int month = 1,
          int day = 1,
          int hour = 0,
          int minute = 0,
          int second = 0,
          int millisecond = 0,
          int microsecond = 0]) =>
      new DateTime(
          year, month, day, hour, minute, second, millisecond, microsecond);

  @override
  DateFormat createDateFormat(String pattern) => new DateFormat(pattern);
}
