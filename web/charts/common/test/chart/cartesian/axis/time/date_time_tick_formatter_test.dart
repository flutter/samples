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

import 'package:charts_common/src/chart/cartesian/axis/time/time_tick_formatter.dart';
import 'package:charts_common/src/chart/cartesian/axis/time/date_time_tick_formatter.dart';
import 'package:test/test.dart';

const EPSILON = 0.001;

typedef bool IsTransitionFunction(DateTime tickValue, DateTime prevTickValue);

class FakeTimeTickFormatter implements TimeTickFormatter {
  static const firstTick = '-firstTick-';
  static const simpleTick = '-simpleTick-';
  static const transitionTick = '-transitionTick-';
  static final transitionAlwaysFalse = (_, __) => false;

  final String id;
  final IsTransitionFunction isTransitionFunction;

  FakeTimeTickFormatter(this.id, {IsTransitionFunction isTransitionFunction})
      : isTransitionFunction = isTransitionFunction ?? transitionAlwaysFalse;

  @override
  String formatFirstTick(DateTime date) =>
      id + firstTick + date.millisecondsSinceEpoch.toString();

  @override
  String formatSimpleTick(DateTime date) =>
      id + simpleTick + date.millisecondsSinceEpoch.toString();

  @override
  String formatTransitionTick(DateTime date) =>
      id + transitionTick + date.millisecondsSinceEpoch.toString();

  @override
  bool isTransition(DateTime tickValue, DateTime prevTickValue) =>
      isTransitionFunction(tickValue, prevTickValue);
}

void main() {
  TimeTickFormatter timeFormatter1;
  TimeTickFormatter timeFormatter2;
  TimeTickFormatter timeFormatter3;

  setUp(() {
    timeFormatter1 = new FakeTimeTickFormatter('fake1');
    timeFormatter2 = new FakeTimeTickFormatter('fake2');
    timeFormatter3 = new FakeTimeTickFormatter('fake3');
  });

  group('Uses formatter', () {
    test('with largest interval less than diff between tickValues', () {
      final formatter = new DateTimeTickFormatter.withFormatters(
          {10: timeFormatter1, 100: timeFormatter2, 1000: timeFormatter3});
      final formatterCache = <DateTime, String>{};

      final ticksWith10Diff = [
        new DateTime.fromMillisecondsSinceEpoch(0),
        new DateTime.fromMillisecondsSinceEpoch(10),
        new DateTime.fromMillisecondsSinceEpoch(20)
      ];
      final ticksWith20Diff = [
        new DateTime.fromMillisecondsSinceEpoch(0),
        new DateTime.fromMillisecondsSinceEpoch(20),
        new DateTime.fromMillisecondsSinceEpoch(40)
      ];
      final ticksWith100Diff = [
        new DateTime.fromMillisecondsSinceEpoch(0),
        new DateTime.fromMillisecondsSinceEpoch(100),
        new DateTime.fromMillisecondsSinceEpoch(200)
      ];
      final ticksWith200Diff = [
        new DateTime.fromMillisecondsSinceEpoch(0),
        new DateTime.fromMillisecondsSinceEpoch(200),
        new DateTime.fromMillisecondsSinceEpoch(400)
      ];
      final ticksWith1000Diff = [
        new DateTime.fromMillisecondsSinceEpoch(0),
        new DateTime.fromMillisecondsSinceEpoch(1000),
        new DateTime.fromMillisecondsSinceEpoch(2000)
      ];

      final expectedLabels10Diff = [
        'fake1-firstTick-0',
        'fake1-simpleTick-10',
        'fake1-simpleTick-20'
      ];
      final expectedLabels20Diff = [
        'fake1-firstTick-0',
        'fake1-simpleTick-20',
        'fake1-simpleTick-40'
      ];
      final expectedLabels100Diff = [
        'fake2-firstTick-0',
        'fake2-simpleTick-100',
        'fake2-simpleTick-200'
      ];
      final expectedLabels200Diff = [
        'fake2-firstTick-0',
        'fake2-simpleTick-200',
        'fake2-simpleTick-400'
      ];
      final expectedLabels1000Diff = [
        'fake3-firstTick-0',
        'fake3-simpleTick-1000',
        'fake3-simpleTick-2000'
      ];

      final actualLabelsWith10Diff =
          formatter.format(ticksWith10Diff, formatterCache, stepSize: 10);
      final actualLabelsWith20Diff =
          formatter.format(ticksWith20Diff, formatterCache, stepSize: 20);
      final actualLabelsWith100Diff =
          formatter.format(ticksWith100Diff, formatterCache, stepSize: 100);
      final actualLabelsWith200Diff =
          formatter.format(ticksWith200Diff, formatterCache, stepSize: 200);
      final actualLabelsWith1000Diff =
          formatter.format(ticksWith1000Diff, formatterCache, stepSize: 1000);

      expect(actualLabelsWith10Diff, equals(expectedLabels10Diff));
      expect(actualLabelsWith20Diff, equals(expectedLabels20Diff));

      expect(actualLabelsWith100Diff, equals(expectedLabels100Diff));
      expect(actualLabelsWith200Diff, equals(expectedLabels200Diff));
      expect(actualLabelsWith1000Diff, equals(expectedLabels1000Diff));
    });

    test('with smallest interval when no smaller one exists', () {
      final formatter = new DateTimeTickFormatter.withFormatters(
          {10: timeFormatter1, 100: timeFormatter2});
      final formatterCache = <DateTime, String>{};

      final ticks = [
        new DateTime.fromMillisecondsSinceEpoch(0),
        new DateTime.fromMillisecondsSinceEpoch(1),
        new DateTime.fromMillisecondsSinceEpoch(2)
      ];
      final expectedLabels = [
        'fake1-firstTick-0',
        'fake1-simpleTick-1',
        'fake1-simpleTick-2'
      ];
      final actualLabels = formatter.format(ticks, formatterCache, stepSize: 1);

      expect(actualLabels, equals(expectedLabels));
    });

    test('with smallest interval for single tick input', () {
      final formatter = new DateTimeTickFormatter.withFormatters(
          {10: timeFormatter1, 100: timeFormatter2});
      final formatterCache = <DateTime, String>{};

      final ticks = [new DateTime.fromMillisecondsSinceEpoch(5000)];
      final expectedLabels = ['fake1-firstTick-5000'];
      final actualLabels = formatter.format(ticks, formatterCache, stepSize: 0);
      expect(actualLabels, equals(expectedLabels));
    });

    test('on empty input doesnt break', () {
      final formatter =
          new DateTimeTickFormatter.withFormatters({10: timeFormatter1});
      final formatterCache = <DateTime, String>{};

      final actualLabels =
          formatter.format(<DateTime>[], formatterCache, stepSize: 10);
      expect(actualLabels, isEmpty);
    });

    test('that formats transition tick with transition format', () {
      final timeFormatter = new FakeTimeTickFormatter('fake',
          isTransitionFunction: (DateTime tickValue, _) =>
              tickValue.millisecondsSinceEpoch == 20);
      final formatterCache = <DateTime, String>{};

      final formatter =
          new DateTimeTickFormatter.withFormatters({10: timeFormatter});

      final ticks = [
        new DateTime.fromMillisecondsSinceEpoch(0),
        new DateTime.fromMillisecondsSinceEpoch(10),
        new DateTime.fromMillisecondsSinceEpoch(20),
        new DateTime.fromMillisecondsSinceEpoch(30)
      ];

      final expectedLabels = [
        'fake-firstTick-0',
        'fake-simpleTick-10',
        'fake-transitionTick-20',
        'fake-simpleTick-30'
      ];
      final actualLabels =
          formatter.format(ticks, formatterCache, stepSize: 10);

      expect(actualLabels, equals(expectedLabels));
    });
  });

  group('check custom time tick formatters', () {
    test('throws arugment error if time resolution key is not positive', () {
      // -1 is reserved for any, if there is only one formatter, -1 is allowed.
      expect(
          () => new DateTimeTickFormatter.withFormatters(
              {-1: timeFormatter1, 2: timeFormatter2}),
          throwsArgumentError);
    });

    test('throws argument error if formatters is null or empty', () {
      expect(() => new DateTimeTickFormatter.withFormatters(null),
          throwsArgumentError);
      expect(() => new DateTimeTickFormatter.withFormatters({}),
          throwsArgumentError);
    });

    test('throws arugment error if formatters are not sorted', () {
      expect(
          () => new DateTimeTickFormatter.withFormatters({
                3: timeFormatter1,
                1: timeFormatter2,
                2: timeFormatter3,
              }),
          throwsArgumentError);

      expect(
          () => new DateTimeTickFormatter.withFormatters({
                1: timeFormatter1,
                3: timeFormatter2,
                2: timeFormatter3,
              }),
          throwsArgumentError);

      expect(
          () => new DateTimeTickFormatter.withFormatters({
                2: timeFormatter1,
                3: timeFormatter2,
                1: timeFormatter3,
              }),
          throwsArgumentError);
    });
  });
}
