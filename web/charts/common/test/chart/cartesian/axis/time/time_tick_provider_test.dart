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

import 'package:charts_common/src/chart/cartesian/axis/time/auto_adjusting_date_time_tick_provider.dart';
import 'package:test/test.dart';
import 'simple_date_time_factory.dart' show SimpleDateTimeFactory;

const EPSILON = 0.001;

void main() {
  const dateTimeFactory = const SimpleDateTimeFactory();

  group('Find closest step size from stepper', () {
    test('from exactly matching step size', () {
      final stepper = AutoAdjustingDateTimeTickProvider.createHourTickProvider(
          dateTimeFactory);
      final oneHourMs = (new Duration(hours: 1)).inMilliseconds;
      final closestStepSize = stepper.getClosestStepSize(oneHourMs);

      expect(closestStepSize, equals(oneHourMs));
    });

    test('choose smallest increment if step is smaller than smallest increment',
        () {
      final stepper = AutoAdjustingDateTimeTickProvider.createHourTickProvider(
          dateTimeFactory);
      final oneHourMs = (new Duration(hours: 1)).inMilliseconds;
      final closestStepSize = stepper
          .getClosestStepSize((new Duration(minutes: 56)).inMilliseconds);

      expect(closestStepSize, equals(oneHourMs));
    });

    test('choose largest increment if step is larger than largest increment',
        () {
      final stepper = AutoAdjustingDateTimeTickProvider.createHourTickProvider(
          dateTimeFactory);
      final oneDayMs = (new Duration(hours: 24)).inMilliseconds;
      final closestStepSize =
          stepper.getClosestStepSize((new Duration(hours: 25)).inMilliseconds);

      expect(closestStepSize, equals(oneDayMs));
    });

    test('choose closest increment if exact not found', () {
      final stepper = AutoAdjustingDateTimeTickProvider.createHourTickProvider(
          dateTimeFactory);
      final threeHoursMs = (new Duration(hours: 3)).inMilliseconds;
      final closestStepSize = stepper.getClosestStepSize(
          (new Duration(hours: 3, minutes: 28)).inMilliseconds);

      expect(closestStepSize, equals(threeHoursMs));
    });
  });
}
