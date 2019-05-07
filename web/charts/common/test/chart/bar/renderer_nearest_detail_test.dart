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

import 'package:charts_common/src/chart/bar/bar_renderer.dart';
import 'package:charts_common/src/chart/bar/bar_renderer_config.dart';
import 'package:charts_common/src/chart/bar/bar_target_line_renderer.dart';
import 'package:charts_common/src/chart/bar/bar_target_line_renderer_config.dart';
import 'package:charts_common/src/chart/bar/base_bar_renderer.dart';
import 'package:charts_common/src/chart/bar/base_bar_renderer_config.dart';
import 'package:charts_common/src/chart/cartesian/axis/axis.dart';
import 'package:charts_common/src/chart/cartesian/cartesian_chart.dart';
import 'package:charts_common/src/chart/common/chart_canvas.dart';
import 'package:charts_common/src/chart/common/chart_context.dart';
import 'package:charts_common/src/chart/common/processed_series.dart';
import 'package:charts_common/src/common/color.dart';
import 'package:charts_common/src/data/series.dart';

import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

/// Datum/Row for the chart.
class MyRow {
  final String campaign;
  final int clickCount;
  MyRow(this.campaign, this.clickCount);
}

/// Datum for the time series chart
class MyDateTimeRow {
  final DateTime time;
  final int clickCount;
  MyDateTimeRow(this.time, this.clickCount);
}

// TODO: Test in RTL context as well.

class MockContext extends Mock implements ChartContext {}

class MockChart extends Mock implements CartesianChart {}

class MockOrdinalAxis extends Mock implements OrdinalAxis {}

class MockNumericAxis extends Mock implements Axis<num> {}

class MockDateTimeAxis extends Mock implements Axis<DateTime> {}

class MockCanvas extends Mock implements ChartCanvas {}

void main() {
  final date0 = new DateTime(2018, 2, 1);
  final date1 = new DateTime(2018, 2, 7);
  final dateOutsideViewport = new DateTime(2018, 1, 1);

  /////////////////////////////////////////
  // Convenience methods for creating mocks.
  /////////////////////////////////////////
  _configureBaseRenderer(BaseBarRenderer renderer, bool vertical) {
    final context = new MockContext();
    when(context.chartContainerIsRtl).thenReturn(false);
    when(context.isRtl).thenReturn(false);
    final verticalChart = new MockChart();
    when(verticalChart.vertical).thenReturn(vertical);
    when(verticalChart.context).thenReturn(context);
    renderer.onAttach(verticalChart);

    final layoutBounds = vertical
        ? new Rectangle<int>(70, 20, 230, 100)
        : new Rectangle<int>(70, 20, 100, 230);
    renderer.layout(layoutBounds, layoutBounds);
    return renderer;
  }

  BaseBarRenderer _makeBarRenderer({bool vertical, BarGroupingType groupType}) {
    final renderer =
        new BarRenderer(config: new BarRendererConfig(groupingType: groupType));
    _configureBaseRenderer(renderer, vertical);
    return renderer;
  }

  BaseBarRenderer _makeBarTargetRenderer(
      {bool vertical, BarGroupingType groupType}) {
    final renderer = new BarTargetLineRenderer(
        config: new BarTargetLineRendererConfig(groupingType: groupType));
    _configureBaseRenderer(renderer, vertical);
    return renderer;
  }

  MutableSeries _makeSeries(
      {String id, String seriesCategory, bool vertical = true}) {
    final data = <MyRow>[
      new MyRow('camp0', 10),
      new MyRow('camp1', 10),
    ];

    final series = new MutableSeries<String>(new Series(
      id: id,
      data: data,
      domainFn: (dynamic row, _) => row.campaign,
      measureFn: (dynamic row, _) => row.clickCount,
      seriesCategory: seriesCategory,
    ));

    series.measureOffsetFn = (_) => 0.0;
    series.colorFn = (_) => new Color.fromHex(code: '#000000');

    // Mock the Domain axis results.
    final domainAxis = new MockOrdinalAxis();
    when(domainAxis.rangeBand).thenReturn(100.0);
    final domainOffset = vertical ? 70.0 : 20.0;
    when(domainAxis.getLocation('camp0'))
        .thenReturn(domainOffset + 10.0 + 50.0);
    when(domainAxis.getLocation('camp1'))
        .thenReturn(domainOffset + 10.0 + 100.0 + 10.0 + 50.0);
    when(domainAxis.getLocation('outsideViewport')).thenReturn(-51.0);

    if (vertical) {
      when(domainAxis.getDomain(100.0)).thenReturn('camp0');
      when(domainAxis.getDomain(93.0)).thenReturn('camp0');
      when(domainAxis.getDomain(130.0)).thenReturn('camp0');
      when(domainAxis.getDomain(65.0)).thenReturn('outsideViewport');
    } else {
      when(domainAxis.getDomain(50.0)).thenReturn('camp0');
      when(domainAxis.getDomain(43.0)).thenReturn('camp0');
      when(domainAxis.getDomain(80.0)).thenReturn('camp0');
    }
    series.setAttr(domainAxisKey, domainAxis);

    // Mock the Measure axis results.
    final measureAxis = new MockNumericAxis();
    if (vertical) {
      when(measureAxis.getLocation(0.0)).thenReturn(20.0 + 100.0);
      when(measureAxis.getLocation(10.0)).thenReturn(20.0 + 100.0 - 10.0);
      when(measureAxis.getLocation(20.0)).thenReturn(20.0 + 100.0 - 20.0);
    } else {
      when(measureAxis.getLocation(0.0)).thenReturn(70.0);
      when(measureAxis.getLocation(10.0)).thenReturn(70.0 + 10.0);
      when(measureAxis.getLocation(20.0)).thenReturn(70.0 + 20.0);
    }
    series.setAttr(measureAxisKey, measureAxis);

    return series;
  }

  MutableSeries _makeDateTimeSeries(
      {String id, String seriesCategory, bool vertical = true}) {
    final data = <MyDateTimeRow>[
      new MyDateTimeRow(date0, 10),
      new MyDateTimeRow(date1, 10),
    ];

    final series = new MutableSeries<DateTime>(new Series(
      id: id,
      data: data,
      domainFn: (dynamic row, _) => row.time,
      measureFn: (dynamic row, _) => row.clickCount,
      seriesCategory: seriesCategory,
    ));

    series.measureOffsetFn = (_) => 0.0;
    series.colorFn = (_) => new Color.fromHex(code: '#000000');

    // Mock the Domain axis results.
    final domainAxis = new MockDateTimeAxis();
    when(domainAxis.rangeBand).thenReturn(100.0);
    final domainOffset = vertical ? 70.0 : 20.0;
    when(domainAxis.getLocation(date0)).thenReturn(domainOffset + 10.0 + 50.0);
    when(domainAxis.getLocation(date1))
        .thenReturn(domainOffset + 10.0 + 100.0 + 10.0 + 50.0);
    when(domainAxis.getLocation(dateOutsideViewport)).thenReturn(-51.0);

    series.setAttr(domainAxisKey, domainAxis);

    // Mock the Measure axis results.
    final measureAxis = new MockNumericAxis();
    if (vertical) {
      when(measureAxis.getLocation(0.0)).thenReturn(20.0 + 100.0);
      when(measureAxis.getLocation(10.0)).thenReturn(20.0 + 100.0 - 10.0);
      when(measureAxis.getLocation(20.0)).thenReturn(20.0 + 100.0 - 20.0);
    } else {
      when(measureAxis.getLocation(0.0)).thenReturn(70.0);
      when(measureAxis.getLocation(10.0)).thenReturn(70.0 + 10.0);
      when(measureAxis.getLocation(20.0)).thenReturn(70.0 + 20.0);
    }
    series.setAttr(measureAxisKey, measureAxis);

    return series;
  }

  bool selectNearestByDomain;

  setUp(() {
    selectNearestByDomain = true;
  });

  /////////////////////////////////////////
  // Additional edge test cases
  /////////////////////////////////////////
  group('edge cases', () {
    test('hit target on missing data in group should highlight group', () {
      // Setup
      final renderer =
          _makeBarRenderer(vertical: true, groupType: BarGroupingType.grouped);
      final seriesList = <MutableSeries>[
        _makeSeries(id: 'foo')..data.clear(),
        _makeSeries(id: 'bar'),
      ];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 10.0 + 20.0, 20.0 + 100.0 - 5.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(1));

      final closest = details[0];
      expect(closest.domain, equals('camp0'));
      expect(closest.series.id, equals('bar'));
      expect(closest.datum, equals(seriesList[1].data[0]));
      expect(closest.domainDistance, equals(31)); // 2 + 49 - 20
      expect(closest.measureDistance, equals(0));
    });

    test('all series without data is skipped', () {
      // Setup
      final renderer =
          _makeBarRenderer(vertical: true, groupType: BarGroupingType.grouped);
      final seriesList = <MutableSeries>[
        _makeSeries(id: 'foo')..data.clear(),
        _makeSeries(id: 'bar')..data.clear(),
      ];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 10.0 + 20.0, 20.0 + 100.0 - 5.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(0));
    });

    test('single overlay series is skipped', () {
      // Setup
      final renderer =
          _makeBarRenderer(vertical: true, groupType: BarGroupingType.grouped);
      final seriesList = <MutableSeries>[
        _makeSeries(id: 'foo')..overlaySeries = true,
        _makeSeries(id: 'bar'),
      ];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 10.0 + 20.0, 20.0 + 100.0 - 5.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(1));

      final closest = details[0];
      expect(closest.domain, equals('camp0'));
      expect(closest.series.id, equals('bar'));
      expect(closest.datum, equals(seriesList[1].data[0]));
      expect(closest.domainDistance, equals(31)); // 2 + 49 - 20
      expect(closest.measureDistance, equals(0));
    });

    test('all overlay series is skipped', () {
      // Setup
      final renderer =
          _makeBarRenderer(vertical: true, groupType: BarGroupingType.grouped);
      final seriesList = <MutableSeries>[
        _makeSeries(id: 'foo')..overlaySeries = true,
        _makeSeries(id: 'bar')..overlaySeries = true,
      ];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 10.0 + 20.0, 20.0 + 100.0 - 5.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(0));
    });
  });

  /////////////////////////////////////////
  // Vertical BarRenderer
  /////////////////////////////////////////
  group('Vertical BarRenderer', () {
    test('hit test works on bar', () {
      // Setup
      final renderer =
          _makeBarRenderer(vertical: true, groupType: BarGroupingType.stacked);
      final seriesList = <MutableSeries>[_makeSeries(id: 'foo')];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 10.0 + 13.0, 20.0 + 100.0 - 5.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(1));
      final closest = details[0];
      expect(closest.domain, equals('camp0'));
      expect(closest.series, equals(seriesList[0]));
      expect(closest.datum, equals(seriesList[0].data[0]));
      expect(closest.domainDistance, equals(0));
      expect(closest.measureDistance, equals(0));
    });

    test('hit test expands to grouped bars', () {
      // Setup
      final renderer =
          _makeBarRenderer(vertical: true, groupType: BarGroupingType.grouped);
      final seriesList = <MutableSeries>[
        _makeSeries(id: 'foo'),
        _makeSeries(id: 'bar'),
      ];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 10.0 + 20.0, 20.0 + 100.0 - 5.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(2));

      final closest = details[0];
      expect(closest.domain, equals('camp0'));
      expect(closest.series.id, equals('foo'));
      expect(closest.datum, equals(seriesList[0].data[0]));
      expect(closest.domainDistance, equals(0));
      expect(closest.measureDistance, equals(0));

      final next = details[1];
      expect(next.domain, equals('camp0'));
      expect(next.series.id, equals('bar'));
      expect(next.datum, equals(seriesList[1].data[0]));
      expect(next.domainDistance, equals(31)); // 2 + 49 - 20
      expect(next.measureDistance, equals(0));
    });

    test('hit test expands to stacked bars', () {
      // Setup
      final renderer =
          _makeBarRenderer(vertical: true, groupType: BarGroupingType.stacked);
      final seriesList = <MutableSeries>[
        _makeSeries(id: 'foo'),
        _makeSeries(id: 'bar'),
      ];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 10.0 + 13.0, 20.0 + 100.0 - 5.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(2));

      // For vertical stacked bars, the first series is at the top of the stack.
      final closest = details[0];
      expect(closest.domain, equals('camp0'));
      expect(closest.series.id, equals('bar'));
      expect(closest.datum, equals(seriesList[1].data[0]));
      expect(closest.domainDistance, equals(0));
      expect(closest.measureDistance, equals(0));

      final next = details[1];
      expect(next.domain, equals('camp0'));
      expect(next.series.id, equals('foo'));
      expect(next.datum, equals(seriesList[0].data[0]));
      expect(next.domainDistance, equals(0));
      expect(next.measureDistance, equals(5.0));
    });

    test('hit test expands to grouped stacked', () {
      // Setup
      final renderer = _makeBarRenderer(
          vertical: true, groupType: BarGroupingType.groupedStacked);
      final seriesList = <MutableSeries>[
        _makeSeries(id: 'foo0', seriesCategory: 'c0'),
        _makeSeries(id: 'bar0', seriesCategory: 'c0'),
        _makeSeries(id: 'foo1', seriesCategory: 'c1'),
        _makeSeries(id: 'bar1', seriesCategory: 'c1'),
      ];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 10.0 + 20.0, 20.0 + 100.0 - 5.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(4));

      // For vertical stacked bars, the first series is at the top of the stack.
      final closest = details[0];
      expect(closest.domain, equals('camp0'));
      expect(closest.series.id, equals('bar0'));
      expect(closest.datum, equals(seriesList[1].data[0]));
      expect(closest.domainDistance, equals(0));
      expect(closest.measureDistance, equals(0));

      final other1 = details[1];
      expect(other1.domain, equals('camp0'));
      expect(other1.series.id, equals('foo0'));
      expect(other1.datum, equals(seriesList[0].data[0]));
      expect(other1.domainDistance, equals(0));
      expect(other1.measureDistance, equals(5));

      var other2 = details[2];
      expect(other2.domain, equals('camp0'));
      expect(other2.series.id, equals('bar1'));
      expect(other2.datum, equals(seriesList[3].data[0]));
      expect(other2.domainDistance, equals(31)); // 2 + 49 - 20
      expect(other2.measureDistance, equals(0));

      var other3 = details[3];
      expect(other3.domain, equals('camp0'));
      expect(other3.series.id, equals('foo1'));
      expect(other3.datum, equals(seriesList[2].data[0]));
      expect(other3.domainDistance, equals(31)); // 2 + 49 - 20
      expect(other3.measureDistance, equals(5));
    });

    test('hit test works above bar', () {
      // Setup
      final renderer =
          _makeBarRenderer(vertical: true, groupType: BarGroupingType.stacked);
      final seriesList = <MutableSeries>[_makeSeries(id: 'foo')];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 10.0 + 13.0, 20.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(1));
      final closest = details[0];
      expect(closest.domain, equals('camp0'));
      expect(closest.series, equals(seriesList[0]));
      expect(closest.datum, equals(seriesList[0].data[0]));
      expect(closest.domainDistance, equals(0));
      expect(closest.measureDistance, equals(90));
    });

    test('hit test works between bars in a group', () {
      // Setup
      final renderer =
          _makeBarRenderer(vertical: true, groupType: BarGroupingType.grouped);
      final seriesList = <MutableSeries>[
        _makeSeries(id: 'foo'),
        _makeSeries(id: 'bar'),
      ];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 10.0 + 50.0, 20.0 + 100.0 - 5.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(2));

      final closest = details[0];
      expect(closest.domain, equals('camp0'));
      expect(closest.series.id, equals('foo'));
      expect(closest.datum, equals(seriesList[0].data[0]));
      expect(closest.domainDistance, equals(1));
      expect(closest.measureDistance, equals(0));

      final next = details[1];
      expect(next.domain, equals('camp0'));
      expect(next.series.id, equals('bar'));
      expect(next.datum, equals(seriesList[1].data[0]));
      expect(next.domainDistance, equals(1));
      expect(next.measureDistance, equals(0));
    });

    test('no selection for bars outside of viewport', () {
      // Setup
      final renderer =
          _makeBarRenderer(vertical: true, groupType: BarGroupingType.grouped);
      final seriesList = <MutableSeries>[
        _makeSeries(id: 'foo')..data.add(new MyRow('outsideViewport', 20))
      ];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      // Note: point is in the axis, over a bar outside of the viewport.
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(65.0, 20.0 + 100.0 - 5.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(0));
    });
  });

  /////////////////////////////////////////
  // Horizontal BarRenderer
  /////////////////////////////////////////
  group('Horizontal BarRenderer', () {
    test('hit test works on bar', () {
      // Setup
      final renderer =
          _makeBarRenderer(vertical: false, groupType: BarGroupingType.stacked);
      final seriesList = <MutableSeries>[
        _makeSeries(id: 'foo', vertical: false)
      ];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 5.0, 20.0 + 10.0 + 13.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(1));
      final closest = details[0];
      expect(closest.domain, equals('camp0'));
      expect(closest.series, equals(seriesList[0]));
      expect(closest.datum, equals(seriesList[0].data[0]));
      expect(closest.domainDistance, equals(0));
      expect(closest.measureDistance, equals(0));
    });

    test('hit test expands to grouped bars', () {
      // Setup
      final renderer =
          _makeBarRenderer(vertical: false, groupType: BarGroupingType.grouped);
      final seriesList = <MutableSeries>[
        _makeSeries(id: 'foo', vertical: false),
        _makeSeries(id: 'bar', vertical: false),
      ];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 5.0, 20.0 + 10.0 + 20.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(2));

      final closest = details[0];
      expect(closest.domain, equals('camp0'));
      expect(closest.series.id, equals('foo'));
      expect(closest.datum, equals(seriesList[0].data[0]));
      expect(closest.domainDistance, equals(0));
      expect(closest.measureDistance, equals(0));

      final next = details[1];
      expect(next.domain, equals('camp0'));
      expect(next.series.id, equals('bar'));
      expect(next.datum, equals(seriesList[1].data[0]));
      expect(next.domainDistance, equals(31)); // 2 + 49 - 20
      expect(next.measureDistance, equals(0));
    });

    test('hit test expands to stacked bars', () {
      // Setup
      final renderer =
          _makeBarRenderer(vertical: false, groupType: BarGroupingType.stacked);
      final seriesList = <MutableSeries>[
        _makeSeries(id: 'foo', vertical: false),
        _makeSeries(id: 'bar', vertical: false),
      ];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 5.0, 20.0 + 10.0 + 20.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(2));

      final closest = details[0];
      expect(closest.domain, equals('camp0'));
      expect(closest.series.id, equals('foo'));
      expect(closest.datum, equals(seriesList[0].data[0]));
      expect(closest.domainDistance, equals(0));
      expect(closest.measureDistance, equals(0));

      final next = details[1];
      expect(next.domain, equals('camp0'));
      expect(next.series.id, equals('bar'));
      expect(next.datum, equals(seriesList[1].data[0]));
      expect(next.domainDistance, equals(0));
      expect(next.measureDistance, equals(5.0));
    });

    test('hit test expands to grouped stacked', () {
      // Setup
      final renderer = _makeBarRenderer(
          vertical: false, groupType: BarGroupingType.groupedStacked);
      final seriesList = <MutableSeries>[
        _makeSeries(id: 'foo0', seriesCategory: 'c0', vertical: false),
        _makeSeries(id: 'bar0', seriesCategory: 'c0', vertical: false),
        _makeSeries(id: 'foo1', seriesCategory: 'c1', vertical: false),
        _makeSeries(id: 'bar1', seriesCategory: 'c1', vertical: false),
      ];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 5.0, 20.0 + 10.0 + 20.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(4));

      final closest = details[0];
      expect(closest.domain, equals('camp0'));
      expect(closest.series.id, equals('foo0'));
      expect(closest.datum, equals(seriesList[0].data[0]));
      expect(closest.domainDistance, equals(0));
      expect(closest.measureDistance, equals(0));

      final other1 = details[1];
      expect(other1.domain, equals('camp0'));
      expect(other1.series.id, equals('bar0'));
      expect(other1.datum, equals(seriesList[1].data[0]));
      expect(other1.domainDistance, equals(0));
      expect(other1.measureDistance, equals(5));

      var other2 = details[2];
      expect(other2.domain, equals('camp0'));
      expect(other2.series.id, equals('foo1'));
      expect(other2.datum, equals(seriesList[2].data[0]));
      expect(other2.domainDistance, equals(31)); // 2 + 49 - 20
      expect(other2.measureDistance, equals(0));

      var other3 = details[3];
      expect(other3.domain, equals('camp0'));
      expect(other3.series.id, equals('bar1'));
      expect(other3.datum, equals(seriesList[3].data[0]));
      expect(other3.domainDistance, equals(31)); // 2 + 49 - 20
      expect(other3.measureDistance, equals(5));
    });

    test('hit test works above bar', () {
      // Setup
      final renderer =
          _makeBarRenderer(vertical: false, groupType: BarGroupingType.stacked);
      final seriesList = <MutableSeries>[
        _makeSeries(id: 'foo', vertical: false)
      ];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 100.0, 20.0 + 10.0 + 20.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(1));
      final closest = details[0];
      expect(closest.domain, equals('camp0'));
      expect(closest.series, equals(seriesList[0]));
      expect(closest.datum, equals(seriesList[0].data[0]));
      expect(closest.domainDistance, equals(0));
      expect(closest.measureDistance, equals(90));
    });

    test('hit test works between bars in a group', () {
      // Setup
      final renderer =
          _makeBarRenderer(vertical: false, groupType: BarGroupingType.grouped);
      final seriesList = <MutableSeries>[
        _makeSeries(id: 'foo', vertical: false),
        _makeSeries(id: 'bar', vertical: false),
      ];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 5.0, 20.0 + 10.0 + 50.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(2));

      final closest = details[0];
      expect(closest.domain, equals('camp0'));
      expect(closest.series.id, equals('foo'));
      expect(closest.datum, equals(seriesList[0].data[0]));
      expect(closest.domainDistance, equals(1));
      expect(closest.measureDistance, equals(0));

      final next = details[1];
      expect(next.domain, equals('camp0'));
      expect(next.series.id, equals('bar'));
      expect(next.datum, equals(seriesList[1].data[0]));
      expect(next.domainDistance, equals(1));
      expect(next.measureDistance, equals(0));
    });
  });

  /////////////////////////////////////////
  // Vertical BarTargetRenderer
  /////////////////////////////////////////
  group('Vertical BarTargetRenderer', () {
    test('hit test works above target', () {
      // Setup
      final renderer = _makeBarTargetRenderer(
          vertical: true, groupType: BarGroupingType.stacked);
      final seriesList = <MutableSeries>[_makeSeries(id: 'foo')];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 10.0 + 13.0, 20.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(1));
      final closest = details[0];
      expect(closest.domain, equals('camp0'));
      expect(closest.series, equals(seriesList[0]));
      expect(closest.datum, equals(seriesList[0].data[0]));
      expect(closest.domainDistance, equals(0));
      expect(closest.measureDistance, equals(90));
    });

    test('hit test expands to grouped bar targets', () {
      // Setup
      final renderer = _makeBarTargetRenderer(
          vertical: true, groupType: BarGroupingType.grouped);
      final seriesList = <MutableSeries>[
        _makeSeries(id: 'foo'),
        _makeSeries(id: 'bar'),
      ];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 10.0 + 20.0, 20.0 + 100.0 - 5.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(2));

      final closest = details[0];
      expect(closest.domain, equals('camp0'));
      expect(closest.series.id, equals('foo'));
      expect(closest.datum, equals(seriesList[0].data[0]));
      expect(closest.domainDistance, equals(0));
      expect(closest.measureDistance, equals(5));

      final next = details[1];
      expect(next.domain, equals('camp0'));
      expect(next.series.id, equals('bar'));
      expect(next.datum, equals(seriesList[1].data[0]));
      expect(next.domainDistance, equals(31)); // 2 + 49 - 20
      expect(next.measureDistance, equals(5));
    });

    test('hit test expands to stacked bar targets', () {
      // Setup
      final renderer = _makeBarTargetRenderer(
          vertical: true, groupType: BarGroupingType.stacked);
      final seriesList = <MutableSeries>[
        _makeSeries(id: 'foo'),
        _makeSeries(id: 'bar'),
      ];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 10.0 + 13.0, 20.0 + 100.0 - 5.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(2));

      // For vertical stacked bars, the first series is at the top of the stack.
      final closest = details[0];
      expect(closest.domain, equals('camp0'));
      expect(closest.series.id, equals('bar'));
      expect(closest.datum, equals(seriesList[1].data[0]));
      expect(closest.domainDistance, equals(0));
      expect(closest.measureDistance, equals(5));

      final next = details[1];
      expect(next.domain, equals('camp0'));
      expect(next.series.id, equals('foo'));
      expect(next.datum, equals(seriesList[0].data[0]));
      expect(next.domainDistance, equals(0));
      expect(next.measureDistance, equals(15.0));
    });

    test('hit test expands to grouped stacked', () {
      // Setup
      final renderer = _makeBarTargetRenderer(
          vertical: true, groupType: BarGroupingType.groupedStacked);
      final seriesList = <MutableSeries>[
        _makeSeries(id: 'foo0', seriesCategory: 'c0'),
        _makeSeries(id: 'bar0', seriesCategory: 'c0'),
        _makeSeries(id: 'foo1', seriesCategory: 'c1'),
        _makeSeries(id: 'bar1', seriesCategory: 'c1'),
      ];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 10.0 + 20.0, 20.0 + 100.0 - 5.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(4));

      // For vertical stacked bars, the first series is at the top of the stack.
      final closest = details[0];
      expect(closest.domain, equals('camp0'));
      expect(closest.series.id, equals('bar0'));
      expect(closest.datum, equals(seriesList[1].data[0]));
      expect(closest.domainDistance, equals(0));
      expect(closest.measureDistance, equals(5));

      final other1 = details[1];
      expect(other1.domain, equals('camp0'));
      expect(other1.series.id, equals('foo0'));
      expect(other1.datum, equals(seriesList[0].data[0]));
      expect(other1.domainDistance, equals(0));
      expect(other1.measureDistance, equals(15));

      var other2 = details[2];
      expect(other2.domain, equals('camp0'));
      expect(other2.series.id, equals('bar1'));
      expect(other2.datum, equals(seriesList[3].data[0]));
      expect(other2.domainDistance, equals(31)); // 2 + 49 - 20
      expect(other2.measureDistance, equals(5));

      var other3 = details[3];
      expect(other3.domain, equals('camp0'));
      expect(other3.series.id, equals('foo1'));
      expect(other3.datum, equals(seriesList[2].data[0]));
      expect(other3.domainDistance, equals(31)); // 2 + 49 - 20
      expect(other3.measureDistance, equals(15));
    });

    test('hit test works between targets in a group', () {
      // Setup
      final renderer = _makeBarTargetRenderer(
          vertical: true, groupType: BarGroupingType.grouped);
      final seriesList = <MutableSeries>[
        _makeSeries(id: 'foo'),
        _makeSeries(id: 'bar'),
      ];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 10.0 + 50.0, 20.0 + 100.0 - 5.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(2));

      final closest = details[0];
      expect(closest.domain, equals('camp0'));
      expect(closest.series.id, equals('foo'));
      expect(closest.datum, equals(seriesList[0].data[0]));
      expect(closest.domainDistance, equals(1));
      expect(closest.measureDistance, equals(5));

      final next = details[1];
      expect(next.domain, equals('camp0'));
      expect(next.series.id, equals('bar'));
      expect(next.datum, equals(seriesList[1].data[0]));
      expect(next.domainDistance, equals(1));
      expect(next.measureDistance, equals(5));
    });

    test('no selection for targets outside of viewport', () {
      // Setup
      final renderer = _makeBarTargetRenderer(
          vertical: true, groupType: BarGroupingType.grouped);
      final seriesList = <MutableSeries>[
        _makeSeries(id: 'foo')..data.add(new MyRow('outsideViewport', 20))
      ];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      // Note: point is in the axis, over a bar outside of the viewport.
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(65.0, 20.0 + 100.0 - 5.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(0));
    });
  });

  /////////////////////////////////////////
  // Horizontal BarTargetRenderer
  /////////////////////////////////////////
  group('Horizontal BarTargetRenderer', () {
    test('hit test works above target', () {
      // Setup
      final renderer = _makeBarTargetRenderer(
          vertical: false, groupType: BarGroupingType.stacked);
      final seriesList = <MutableSeries>[
        _makeSeries(id: 'foo', vertical: false)
      ];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 100.0, 20.0 + 10.0 + 20.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(1));
      final closest = details[0];
      expect(closest.domain, equals('camp0'));
      expect(closest.series, equals(seriesList[0]));
      expect(closest.datum, equals(seriesList[0].data[0]));
      expect(closest.domainDistance, equals(0));
      expect(closest.measureDistance, equals(90));
    });

    test('hit test expands to grouped bar targets', () {
      // Setup
      final renderer = _makeBarTargetRenderer(
          vertical: false, groupType: BarGroupingType.grouped);
      final seriesList = <MutableSeries>[
        _makeSeries(id: 'foo', vertical: false),
        _makeSeries(id: 'bar', vertical: false),
      ];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 5.0, 20.0 + 10.0 + 20.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(2));

      final closest = details[0];
      expect(closest.domain, equals('camp0'));
      expect(closest.series.id, equals('foo'));
      expect(closest.datum, equals(seriesList[0].data[0]));
      expect(closest.domainDistance, equals(0));
      expect(closest.measureDistance, equals(5));

      final next = details[1];
      expect(next.domain, equals('camp0'));
      expect(next.series.id, equals('bar'));
      expect(next.datum, equals(seriesList[1].data[0]));
      expect(next.domainDistance, equals(31)); // 2 + 49 - 20
      expect(next.measureDistance, equals(5));
    });

    test('hit test expands to stacked bar targets', () {
      // Setup
      final renderer = _makeBarTargetRenderer(
          vertical: false, groupType: BarGroupingType.stacked);
      final seriesList = <MutableSeries>[
        _makeSeries(id: 'foo', vertical: false),
        _makeSeries(id: 'bar', vertical: false),
      ];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 5.0, 20.0 + 10.0 + 20.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(2));

      final closest = details[0];
      expect(closest.domain, equals('camp0'));
      expect(closest.series.id, equals('foo'));
      expect(closest.datum, equals(seriesList[0].data[0]));
      expect(closest.domainDistance, equals(0));
      expect(closest.measureDistance, equals(5));

      final next = details[1];
      expect(next.domain, equals('camp0'));
      expect(next.series.id, equals('bar'));
      expect(next.datum, equals(seriesList[1].data[0]));
      expect(next.domainDistance, equals(0));
      expect(next.measureDistance, equals(15));
    });

    test('hit test expands to grouped stacked', () {
      // Setup
      final renderer = _makeBarTargetRenderer(
          vertical: false, groupType: BarGroupingType.groupedStacked);
      final seriesList = <MutableSeries>[
        _makeSeries(id: 'foo0', seriesCategory: 'c0', vertical: false),
        _makeSeries(id: 'bar0', seriesCategory: 'c0', vertical: false),
        _makeSeries(id: 'foo1', seriesCategory: 'c1', vertical: false),
        _makeSeries(id: 'bar1', seriesCategory: 'c1', vertical: false),
      ];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 5.0, 20.0 + 10.0 + 20.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(4));

      final closest = details[0];
      expect(closest.domain, equals('camp0'));
      expect(closest.series.id, equals('foo0'));
      expect(closest.datum, equals(seriesList[0].data[0]));
      expect(closest.domainDistance, equals(0));
      expect(closest.measureDistance, equals(5));

      final other1 = details[1];
      expect(other1.domain, equals('camp0'));
      expect(other1.series.id, equals('bar0'));
      expect(other1.datum, equals(seriesList[1].data[0]));
      expect(other1.domainDistance, equals(0));
      expect(other1.measureDistance, equals(15));

      var other2 = details[2];
      expect(other2.domain, equals('camp0'));
      expect(other2.series.id, equals('foo1'));
      expect(other2.datum, equals(seriesList[2].data[0]));
      expect(other2.domainDistance, equals(31)); // 2 + 49 - 20
      expect(other2.measureDistance, equals(5));

      var other3 = details[3];
      expect(other3.domain, equals('camp0'));
      expect(other3.series.id, equals('bar1'));
      expect(other3.datum, equals(seriesList[3].data[0]));
      expect(other3.domainDistance, equals(31)); // 2 + 49 - 20
      expect(other3.measureDistance, equals(15));
    });

    test('hit test works between bars in a group', () {
      // Setup
      final renderer = _makeBarTargetRenderer(
          vertical: false, groupType: BarGroupingType.grouped);
      final seriesList = <MutableSeries>[
        _makeSeries(id: 'foo', vertical: false),
        _makeSeries(id: 'bar', vertical: false),
      ];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 5.0, 20.0 + 10.0 + 50.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(2));

      final closest = details[0];
      expect(closest.domain, equals('camp0'));
      expect(closest.series.id, equals('foo'));
      expect(closest.datum, equals(seriesList[0].data[0]));
      expect(closest.domainDistance, equals(1));
      expect(closest.measureDistance, equals(5));

      final next = details[1];
      expect(next.domain, equals('camp0'));
      expect(next.series.id, equals('bar'));
      expect(next.datum, equals(seriesList[1].data[0]));
      expect(next.domainDistance, equals(1));
      expect(next.measureDistance, equals(5));
    });
  });

  /////////////////////////////////////////
  // Bar renderer with datetime axis
  /////////////////////////////////////////
  group('with date time axis and vertical bar', () {
    test('hit test works on bar', () {
      // Setup
      final renderer =
          _makeBarRenderer(vertical: true, groupType: BarGroupingType.stacked);
      final seriesList = <MutableSeries>[_makeDateTimeSeries(id: 'foo')];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 10.0 + 13.0, 20.0 + 100.0 - 5.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(1));
      final closest = details[0];
      expect(closest.domain, equals(date0));
      expect(closest.series, equals(seriesList[0]));
      expect(closest.datum, equals(seriesList[0].data[0]));
      expect(closest.domainDistance, equals(0));
      expect(closest.measureDistance, equals(0));
    });

    test('hit test expands to grouped bars', () {
      // Setup
      final renderer =
          _makeBarRenderer(vertical: true, groupType: BarGroupingType.grouped);
      final seriesList = <MutableSeries>[
        _makeDateTimeSeries(id: 'foo'),
        _makeDateTimeSeries(id: 'bar'),
      ];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 10.0 + 20.0, 20.0 + 100.0 - 5.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(2));

      final closest = details[0];
      expect(closest.domain, equals(date0));
      expect(closest.series.id, equals('foo'));
      expect(closest.datum, equals(seriesList[0].data[0]));
      expect(closest.domainDistance, equals(0));
      expect(closest.measureDistance, equals(0));

      final next = details[1];
      expect(next.domain, equals(date0));
      expect(next.series.id, equals('bar'));
      expect(next.datum, equals(seriesList[1].data[0]));
      expect(next.domainDistance, equals(31)); // 2 + 49 - 20
      expect(next.measureDistance, equals(0));
    });

    test('hit test expands to stacked bar targets', () {
      // Setup
      final renderer = _makeBarTargetRenderer(
          vertical: true, groupType: BarGroupingType.stacked);
      final seriesList = <MutableSeries>[
        _makeDateTimeSeries(id: 'foo'),
        _makeDateTimeSeries(id: 'bar'),
      ];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 10.0 + 13.0, 20.0 + 100.0 - 5.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(2));

      // For vertical stacked bars, the first series is at the top of the stack.
      final closest = details[0];
      expect(closest.domain, equals(date0));
      expect(closest.series.id, equals('bar'));
      expect(closest.datum, equals(seriesList[1].data[0]));
      expect(closest.domainDistance, equals(0));
      expect(closest.measureDistance, equals(5));

      final next = details[1];
      expect(next.domain, equals(date0));
      expect(next.series.id, equals('foo'));
      expect(next.datum, equals(seriesList[0].data[0]));
      expect(next.domainDistance, equals(0));
      expect(next.measureDistance, equals(15.0));
    });

    test('hit test expands to grouped stacked', () {
      // Setup
      final renderer = _makeBarTargetRenderer(
          vertical: true, groupType: BarGroupingType.groupedStacked);
      final seriesList = <MutableSeries>[
        _makeDateTimeSeries(id: 'foo0', seriesCategory: 'c0'),
        _makeDateTimeSeries(id: 'bar0', seriesCategory: 'c0'),
        _makeDateTimeSeries(id: 'foo1', seriesCategory: 'c1'),
        _makeDateTimeSeries(id: 'bar1', seriesCategory: 'c1'),
      ];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 10.0 + 20.0, 20.0 + 100.0 - 5.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(4));

      // For vertical stacked bars, the first series is at the top of the stack.
      final closest = details[0];
      expect(closest.domain, equals(date0));
      expect(closest.series.id, equals('bar0'));
      expect(closest.datum, equals(seriesList[1].data[0]));
      expect(closest.domainDistance, equals(0));
      expect(closest.measureDistance, equals(5));

      final other1 = details[1];
      expect(other1.domain, equals(date0));
      expect(other1.series.id, equals('foo0'));
      expect(other1.datum, equals(seriesList[0].data[0]));
      expect(other1.domainDistance, equals(0));
      expect(other1.measureDistance, equals(15));

      var other2 = details[2];
      expect(other2.domain, equals(date0));
      expect(other2.series.id, equals('bar1'));
      expect(other2.datum, equals(seriesList[3].data[0]));
      expect(other2.domainDistance, equals(31)); // 2 + 49 - 20
      expect(other2.measureDistance, equals(5));

      var other3 = details[3];
      expect(other3.domain, equals(date0));
      expect(other3.series.id, equals('foo1'));
      expect(other3.datum, equals(seriesList[2].data[0]));
      expect(other3.domainDistance, equals(31)); // 2 + 49 - 20
      expect(other3.measureDistance, equals(15));
    });

    test('hit test works between targets in a group', () {
      // Setup
      final renderer = _makeBarTargetRenderer(
          vertical: true, groupType: BarGroupingType.grouped);
      final seriesList = <MutableSeries>[
        _makeDateTimeSeries(id: 'foo'),
        _makeDateTimeSeries(id: 'bar'),
      ];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(70.0 + 10.0 + 50.0, 20.0 + 100.0 - 5.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(2));

      final closest = details[0];
      expect(closest.domain, equals(date0));
      expect(closest.series.id, equals('foo'));
      expect(closest.datum, equals(seriesList[0].data[0]));
      expect(closest.domainDistance, equals(1));
      expect(closest.measureDistance, equals(5));

      final next = details[1];
      expect(next.domain, equals(date0));
      expect(next.series.id, equals('bar'));
      expect(next.datum, equals(seriesList[1].data[0]));
      expect(next.domainDistance, equals(1));
      expect(next.measureDistance, equals(5));
    });

    test('no selection for targets outside of viewport', () {
      // Setup
      final renderer = _makeBarTargetRenderer(
          vertical: true, groupType: BarGroupingType.grouped);
      final seriesList = <MutableSeries>[
        _makeDateTimeSeries(id: 'foo')
          ..data.add(new MyDateTimeRow(dateOutsideViewport, 20))
      ];
      renderer.configureSeries(seriesList);
      renderer.preprocessSeries(seriesList);
      renderer.update(seriesList, false);
      renderer.paint(new MockCanvas(), 1.0);

      // Act
      // Note: point is in the axis, over a bar outside of the viewport.
      final details = renderer.getNearestDatumDetailPerSeries(
          new Point<double>(65.0, 20.0 + 100.0 - 5.0),
          selectNearestByDomain,
          null);

      // Verify
      expect(details.length, equals(0));
    });
  });
}
