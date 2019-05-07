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

import 'dart:math';

import 'package:charts_common/src/chart/cartesian/axis/axis.dart';
import 'package:charts_common/src/chart/cartesian/cartesian_chart.dart';
import 'package:charts_common/src/chart/common/chart_canvas.dart';
import 'package:charts_common/src/chart/common/processed_series.dart';
import 'package:charts_common/src/chart/line/line_renderer.dart';
import 'package:charts_common/src/chart/line/line_renderer_config.dart';
import 'package:charts_common/src/common/color.dart';
import 'package:charts_common/src/data/series.dart';

import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

/// Datum/Row for the chart.
class MyRow {
  final int timestamp;
  int clickCount;
  MyRow(this.timestamp, this.clickCount);
}

// TODO: Test in RTL context as well.

class MockChart extends Mock implements CartesianChart {}

class MockDomainAxis extends Mock implements Axis<int> {}

class MockMeasureAxis extends Mock implements Axis<num> {}

class MockCanvas extends Mock implements ChartCanvas {}

void main() {
  /////////////////////////////////////////
  // Convenience methods for creating mocks.
  /////////////////////////////////////////
  MutableSeries<int> _makeSeries({String id, int measureOffset = 0}) {
    final data = <MyRow>[
      new MyRow(1000, measureOffset + 10),
      new MyRow(2000, measureOffset + 20),
      new MyRow(3000, measureOffset + 30),
    ];

    final series = new MutableSeries<int>(new Series<MyRow, int>(
      id: id,
      data: data,
      domainFn: (MyRow row, _) => row.timestamp,
      measureFn: (MyRow row, _) => row.clickCount,
    ));

    series.measureOffsetFn = (_) => 0.0;
    series.colorFn = (_) => new Color.fromHex(code: '#000000');

    // Mock the Domain axis results.
    final domainAxis = new MockDomainAxis();
    when(domainAxis.rangeBand).thenReturn(100.0);
    when(domainAxis.getLocation(1000)).thenReturn(70.0);
    when(domainAxis.getLocation(2000)).thenReturn(70.0 + 100);
    when(domainAxis.getLocation(3000)).thenReturn(70.0 + 200.0);
    series.setAttr(domainAxisKey, domainAxis);

    // Mock the Measure axis results.
    final measureAxis = new MockMeasureAxis();
    for (var i = 0; i <= 100; i++) {
      when(measureAxis.getLocation(i.toDouble()))
          .thenReturn(20.0 + 100.0 - i.toDouble());
    }
    // Special case where measure is above drawArea.
    when(measureAxis.getLocation(500)).thenReturn(20.0 + 100.0 - 500);

    series.setAttr(measureAxisKey, measureAxis);

    return series;
  }

  LineRenderer<int> renderer;

  bool selectNearestByDomain;

  setUp(() {
    selectNearestByDomain = true;

    renderer = new LineRenderer<int>(
        config: new LineRendererConfig(strokeWidthPx: 1.0));
    final layoutBounds = new Rectangle<int>(70, 20, 200, 100);
    renderer.layout(layoutBounds, layoutBounds);
    return renderer;
  });

  /////////////////////////////////////////
  // Additional edge test cases
  /////////////////////////////////////////
  group('edge cases', () {
    test('hit target with missing data in series still selects others', () {
      // Setup
      final seriesList = <MutableSeries<int>>[
        _makeSeries(id: 'foo')..data.clear(),
        _makeSeries(id: 'bar'),
      ];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act Point just below barSeries.data[0]
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 10.0, 20.0 + 100.0 - 5.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(1));

      final closest = details[0];
      expect(closest.domain, equals(1000));
      expect(closest.series.id, equals('bar'));
      expect(closest.datum, equals(seriesList[1].data[0]));
      expect(closest.domainDistance, equals(10));
      expect(closest.measureDistance, equals(5));
    });

    test('all series without data is skipped', () {
      // Setup
      final seriesList = <MutableSeries<int>>[
        _makeSeries(id: 'foo')..data.clear(),
        _makeSeries(id: 'bar')..data.clear(),
      ];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 10.0, 20.0 + 100.0 - 5.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(0));
    });

    test('single overlay series is skipped', () {
      // Setup
      final seriesList = <MutableSeries<int>>[
        _makeSeries(id: 'foo')..overlaySeries = true,
        _makeSeries(id: 'bar'),
      ];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 10.0, 20.0 + 100.0 - 5.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(1));

      final closest = details[0];
      expect(closest.domain, equals(1000));
      expect(closest.series.id, equals('bar'));
      expect(closest.datum, equals(seriesList[1].data[0]));
      expect(closest.domainDistance, equals(10));
      expect(closest.measureDistance, equals(5));
    });

    test('all overlay series is skipped', () {
      // Setup
      final seriesList = <MutableSeries<int>>[
        _makeSeries(id: 'foo')..overlaySeries = true,
        _makeSeries(id: 'bar')..overlaySeries = true,
      ];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 10.0, 20.0 + 100.0 - 5.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(0));
    });
  });

  /////////////////////////////////////////
  // Vertical BarRenderer
  /////////////////////////////////////////
  group('LineRenderer', () {
    test('hit test works', () {
      // Setup
      final seriesList = <MutableSeries<int>>[_makeSeries(id: 'foo')];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 10.0, 20.0 + 100.0 - 5.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(1));
      final closest = details[0];
      expect(closest.domain, equals(1000));
      expect(closest.series, equals(seriesList[0]));
      expect(closest.datum, equals(seriesList[0].data[0]));
      expect(closest.domainDistance, equals(10));
      expect(closest.measureDistance, equals(5));
    });

    test('hit test expands to multiple series', () {
      // Setup bar series is 20 measure higher than foo.
      final seriesList = <MutableSeries<int>>[
        _makeSeries(id: 'foo'),
        _makeSeries(id: 'bar', measureOffset: 20),
      ];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 10.0, 20.0 + 100.0 - 5.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(2));

      final closest = details[0];
      expect(closest.domain, equals(1000));
      expect(closest.series.id, equals('foo'));
      expect(closest.datum, equals(seriesList[0].data[0]));
      expect(closest.domainDistance, equals(10));
      expect(closest.measureDistance, equals(5));

      final next = details[1];
      expect(next.domain, equals(1000));
      expect(next.series.id, equals('bar'));
      expect(next.datum, equals(seriesList[1].data[0]));
      expect(next.domainDistance, equals(10));
      expect(next.measureDistance, equals(25)); // 20offset + 10measure - 5pt
    });

    test('hit test expands with missing data in series', () {
      // Setup bar series is 20 measure higher than foo and is missing the
      // middle point.
      final seriesList = <MutableSeries<int>>[
        _makeSeries(id: 'foo'),
        _makeSeries(id: 'bar', measureOffset: 20)..data.removeAt(1),
      ];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 100.0 + 10.0, 20.0 + 100.0 - 5.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(2));

      final closest = details[0];
      expect(closest.domain, equals(2000));
      expect(closest.series.id, equals('foo'));
      expect(closest.datum, equals(seriesList[0].data[1]));
      expect(closest.domainDistance, equals(10));
      expect(closest.measureDistance, equals(15));

      // bar series jumps to last point since it is missing middle.
      final next = details[1];
      expect(next.domain, equals(3000));
      expect(next.series.id, equals('bar'));
      expect(next.datum, equals(seriesList[1].data[1]));
      expect(next.domainDistance, equals(90));
      expect(next.measureDistance, equals(45.0));
    });

    test('hit test works for points above drawArea', () {
      // Setup
      final seriesList = <MutableSeries<int>>[
        _makeSeries(id: 'foo')..data[1].clickCount = 500
      ];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 100.0 + 10.0, 20.0 + 10.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(1));
      final closest = details[0];
      expect(closest.domain, equals(2000));
      expect(closest.series, equals(seriesList[0]));
      expect(closest.datum, equals(seriesList[0].data[1]));
      expect(closest.domainDistance, equals(10));
      expect(closest.measureDistance, equals(410)); // 500 - 100 + 10
    });

    test('no selection for points outside of viewport', () {
      // Setup
      final seriesList = <MutableSeries<int>>[
        _makeSeries(id: 'foo')..data.add(new MyRow(-1000, 20))
      ];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      // Note: point is in the axis, over a bar outside of the viewport.
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(-0.0, 20.0 + 100.0 - 5.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(0));
    });
  });
}
