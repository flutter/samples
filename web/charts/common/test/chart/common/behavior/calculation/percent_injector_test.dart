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

import 'package:charts_common/src/chart/cartesian/cartesian_chart.dart';
import 'package:charts_common/src/chart/common/base_chart.dart';
import 'package:charts_common/src/chart/common/processed_series.dart'
    show MutableSeries;
import 'package:charts_common/src/chart/common/behavior/calculation/percent_injector.dart';
import 'package:charts_common/src/data/series.dart' show Series;

import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

/// Datum/Row for the chart.
class MyRow {
  final String campaign;
  final int clickCount;
  final int clickCountLower;
  final int clickCountUpper;
  MyRow(this.campaign, this.clickCount, this.clickCountLower,
      this.clickCountUpper);
}

class MockChart extends Mock implements CartesianChart {
  LifecycleListener lastLifecycleListener;

  bool vertical = true;

  @override
  addLifecycleListener(LifecycleListener listener) =>
      lastLifecycleListener = listener;

  @override
  removeLifecycleListener(LifecycleListener listener) {
    expect(listener, equals(lastLifecycleListener));
    lastLifecycleListener = null;
    return true;
  }
}

void main() {
  MockChart _chart;
  List<MutableSeries<String>> seriesList;

  PercentInjector _makeBehavior(
      {PercentInjectorTotalType totalType = PercentInjectorTotalType.domain}) {
    final behavior = new PercentInjector(totalType: totalType);

    behavior.attachTo(_chart);

    return behavior;
  }

  setUp(() {
    _chart = new MockChart();

    final myFakeDesktopAData = [
      new MyRow('MyCampaign1', 1, 1, 1),
      new MyRow('MyCampaign2', 2, 2, 2),
      new MyRow('MyCampaign3', 3, 3, 3),
    ];

    final myFakeTabletAData = [
      new MyRow('MyCampaign1', 2, 2, 2),
      new MyRow('MyCampaign2', 3, 3, 3),
      new MyRow('MyCampaign3', 4, 4, 4),
    ];

    final myFakeMobileAData = [
      new MyRow('MyCampaign1', 3, 3, 3),
      new MyRow('MyCampaign2', 4, 4, 4),
      new MyRow('MyCampaign3', 5, 5, 5),
    ];

    final myFakeDesktopBData = [
      new MyRow('MyCampaign1', 10, 8, 12),
      new MyRow('MyCampaign2', 20, 18, 22),
      new MyRow('MyCampaign3', 30, 28, 32),
    ];

    final myFakeTabletBData = [
      new MyRow('MyCampaign1', 20, 18, 22),
      new MyRow('MyCampaign2', 30, 28, 32),
      new MyRow('MyCampaign3', 40, 38, 42),
    ];

    final myFakeMobileBData = [
      new MyRow('MyCampaign1', 30, 28, 32),
      new MyRow('MyCampaign2', 40, 38, 42),
      new MyRow('MyCampaign3', 50, 48, 52),
    ];

    seriesList = [
      new MutableSeries<String>(new Series<MyRow, String>(
          id: 'Desktop A',
          seriesCategory: 'A',
          domainFn: (MyRow row, _) => row.campaign,
          measureFn: (MyRow row, _) => row.clickCount,
          measureOffsetFn: (MyRow row, _) => 0,
          data: myFakeDesktopAData)),
      new MutableSeries<String>(new Series<MyRow, String>(
          id: 'Tablet A',
          seriesCategory: 'A',
          domainFn: (MyRow row, _) => row.campaign,
          measureFn: (MyRow row, _) => row.clickCount,
          measureOffsetFn: (MyRow row, _) => 0,
          data: myFakeTabletAData)),
      new MutableSeries<String>(new Series<MyRow, String>(
          id: 'Mobile A',
          seriesCategory: 'A',
          domainFn: (MyRow row, _) => row.campaign,
          measureFn: (MyRow row, _) => row.clickCount,
          measureOffsetFn: (MyRow row, _) => 0,
          data: myFakeMobileAData)),
      new MutableSeries<String>(new Series<MyRow, String>(
          id: 'Desktop B',
          seriesCategory: 'B',
          domainFn: (MyRow row, _) => row.campaign,
          measureFn: (MyRow row, _) => row.clickCount,
          measureLowerBoundFn: (MyRow row, _) => row.clickCountLower,
          measureUpperBoundFn: (MyRow row, _) => row.clickCountUpper,
          measureOffsetFn: (MyRow row, _) => 0,
          data: myFakeDesktopBData)),
      new MutableSeries<String>(new Series<MyRow, String>(
          id: 'Tablet B',
          seriesCategory: 'B',
          domainFn: (MyRow row, _) => row.campaign,
          measureFn: (MyRow row, _) => row.clickCount,
          measureLowerBoundFn: (MyRow row, _) => row.clickCountLower,
          measureUpperBoundFn: (MyRow row, _) => row.clickCountUpper,
          measureOffsetFn: (MyRow row, _) => 0,
          data: myFakeTabletBData)),
      new MutableSeries<String>(new Series<MyRow, String>(
          id: 'Mobile B',
          seriesCategory: 'B',
          domainFn: (MyRow row, _) => row.campaign,
          measureFn: (MyRow row, _) => row.clickCount,
          measureLowerBoundFn: (MyRow row, _) => row.clickCountLower,
          measureUpperBoundFn: (MyRow row, _) => row.clickCountUpper,
          measureOffsetFn: (MyRow row, _) => 0,
          data: myFakeMobileBData))
    ];
  });

  group('Inject', () {
    test('percent of domain', () {
      // Setup behavior.
      _makeBehavior(totalType: PercentInjectorTotalType.domain);

      // Act
      _chart.lastLifecycleListener.onData(seriesList);
      _chart.lastLifecycleListener.onPreprocess(seriesList);

      // Verify first series.
      var series = seriesList[0];

      expect(series.measureFn(0), equals(1 / 66));
      expect(series.measureFn(1), equals(2 / 99));
      expect(series.measureFn(2), equals(3 / 132));

      expect(series.rawMeasureFn(0), equals(1));
      expect(series.rawMeasureFn(1), equals(2));
      expect(series.rawMeasureFn(2), equals(3));

      // Verify second series.
      series = seriesList[1];

      expect(series.measureFn(0), equals(2 / 66));
      expect(series.measureFn(1), equals(3 / 99));
      expect(series.measureFn(2), equals(4 / 132));

      expect(series.rawMeasureFn(0), equals(2));
      expect(series.rawMeasureFn(1), equals(3));
      expect(series.rawMeasureFn(2), equals(4));

      // Verify third series.
      series = seriesList[2];

      expect(series.measureFn(0), equals(3 / 66));
      expect(series.measureFn(1), equals(4 / 99));
      expect(series.measureFn(2), equals(5 / 132));

      expect(series.rawMeasureFn(0), equals(3));
      expect(series.rawMeasureFn(1), equals(4));
      expect(series.rawMeasureFn(2), equals(5));

      // Verify fourth series.
      series = seriesList[3];

      expect(series.measureFn(0), equals(10 / 66));
      expect(series.measureFn(1), equals(20 / 99));
      expect(series.measureFn(2), equals(30 / 132));

      expect(series.rawMeasureFn(0), equals(10));
      expect(series.rawMeasureFn(1), equals(20));
      expect(series.rawMeasureFn(2), equals(30));

      expect(series.measureLowerBoundFn(0), equals(8 / 66));
      expect(series.measureLowerBoundFn(1), equals(18 / 99));
      expect(series.measureLowerBoundFn(2), equals(28 / 132));

      expect(series.rawMeasureLowerBoundFn(0), equals(8));
      expect(series.rawMeasureLowerBoundFn(1), equals(18));
      expect(series.rawMeasureLowerBoundFn(2), equals(28));

      expect(series.measureUpperBoundFn(0), equals(12 / 66));
      expect(series.measureUpperBoundFn(1), equals(22 / 99));
      expect(series.measureUpperBoundFn(2), equals(32 / 132));

      expect(series.rawMeasureUpperBoundFn(0), equals(12));
      expect(series.rawMeasureUpperBoundFn(1), equals(22));
      expect(series.rawMeasureUpperBoundFn(2), equals(32));

      // Verify fifth series.
      series = seriesList[4];

      expect(series.measureFn(0), equals(20 / 66));
      expect(series.measureFn(1), equals(30 / 99));
      expect(series.measureFn(2), equals(40 / 132));

      expect(series.rawMeasureFn(0), equals(20));
      expect(series.rawMeasureFn(1), equals(30));
      expect(series.rawMeasureFn(2), equals(40));

      expect(series.measureLowerBoundFn(0), equals(18 / 66));
      expect(series.measureLowerBoundFn(1), equals(28 / 99));
      expect(series.measureLowerBoundFn(2), equals(38 / 132));

      expect(series.rawMeasureLowerBoundFn(0), equals(18));
      expect(series.rawMeasureLowerBoundFn(1), equals(28));
      expect(series.rawMeasureLowerBoundFn(2), equals(38));

      expect(series.measureUpperBoundFn(0), equals(22 / 66));
      expect(series.measureUpperBoundFn(1), equals(32 / 99));
      expect(series.measureUpperBoundFn(2), equals(42 / 132));

      expect(series.rawMeasureUpperBoundFn(0), equals(22));
      expect(series.rawMeasureUpperBoundFn(1), equals(32));
      expect(series.rawMeasureUpperBoundFn(2), equals(42));

      // Verify sixth series.
      series = seriesList[5];

      expect(series.measureFn(0), equals(30 / 66));
      expect(series.measureFn(1), equals(40 / 99));
      expect(series.measureFn(2), equals(50 / 132));

      expect(series.rawMeasureFn(0), equals(30));
      expect(series.rawMeasureFn(1), equals(40));
      expect(series.rawMeasureFn(2), equals(50));

      expect(series.measureLowerBoundFn(0), equals(28 / 66));
      expect(series.measureLowerBoundFn(1), equals(38 / 99));
      expect(series.measureLowerBoundFn(2), equals(48 / 132));

      expect(series.rawMeasureLowerBoundFn(0), equals(28));
      expect(series.rawMeasureLowerBoundFn(1), equals(38));
      expect(series.rawMeasureLowerBoundFn(2), equals(48));

      expect(series.measureUpperBoundFn(0), equals(32 / 66));
      expect(series.measureUpperBoundFn(1), equals(42 / 99));
      expect(series.measureUpperBoundFn(2), equals(52 / 132));

      expect(series.rawMeasureUpperBoundFn(0), equals(32));
      expect(series.rawMeasureUpperBoundFn(1), equals(42));
      expect(series.rawMeasureUpperBoundFn(2), equals(52));
    });

    test('percent of domain, grouped by series category', () {
      // Setup behavior.
      _makeBehavior(totalType: PercentInjectorTotalType.domainBySeriesCategory);

      // Act
      _chart.lastLifecycleListener.onData(seriesList);
      _chart.lastLifecycleListener.onPreprocess(seriesList);

      // Verify first series.
      var series = seriesList[0];

      expect(series.measureFn(0), equals(1 / 6));
      expect(series.measureFn(1), equals(2 / 9));
      expect(series.measureFn(2), equals(3 / 12));

      expect(series.rawMeasureFn(0), equals(1));
      expect(series.rawMeasureFn(1), equals(2));
      expect(series.rawMeasureFn(2), equals(3));

      // Verify second series.
      series = seriesList[1];

      expect(series.measureFn(0), equals(2 / 6));
      expect(series.measureFn(1), equals(3 / 9));
      expect(series.measureFn(2), equals(4 / 12));

      expect(series.rawMeasureFn(0), equals(2));
      expect(series.rawMeasureFn(1), equals(3));
      expect(series.rawMeasureFn(2), equals(4));

      // Verify third series.
      series = seriesList[2];

      expect(series.measureFn(0), equals(3 / 6));
      expect(series.measureFn(1), equals(4 / 9));
      expect(series.measureFn(2), equals(5 / 12));

      expect(series.rawMeasureFn(0), equals(3));
      expect(series.rawMeasureFn(1), equals(4));
      expect(series.rawMeasureFn(2), equals(5));

      // Verify fourth series.
      series = seriesList[3];

      expect(series.measureFn(0), equals(10 / 60));
      expect(series.measureFn(1), equals(20 / 90));
      expect(series.measureFn(2), equals(30 / 120));

      expect(series.rawMeasureFn(0), equals(10));
      expect(series.rawMeasureFn(1), equals(20));
      expect(series.rawMeasureFn(2), equals(30));

      expect(series.measureLowerBoundFn(0), equals(8 / 60));
      expect(series.measureLowerBoundFn(1), equals(18 / 90));
      expect(series.measureLowerBoundFn(2), equals(28 / 120));

      expect(series.rawMeasureLowerBoundFn(0), equals(8));
      expect(series.rawMeasureLowerBoundFn(1), equals(18));
      expect(series.rawMeasureLowerBoundFn(2), equals(28));

      expect(series.measureUpperBoundFn(0), equals(12 / 60));
      expect(series.measureUpperBoundFn(1), equals(22 / 90));
      expect(series.measureUpperBoundFn(2), equals(32 / 120));

      expect(series.rawMeasureUpperBoundFn(0), equals(12));
      expect(series.rawMeasureUpperBoundFn(1), equals(22));
      expect(series.rawMeasureUpperBoundFn(2), equals(32));

      // Verify fifth series.
      series = seriesList[4];

      expect(series.measureFn(0), equals(20 / 60));
      expect(series.measureFn(1), equals(30 / 90));
      expect(series.measureFn(2), equals(40 / 120));

      expect(series.rawMeasureFn(0), equals(20));
      expect(series.rawMeasureFn(1), equals(30));
      expect(series.rawMeasureFn(2), equals(40));

      expect(series.measureLowerBoundFn(0), equals(18 / 60));
      expect(series.measureLowerBoundFn(1), equals(28 / 90));
      expect(series.measureLowerBoundFn(2), equals(38 / 120));

      expect(series.rawMeasureLowerBoundFn(0), equals(18));
      expect(series.rawMeasureLowerBoundFn(1), equals(28));
      expect(series.rawMeasureLowerBoundFn(2), equals(38));

      expect(series.measureUpperBoundFn(0), equals(22 / 60));
      expect(series.measureUpperBoundFn(1), equals(32 / 90));
      expect(series.measureUpperBoundFn(2), equals(42 / 120));

      expect(series.rawMeasureUpperBoundFn(0), equals(22));
      expect(series.rawMeasureUpperBoundFn(1), equals(32));
      expect(series.rawMeasureUpperBoundFn(2), equals(42));

      // Verify sixth series.
      series = seriesList[5];

      expect(series.measureFn(0), equals(30 / 60));
      expect(series.measureFn(1), equals(40 / 90));
      expect(series.measureFn(2), equals(50 / 120));

      expect(series.rawMeasureFn(0), equals(30));
      expect(series.rawMeasureFn(1), equals(40));
      expect(series.rawMeasureFn(2), equals(50));

      expect(series.measureLowerBoundFn(0), equals(28 / 60));
      expect(series.measureLowerBoundFn(1), equals(38 / 90));
      expect(series.measureLowerBoundFn(2), equals(48 / 120));

      expect(series.rawMeasureLowerBoundFn(0), equals(28));
      expect(series.rawMeasureLowerBoundFn(1), equals(38));
      expect(series.rawMeasureLowerBoundFn(2), equals(48));

      expect(series.measureUpperBoundFn(0), equals(32 / 60));
      expect(series.measureUpperBoundFn(1), equals(42 / 90));
      expect(series.measureUpperBoundFn(2), equals(52 / 120));

      expect(series.rawMeasureUpperBoundFn(0), equals(32));
      expect(series.rawMeasureUpperBoundFn(1), equals(42));
      expect(series.rawMeasureUpperBoundFn(2), equals(52));
    });

    test('percent of series', () {
      // Setup behavior.
      _makeBehavior(totalType: PercentInjectorTotalType.series);

      // Act
      _chart.lastLifecycleListener.onData(seriesList);
      _chart.lastLifecycleListener.onPreprocess(seriesList);

      // Verify that every series has a total measure value. Technically this is
      // handled in MutableSeries, but it is a pre-condition for this behavior
      // functioning properly.
      expect(seriesList[0].seriesMeasureTotal, equals(6));
      expect(seriesList[1].seriesMeasureTotal, equals(9));
      expect(seriesList[2].seriesMeasureTotal, equals(12));
      expect(seriesList[3].seriesMeasureTotal, equals(60));
      expect(seriesList[4].seriesMeasureTotal, equals(90));
      expect(seriesList[5].seriesMeasureTotal, equals(120));

      // Verify first series.
      var series = seriesList[0];

      expect(series.measureFn(0), equals(1 / 6));
      expect(series.measureFn(1), equals(2 / 6));
      expect(series.measureFn(2), equals(3 / 6));

      expect(series.rawMeasureFn(0), equals(1));
      expect(series.rawMeasureFn(1), equals(2));
      expect(series.rawMeasureFn(2), equals(3));

      // Verify second series.
      series = seriesList[1];

      expect(series.measureFn(0), equals(2 / 9));
      expect(series.measureFn(1), equals(3 / 9));
      expect(series.measureFn(2), equals(4 / 9));

      expect(series.rawMeasureFn(0), equals(2));
      expect(series.rawMeasureFn(1), equals(3));
      expect(series.rawMeasureFn(2), equals(4));

      // Verify third series.
      series = seriesList[2];

      expect(series.measureFn(0), equals(3 / 12));
      expect(series.measureFn(1), equals(4 / 12));
      expect(series.measureFn(2), equals(5 / 12));

      expect(series.rawMeasureFn(0), equals(3));
      expect(series.rawMeasureFn(1), equals(4));
      expect(series.rawMeasureFn(2), equals(5));

      // Verify fourth series.
      series = seriesList[3];

      expect(series.measureFn(0), equals(10 / 60));
      expect(series.measureFn(1), equals(20 / 60));
      expect(series.measureFn(2), equals(30 / 60));

      expect(series.rawMeasureFn(0), equals(10));
      expect(series.rawMeasureFn(1), equals(20));
      expect(series.rawMeasureFn(2), equals(30));

      expect(series.measureLowerBoundFn(0), equals(8 / 60));
      expect(series.measureLowerBoundFn(1), equals(18 / 60));
      expect(series.measureLowerBoundFn(2), equals(28 / 60));

      expect(series.rawMeasureLowerBoundFn(0), equals(8));
      expect(series.rawMeasureLowerBoundFn(1), equals(18));
      expect(series.rawMeasureLowerBoundFn(2), equals(28));

      expect(series.measureUpperBoundFn(0), equals(12 / 60));
      expect(series.measureUpperBoundFn(1), equals(22 / 60));
      expect(series.measureUpperBoundFn(2), equals(32 / 60));

      expect(series.rawMeasureUpperBoundFn(0), equals(12));
      expect(series.rawMeasureUpperBoundFn(1), equals(22));
      expect(series.rawMeasureUpperBoundFn(2), equals(32));

      // Verify fifth series.
      series = seriesList[4];

      expect(series.measureFn(0), equals(20 / 90));
      expect(series.measureFn(1), equals(30 / 90));
      expect(series.measureFn(2), equals(40 / 90));

      expect(series.rawMeasureFn(0), equals(20));
      expect(series.rawMeasureFn(1), equals(30));
      expect(series.rawMeasureFn(2), equals(40));

      expect(series.measureLowerBoundFn(0), equals(18 / 90));
      expect(series.measureLowerBoundFn(1), equals(28 / 90));
      expect(series.measureLowerBoundFn(2), equals(38 / 90));

      expect(series.rawMeasureLowerBoundFn(0), equals(18));
      expect(series.rawMeasureLowerBoundFn(1), equals(28));
      expect(series.rawMeasureLowerBoundFn(2), equals(38));

      expect(series.measureUpperBoundFn(0), equals(22 / 90));
      expect(series.measureUpperBoundFn(1), equals(32 / 90));
      expect(series.measureUpperBoundFn(2), equals(42 / 90));

      expect(series.rawMeasureUpperBoundFn(0), equals(22));
      expect(series.rawMeasureUpperBoundFn(1), equals(32));
      expect(series.rawMeasureUpperBoundFn(2), equals(42));

      // Verify sixth series.
      series = seriesList[5];

      expect(series.measureFn(0), equals(30 / 120));
      expect(series.measureFn(1), equals(40 / 120));
      expect(series.measureFn(2), equals(50 / 120));

      expect(series.rawMeasureFn(0), equals(30));
      expect(series.rawMeasureFn(1), equals(40));
      expect(series.rawMeasureFn(2), equals(50));

      expect(series.measureLowerBoundFn(0), equals(28 / 120));
      expect(series.measureLowerBoundFn(1), equals(38 / 120));
      expect(series.measureLowerBoundFn(2), equals(48 / 120));

      expect(series.rawMeasureLowerBoundFn(0), equals(28));
      expect(series.rawMeasureLowerBoundFn(1), equals(38));
      expect(series.rawMeasureLowerBoundFn(2), equals(48));

      expect(series.measureUpperBoundFn(0), equals(32 / 120));
      expect(series.measureUpperBoundFn(1), equals(42 / 120));
      expect(series.measureUpperBoundFn(2), equals(52 / 120));

      expect(series.rawMeasureUpperBoundFn(0), equals(32));
      expect(series.rawMeasureUpperBoundFn(1), equals(42));
      expect(series.rawMeasureUpperBoundFn(2), equals(52));
    });
  });

  group('Life cycle', () {
    test('sets injected flag for percent of domain', () {
      // Setup behavior.
      _makeBehavior(totalType: PercentInjectorTotalType.domain);

      // Act
      _chart.lastLifecycleListener.onData(seriesList);

      // Verify that each series has an initially false flag.
      expect(seriesList[0].getAttr(percentInjectedKey), isFalse);
      expect(seriesList[1].getAttr(percentInjectedKey), isFalse);
      expect(seriesList[2].getAttr(percentInjectedKey), isFalse);
      expect(seriesList[3].getAttr(percentInjectedKey), isFalse);
      expect(seriesList[4].getAttr(percentInjectedKey), isFalse);
      expect(seriesList[5].getAttr(percentInjectedKey), isFalse);

      // Act
      _chart.lastLifecycleListener.onPreprocess(seriesList);

      // Verify that each series has a true flag.
      expect(seriesList[0].getAttr(percentInjectedKey), isTrue);
      expect(seriesList[1].getAttr(percentInjectedKey), isTrue);
      expect(seriesList[2].getAttr(percentInjectedKey), isTrue);
      expect(seriesList[3].getAttr(percentInjectedKey), isTrue);
      expect(seriesList[4].getAttr(percentInjectedKey), isTrue);
      expect(seriesList[5].getAttr(percentInjectedKey), isTrue);
    });

    test('sets injected flag for percent of series', () {
      // Setup behavior.
      _makeBehavior(totalType: PercentInjectorTotalType.series);

      // Act
      _chart.lastLifecycleListener.onData(seriesList);

      // Verify that each series has an initially false flag.
      expect(seriesList[0].getAttr(percentInjectedKey), isFalse);
      expect(seriesList[1].getAttr(percentInjectedKey), isFalse);
      expect(seriesList[2].getAttr(percentInjectedKey), isFalse);
      expect(seriesList[3].getAttr(percentInjectedKey), isFalse);
      expect(seriesList[4].getAttr(percentInjectedKey), isFalse);
      expect(seriesList[5].getAttr(percentInjectedKey), isFalse);

      // Act
      _chart.lastLifecycleListener.onPreprocess(seriesList);

      // Verify that each series has a true flag.
      expect(seriesList[0].getAttr(percentInjectedKey), isTrue);
      expect(seriesList[1].getAttr(percentInjectedKey), isTrue);
      expect(seriesList[2].getAttr(percentInjectedKey), isTrue);
      expect(seriesList[3].getAttr(percentInjectedKey), isTrue);
      expect(seriesList[4].getAttr(percentInjectedKey), isTrue);
      expect(seriesList[5].getAttr(percentInjectedKey), isTrue);
    });
  });
}
