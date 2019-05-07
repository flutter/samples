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

import 'dart:math' show Point, Rectangle;
import 'package:charts_common/src/chart/bar/bar_target_line_renderer.dart';
import 'package:charts_common/src/chart/bar/bar_target_line_renderer_config.dart';
import 'package:charts_common/src/chart/bar/base_bar_renderer.dart';
import 'package:charts_common/src/chart/bar/base_bar_renderer_config.dart';
import 'package:charts_common/src/chart/cartesian/cartesian_chart.dart';
import 'package:charts_common/src/chart/cartesian/axis/axis.dart';
import 'package:charts_common/src/chart/common/chart_canvas.dart';
import 'package:charts_common/src/chart/common/chart_context.dart';
import 'package:charts_common/src/chart/common/processed_series.dart'
    show MutableSeries;
import 'package:charts_common/src/common/color.dart';
import 'package:charts_common/src/data/series.dart' show Series;

import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

/// Datum/Row for the chart.
class MyRow {
  final String campaign;
  final int clickCount;
  MyRow(this.campaign, this.clickCount);
}

class MockAxis<D> extends Mock implements Axis<D> {}

class MockCanvas extends Mock implements ChartCanvas {
  final drawLinePointsList = <List<Point>>[];

  void drawLine(
      {List<Point> points,
      Rectangle<num> clipBounds,
      Color fill,
      Color stroke,
      bool roundEndCaps,
      double strokeWidthPx,
      List<int> dashPattern}) {
    drawLinePointsList.add(points);
  }
}

class MockContext extends Mock implements ChartContext {}

class MockChart extends Mock implements CartesianChart {}

void main() {
  BarTargetLineRenderer renderer;
  List<MutableSeries<String>> seriesList;

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

    return renderer;
  }

  BarTargetLineRenderer makeRenderer({BarTargetLineRendererConfig config}) {
    final renderer = new BarTargetLineRenderer(config: config);
    _configureBaseRenderer(renderer, true);
    return renderer;
  }

  setUp(() {
    var myFakeDesktopData = [
      new MyRow('MyCampaign1', 5),
      new MyRow('MyCampaign2', 25),
      new MyRow('MyCampaign3', 100),
      new MyRow('MyOtherCampaign', 75),
    ];

    var myFakeTabletData = [
      new MyRow('MyCampaign1', 5),
      new MyRow('MyCampaign2', 25),
      new MyRow('MyCampaign3', 100),
      new MyRow('MyOtherCampaign', 75),
    ];

    var myFakeMobileData = [
      new MyRow('MyCampaign1', 5),
      new MyRow('MyCampaign2', 25),
      new MyRow('MyCampaign3', 100),
      new MyRow('MyOtherCampaign', 75),
    ];

    seriesList = [
      new MutableSeries<String>(new Series<MyRow, String>(
          id: 'Desktop',
          domainFn: (MyRow row, _) => row.campaign,
          measureFn: (MyRow row, _) => row.clickCount,
          measureOffsetFn: (MyRow row, _) => 0,
          data: myFakeDesktopData)),
      new MutableSeries<String>(new Series<MyRow, String>(
          id: 'Tablet',
          domainFn: (MyRow row, _) => row.campaign,
          measureFn: (MyRow row, _) => row.clickCount,
          measureOffsetFn: (MyRow row, _) => 0,
          data: myFakeTabletData)),
      new MutableSeries<String>(new Series<MyRow, String>(
          id: 'Mobile',
          domainFn: (MyRow row, _) => row.campaign,
          measureFn: (MyRow row, _) => row.clickCount,
          measureOffsetFn: (MyRow row, _) => 0,
          data: myFakeMobileData))
    ];
  });

  group('preprocess', () {
    test('with grouped bar target lines', () {
      renderer = makeRenderer(
          config: new BarTargetLineRendererConfig(
              groupingType: BarGroupingType.grouped));

      renderer.preprocessSeries(seriesList);

      expect(seriesList.length, equals(3));

      // Validate Desktop series.
      var series = seriesList[0];
      expect(series.getAttr(barGroupIndexKey), equals(0));
      expect(series.getAttr(barGroupCountKey), equals(3));
      expect(series.getAttr(previousBarGroupWeightKey), equals(0.0));
      expect(series.getAttr(barGroupWeightKey), equals(1 / 3));
      expect(series.getAttr(stackKeyKey), equals('__defaultKey__'));

      var elementsList = series.getAttr(barElementsKey);
      expect(elementsList.length, equals(4));

      var element = elementsList[0];
      expect(element.barStackIndex, equals(0));
      expect(element.measureOffset, equals(0));
      expect(element.measureOffsetPlusMeasure, equals(null));
      expect(series.measureOffsetFn(0), equals(0));
      expect(element.strokeWidthPx, equals(3));

      // Validate Tablet series.
      series = seriesList[1];
      expect(series.getAttr(barGroupIndexKey), equals(1));
      expect(series.getAttr(barGroupCountKey), equals(3));
      expect(series.getAttr(previousBarGroupWeightKey), equals(1 / 3));
      expect(series.getAttr(barGroupWeightKey), equals(1 / 3));
      expect(series.getAttr(stackKeyKey), equals('__defaultKey__'));

      elementsList = series.getAttr(barElementsKey);
      expect(elementsList.length, equals(4));

      element = elementsList[0];
      expect(element.barStackIndex, equals(0));
      expect(element.measureOffset, equals(0));
      expect(element.measureOffsetPlusMeasure, equals(null));
      expect(series.measureOffsetFn(0), equals(0));
      expect(element.strokeWidthPx, equals(3));

      // Validate Mobile series.
      series = seriesList[2];
      expect(series.getAttr(barGroupIndexKey), equals(2));
      expect(series.getAttr(barGroupCountKey), equals(3));
      expect(series.getAttr(previousBarGroupWeightKey), equals(2 / 3));
      expect(series.getAttr(barGroupWeightKey), equals(1 / 3));
      expect(series.getAttr(stackKeyKey), equals('__defaultKey__'));

      elementsList = series.getAttr(barElementsKey);
      expect(elementsList.length, equals(4));

      element = elementsList[0];
      expect(element.barStackIndex, equals(0));
      expect(element.measureOffset, equals(0));
      expect(element.measureOffsetPlusMeasure, equals(null));
      expect(series.measureOffsetFn(0), equals(0));
      expect(element.strokeWidthPx, equals(3));
    });

    test('with stacked bar target lines', () {
      renderer = makeRenderer(
          config: new BarTargetLineRendererConfig(
              groupingType: BarGroupingType.stacked));

      renderer.preprocessSeries(seriesList);

      expect(seriesList.length, equals(3));

      // Validate Desktop series.
      var series = seriesList[0];
      expect(series.getAttr(barGroupIndexKey), equals(0));
      expect(series.getAttr(barGroupCountKey), equals(1));
      expect(series.getAttr(previousBarGroupWeightKey), equals(0.0));
      expect(series.getAttr(barGroupWeightKey), equals(1));
      expect(series.getAttr(stackKeyKey), equals('__defaultKey__'));

      var elementsList = series.getAttr(barElementsKey);
      expect(elementsList.length, equals(4));

      var element = elementsList[0];
      expect(element.barStackIndex, equals(2));
      expect(element.measureOffset, equals(10));
      expect(element.measureOffsetPlusMeasure, equals(15));
      expect(series.measureOffsetFn(0), equals(10));
      expect(element.strokeWidthPx, equals(3));

      // Validate Tablet series.
      series = seriesList[1];
      expect(series.getAttr(barGroupIndexKey), equals(0));
      expect(series.getAttr(barGroupCountKey), equals(1));
      expect(series.getAttr(previousBarGroupWeightKey), equals(0.0));
      expect(series.getAttr(barGroupWeightKey), equals(1));
      expect(series.getAttr(stackKeyKey), equals('__defaultKey__'));

      elementsList = series.getAttr(barElementsKey);
      expect(elementsList.length, equals(4));

      element = elementsList[0];
      expect(element.barStackIndex, equals(1));
      expect(element.measureOffset, equals(5));
      expect(element.measureOffsetPlusMeasure, equals(10));
      expect(series.measureOffsetFn(0), equals(5));
      expect(element.strokeWidthPx, equals(3));

      // Validate Mobile series.
      series = seriesList[2];
      expect(series.getAttr(barGroupIndexKey), equals(0));
      expect(series.getAttr(barGroupCountKey), equals(1));
      expect(series.getAttr(previousBarGroupWeightKey), equals(0.0));
      expect(series.getAttr(barGroupWeightKey), equals(1));
      expect(series.getAttr(stackKeyKey), equals('__defaultKey__'));

      elementsList = series.getAttr(barElementsKey);
      expect(elementsList.length, equals(4));

      element = elementsList[0];
      expect(element.barStackIndex, equals(0));
      expect(element.measureOffset, equals(0));
      expect(element.measureOffsetPlusMeasure, equals(5));
      expect(series.measureOffsetFn(0), equals(0));
      expect(element.strokeWidthPx, equals(3));
    });

    test('with stacked bar target lines containing zero and null', () {
      // Set up some nulls and zeros in the data.
      seriesList[2].data[0] = new MyRow('MyCampaign1', null);
      seriesList[2].data[2] = new MyRow('MyCampaign3', 0);

      seriesList[1].data[1] = new MyRow('MyCampaign2', null);
      seriesList[1].data[3] = new MyRow('MyOtherCampaign', 0);

      seriesList[0].data[2] = new MyRow('MyCampaign3', 0);

      renderer = makeRenderer(
          config: new BarTargetLineRendererConfig(
              groupingType: BarGroupingType.stacked));

      renderer.preprocessSeries(seriesList);

      expect(seriesList.length, equals(3));

      // Validate Desktop series.
      var series = seriesList[0];
      var elementsList = series.getAttr(barElementsKey);

      var element = elementsList[0];
      expect(element.barStackIndex, equals(2));
      expect(element.measureOffset, equals(5));
      expect(element.measureOffsetPlusMeasure, equals(10));
      expect(series.measureOffsetFn(0), equals(5));
      expect(element.strokeWidthPx, equals(3));

      element = elementsList[1];
      expect(element.measureOffset, equals(25));
      expect(element.measureOffsetPlusMeasure, equals(50));
      expect(series.measureOffsetFn(1), equals(25));
      expect(element.strokeWidthPx, equals(3));

      element = elementsList[2];
      expect(element.measureOffset, equals(100));
      expect(element.measureOffsetPlusMeasure, equals(100));
      expect(series.measureOffsetFn(2), equals(100));
      expect(element.strokeWidthPx, equals(3));

      element = elementsList[3];
      expect(element.measureOffset, equals(75));
      expect(element.measureOffsetPlusMeasure, equals(150));
      expect(series.measureOffsetFn(3), equals(75));
      expect(element.strokeWidthPx, equals(3));

      // Validate Tablet series.
      series = seriesList[1];

      elementsList = series.getAttr(barElementsKey);
      expect(elementsList.length, equals(4));

      element = elementsList[0];
      expect(element.barStackIndex, equals(1));
      expect(element.measureOffset, equals(0));
      expect(element.measureOffsetPlusMeasure, equals(5));
      expect(series.measureOffsetFn(0), equals(0));
      expect(element.strokeWidthPx, equals(3));

      element = elementsList[1];
      expect(element.measureOffset, equals(25));
      expect(element.measureOffsetPlusMeasure, equals(25));
      expect(series.measureOffsetFn(1), equals(25));
      expect(element.strokeWidthPx, equals(3));

      element = elementsList[2];
      expect(element.measureOffset, equals(0));
      expect(element.measureOffsetPlusMeasure, equals(100));
      expect(series.measureOffsetFn(2), equals(0));
      expect(element.strokeWidthPx, equals(3));

      element = elementsList[3];
      expect(element.measureOffset, equals(75));
      expect(element.measureOffsetPlusMeasure, equals(75));
      expect(series.measureOffsetFn(3), equals(75));
      expect(element.strokeWidthPx, equals(3));

      // Validate Mobile series.
      series = seriesList[2];
      elementsList = series.getAttr(barElementsKey);

      element = elementsList[0];
      expect(element.barStackIndex, equals(0));
      expect(element.measureOffset, equals(0));
      expect(element.measureOffsetPlusMeasure, equals(0));
      expect(series.measureOffsetFn(0), equals(0));
      expect(element.strokeWidthPx, equals(3));

      element = elementsList[1];
      expect(element.measureOffset, equals(0));
      expect(element.measureOffsetPlusMeasure, equals(25));
      expect(series.measureOffsetFn(1), equals(0));
      expect(element.strokeWidthPx, equals(3));

      element = elementsList[2];
      expect(element.measureOffset, equals(0));
      expect(element.measureOffsetPlusMeasure, equals(0));
      expect(series.measureOffsetFn(2), equals(0));
      expect(element.strokeWidthPx, equals(3));

      element = elementsList[3];
      expect(element.measureOffset, equals(0));
      expect(element.measureOffsetPlusMeasure, equals(75));
      expect(series.measureOffsetFn(3), equals(0));
      expect(element.strokeWidthPx, equals(3));
    });
  });

  test('with stroke width target lines', () {
    renderer = makeRenderer(
        config: new BarTargetLineRendererConfig(
            groupingType: BarGroupingType.grouped, strokeWidthPx: 5.0));

    renderer.preprocessSeries(seriesList);

    expect(seriesList.length, equals(3));

    // Validate Desktop series.
    var series = seriesList[0];
    var elementsList = series.getAttr(barElementsKey);

    var element = elementsList[0];
    expect(element.strokeWidthPx, equals(5));

    element = elementsList[1];
    expect(element.strokeWidthPx, equals(5));

    element = elementsList[2];
    expect(element.strokeWidthPx, equals(5));

    element = elementsList[3];
    expect(element.strokeWidthPx, equals(5));

    // Validate Tablet series.
    series = seriesList[1];

    elementsList = series.getAttr(barElementsKey);
    expect(elementsList.length, equals(4));

    element = elementsList[0];
    expect(element.strokeWidthPx, equals(5));

    element = elementsList[1];
    expect(element.strokeWidthPx, equals(5));

    element = elementsList[2];
    expect(element.strokeWidthPx, equals(5));

    element = elementsList[3];
    expect(element.strokeWidthPx, equals(5));

    // Validate Mobile series.
    series = seriesList[2];
    elementsList = series.getAttr(barElementsKey);

    element = elementsList[0];
    expect(element.strokeWidthPx, equals(5));

    element = elementsList[1];
    expect(element.strokeWidthPx, equals(5));

    element = elementsList[2];
    expect(element.strokeWidthPx, equals(5));

    element = elementsList[3];
    expect(element.strokeWidthPx, equals(5));
  });

  group('preprocess with weight pattern', () {
    test('with grouped bar target lines', () {
      renderer = makeRenderer(
          config: new BarTargetLineRendererConfig(
              groupingType: BarGroupingType.grouped, weightPattern: [3, 2, 1]));

      renderer.preprocessSeries(seriesList);

      // Verify that bar group weights are proportional to the sum of the used
      // segments of weightPattern. The weightPattern should be distributed
      // amongst bars that share the same domain value.

      expect(seriesList.length, equals(3));

      // Validate Desktop series.
      var series = seriesList[0];
      expect(series.getAttr(barGroupIndexKey), equals(0));
      expect(series.getAttr(barGroupCountKey), equals(3));
      expect(series.getAttr(previousBarGroupWeightKey), equals(0.0));
      expect(series.getAttr(barGroupWeightKey), equals(0.5));
      expect(series.getAttr(stackKeyKey), equals('__defaultKey__'));

      var elementsList = series.getAttr(barElementsKey);
      expect(elementsList.length, equals(4));

      var element = elementsList[0];
      expect(element.barStackIndex, equals(0));
      expect(element.measureOffset, equals(0));
      expect(element.measureOffsetPlusMeasure, equals(null));
      expect(series.measureOffsetFn(0), equals(0));
      expect(element.strokeWidthPx, equals(3));

      // Validate Tablet series.
      series = seriesList[1];
      expect(series.getAttr(barGroupIndexKey), equals(1));
      expect(series.getAttr(barGroupCountKey), equals(3));
      expect(series.getAttr(previousBarGroupWeightKey), equals(0.5));
      expect(series.getAttr(barGroupWeightKey), equals(1 / 3));
      expect(series.getAttr(stackKeyKey), equals('__defaultKey__'));

      elementsList = series.getAttr(barElementsKey);
      expect(elementsList.length, equals(4));

      element = elementsList[0];
      expect(element.barStackIndex, equals(0));
      expect(element.measureOffset, equals(0));
      expect(element.measureOffsetPlusMeasure, equals(null));
      expect(series.measureOffsetFn(0), equals(0));
      expect(element.strokeWidthPx, equals(3));

      // Validate Mobile series.
      series = seriesList[2];
      expect(series.getAttr(barGroupIndexKey), equals(2));
      expect(series.getAttr(barGroupCountKey), equals(3));
      expect(series.getAttr(previousBarGroupWeightKey), equals(0.5 + 1 / 3));
      expect(series.getAttr(barGroupWeightKey), equals(1 / 6));
      expect(series.getAttr(stackKeyKey), equals('__defaultKey__'));

      elementsList = series.getAttr(barElementsKey);
      expect(elementsList.length, equals(4));

      element = elementsList[0];
      expect(element.barStackIndex, equals(0));
      expect(element.measureOffset, equals(0));
      expect(element.measureOffsetPlusMeasure, equals(null));
      expect(series.measureOffsetFn(0), equals(0));
      expect(element.strokeWidthPx, equals(3));
    });

    test('with stacked bar target lines - weightPattern not used', () {
      renderer = makeRenderer(
          config: new BarTargetLineRendererConfig(
              groupingType: BarGroupingType.stacked, weightPattern: [2, 1]));

      renderer.preprocessSeries(seriesList);

      // Verify that weightPattern is not used, since stacked bars have only a
      // single group per domain value.

      expect(seriesList.length, equals(3));

      // Validate Desktop series.
      var series = seriesList[0];
      expect(series.getAttr(barGroupIndexKey), equals(0));
      expect(series.getAttr(barGroupCountKey), equals(1));
      expect(series.getAttr(previousBarGroupWeightKey), equals(0.0));
      expect(series.getAttr(barGroupWeightKey), equals(1));
      expect(series.getAttr(stackKeyKey), equals('__defaultKey__'));

      var elementsList = series.getAttr(barElementsKey);
      expect(elementsList.length, equals(4));

      var element = elementsList[0];
      expect(element.barStackIndex, equals(2));
      expect(element.measureOffset, equals(10));
      expect(element.measureOffsetPlusMeasure, equals(15));
      expect(series.measureOffsetFn(0), equals(10));
      expect(element.strokeWidthPx, equals(3));

      // Validate Tablet series.
      series = seriesList[1];
      expect(series.getAttr(barGroupIndexKey), equals(0));
      expect(series.getAttr(barGroupCountKey), equals(1));
      expect(series.getAttr(previousBarGroupWeightKey), equals(0.0));
      expect(series.getAttr(barGroupWeightKey), equals(1));
      expect(series.getAttr(stackKeyKey), equals('__defaultKey__'));

      elementsList = series.getAttr(barElementsKey);
      expect(elementsList.length, equals(4));

      element = elementsList[0];
      expect(element.barStackIndex, equals(1));
      expect(element.measureOffset, equals(5));
      expect(element.measureOffsetPlusMeasure, equals(10));
      expect(series.measureOffsetFn(0), equals(5));
      expect(element.strokeWidthPx, equals(3));

      // Validate Mobile series.
      series = seriesList[2];
      expect(series.getAttr(barGroupIndexKey), equals(0));
      expect(series.getAttr(barGroupCountKey), equals(1));
      expect(series.getAttr(previousBarGroupWeightKey), equals(0.0));
      expect(series.getAttr(barGroupWeightKey), equals(1));
      expect(series.getAttr(stackKeyKey), equals('__defaultKey__'));

      elementsList = series.getAttr(barElementsKey);
      expect(elementsList.length, equals(4));

      element = elementsList[0];
      expect(element.barStackIndex, equals(0));
      expect(element.measureOffset, equals(0));
      expect(element.measureOffsetPlusMeasure, equals(5));
      expect(series.measureOffsetFn(0), equals(0));
      expect(element.strokeWidthPx, equals(3));
    });
  });

  group('null measure', () {
    test('only include null in draw if animating from a non null measure', () {
      // Helper to create series list for this test only.
      List<MutableSeries<String>> _createSeriesList(List<MyRow> data) {
        final domainAxis = new MockAxis<dynamic>();
        when(domainAxis.rangeBand).thenReturn(100.0);
        when(domainAxis.getLocation('MyCampaign1')).thenReturn(20.0);
        when(domainAxis.getLocation('MyCampaign2')).thenReturn(40.0);
        when(domainAxis.getLocation('MyCampaign3')).thenReturn(60.0);
        when(domainAxis.getLocation('MyOtherCampaign')).thenReturn(80.0);
        final measureAxis = new MockAxis<num>();
        when(measureAxis.getLocation(0)).thenReturn(0.0);
        when(measureAxis.getLocation(5)).thenReturn(5.0);
        when(measureAxis.getLocation(75)).thenReturn(75.0);
        when(measureAxis.getLocation(100)).thenReturn(100.0);

        final color = new Color.fromHex(code: '#000000');

        final series = new MutableSeries<String>(new Series<MyRow, String>(
            id: 'Desktop',
            domainFn: (MyRow row, _) => row.campaign,
            measureFn: (MyRow row, _) => row.clickCount,
            measureOffsetFn: (_, __) => 0,
            colorFn: (_, __) => color,
            fillColorFn: (_, __) => color,
            dashPatternFn: (_, __) => [1],
            data: data))
          ..setAttr(domainAxisKey, domainAxis)
          ..setAttr(measureAxisKey, measureAxis);

        return [series];
      }

      final canvas = new MockCanvas();

      final myDataWithNull = [
        new MyRow('MyCampaign1', 5),
        new MyRow('MyCampaign2', null),
        new MyRow('MyCampaign3', 100),
        new MyRow('MyOtherCampaign', 75),
      ];
      final seriesListWithNull = _createSeriesList(myDataWithNull);

      final myDataWithMeasures = [
        new MyRow('MyCampaign1', 5),
        new MyRow('MyCampaign2', 0),
        new MyRow('MyCampaign3', 100),
        new MyRow('MyOtherCampaign', 75),
      ];
      final seriesListWithMeasures = _createSeriesList(myDataWithMeasures);

      renderer = makeRenderer(
          config: new BarTargetLineRendererConfig(
              groupingType: BarGroupingType.grouped));

      // Verify that only 3 lines are drawn for an initial draw with null data.
      renderer.preprocessSeries(seriesListWithNull);
      renderer.update(seriesListWithNull, true);
      canvas.drawLinePointsList.clear();
      renderer.paint(canvas, 0.5);
      expect(canvas.drawLinePointsList, hasLength(3));

      // On animation complete, verify that only 3 lines are drawn.
      canvas.drawLinePointsList.clear();
      renderer.paint(canvas, 1.0);
      expect(canvas.drawLinePointsList, hasLength(3));

      // Change series list where there are measures on all values, verify all
      // 4 lines were drawn
      renderer.preprocessSeries(seriesListWithMeasures);
      renderer.update(seriesListWithMeasures, true);
      canvas.drawLinePointsList.clear();
      renderer.paint(canvas, 0.5);
      expect(canvas.drawLinePointsList, hasLength(4));

      // Change series to one with null measures, verifies all 4 lines drawn
      renderer.preprocessSeries(seriesListWithNull);
      renderer.update(seriesListWithNull, true);
      canvas.drawLinePointsList.clear();
      renderer.paint(canvas, 0.5);
      expect(canvas.drawLinePointsList, hasLength(4));

      // On animation complete, verify that only 3 lines are drawn.
      canvas.drawLinePointsList.clear();
      renderer.paint(canvas, 1.0);
      expect(canvas.drawLinePointsList, hasLength(3));
    });
  });
}
