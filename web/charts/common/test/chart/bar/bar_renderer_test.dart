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

import 'package:charts_common/src/chart/bar/bar_renderer.dart';
import 'package:charts_common/src/chart/bar/bar_renderer_config.dart';
import 'package:charts_common/src/chart/bar/base_bar_renderer.dart';
import 'package:charts_common/src/chart/bar/base_bar_renderer_config.dart';
import 'package:charts_common/src/chart/cartesian/cartesian_chart.dart';
import 'package:charts_common/src/chart/cartesian/axis/axis.dart';
import 'package:charts_common/src/chart/common/chart_canvas.dart';
import 'package:charts_common/src/chart/common/chart_context.dart';
import 'package:charts_common/src/chart/common/processed_series.dart'
    show MutableSeries;
import 'package:charts_common/src/common/material_palette.dart'
    show MaterialPalette;
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

class MockCanvas extends Mock implements ChartCanvas {}

class MockContext extends Mock implements ChartContext {}

class MockChart extends Mock implements CartesianChart {}

class FakeBarRenderer<D> extends BarRenderer<D> {
  int paintBarCallCount = 0;

  factory FakeBarRenderer({BarRendererConfig config, String rendererId}) {
    return new FakeBarRenderer._internal(
        config: config, rendererId: rendererId);
  }

  FakeBarRenderer._internal({BarRendererConfig config, String rendererId})
      : super.internal(config: config, rendererId: rendererId);

  @override
  void paintBar(ChartCanvas canvas, double animationPercent,
      Iterable<BarRendererElement<D>> barElements) {
    paintBarCallCount += 1;
  }
}

void main() {
  BarRenderer renderer;
  List<MutableSeries<String>> seriesList;
  List<MutableSeries<String>> groupedStackedSeriesList;

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

  BarRenderer makeRenderer({BarRendererConfig config}) {
    final renderer = new BarRenderer(config: config);
    _configureBaseRenderer(renderer, true);
    return renderer;
  }

  FakeBarRenderer makeFakeRenderer({BarRendererConfig config}) {
    final renderer = new FakeBarRenderer(config: config);
    _configureBaseRenderer(renderer, true);
    return renderer;
  }

  setUp(() {
    var myFakeDesktopAData = [
      new MyRow('MyCampaign1', 5),
      new MyRow('MyCampaign2', 25),
      new MyRow('MyCampaign3', 100),
      new MyRow('MyOtherCampaign', 75),
    ];

    var myFakeTabletAData = [
      new MyRow('MyCampaign1', 5),
      new MyRow('MyCampaign2', 25),
      new MyRow('MyCampaign3', 100),
      new MyRow('MyOtherCampaign', 75),
    ];

    var myFakeMobileAData = [
      new MyRow('MyCampaign1', 5),
      new MyRow('MyCampaign2', 25),
      new MyRow('MyCampaign3', 100),
      new MyRow('MyOtherCampaign', 75),
    ];

    var myFakeDesktopBData = [
      new MyRow('MyCampaign1', 5),
      new MyRow('MyCampaign2', 25),
      new MyRow('MyCampaign3', 100),
      new MyRow('MyOtherCampaign', 75),
    ];

    var myFakeTabletBData = [
      new MyRow('MyCampaign1', 5),
      new MyRow('MyCampaign2', 25),
      new MyRow('MyCampaign3', 100),
      new MyRow('MyOtherCampaign', 75),
    ];

    var myFakeMobileBData = [
      new MyRow('MyCampaign1', 5),
      new MyRow('MyCampaign2', 25),
      new MyRow('MyCampaign3', 100),
      new MyRow('MyOtherCampaign', 75),
    ];

    seriesList = [
      new MutableSeries<String>(new Series<MyRow, String>(
          id: 'Desktop',
          colorFn: (_, __) => MaterialPalette.blue.shadeDefault,
          domainFn: (MyRow row, _) => row.campaign,
          measureFn: (MyRow row, _) => row.clickCount,
          measureOffsetFn: (MyRow row, _) => 0,
          data: myFakeDesktopAData)),
      new MutableSeries<String>(new Series<MyRow, String>(
          id: 'Tablet',
          colorFn: (_, __) => MaterialPalette.red.shadeDefault,
          domainFn: (MyRow row, _) => row.campaign,
          measureFn: (MyRow row, _) => row.clickCount,
          measureOffsetFn: (MyRow row, _) => 0,
          data: myFakeTabletAData)),
      new MutableSeries<String>(new Series<MyRow, String>(
          id: 'Mobile',
          colorFn: (_, __) => MaterialPalette.green.shadeDefault,
          domainFn: (MyRow row, _) => row.campaign,
          measureFn: (MyRow row, _) => row.clickCount,
          measureOffsetFn: (MyRow row, _) => 0,
          data: myFakeMobileAData))
    ];

    groupedStackedSeriesList = [
      new MutableSeries<String>(new Series<MyRow, String>(
          id: 'Desktop A',
          seriesCategory: 'A',
          colorFn: (_, __) => MaterialPalette.blue.shadeDefault,
          domainFn: (MyRow row, _) => row.campaign,
          measureFn: (MyRow row, _) => row.clickCount,
          measureOffsetFn: (MyRow row, _) => 0,
          data: myFakeDesktopAData)),
      new MutableSeries<String>(new Series<MyRow, String>(
          id: 'Tablet A',
          seriesCategory: 'A',
          colorFn: (_, __) => MaterialPalette.red.shadeDefault,
          domainFn: (MyRow row, _) => row.campaign,
          measureFn: (MyRow row, _) => row.clickCount,
          measureOffsetFn: (MyRow row, _) => 0,
          data: myFakeTabletAData)),
      new MutableSeries<String>(new Series<MyRow, String>(
          id: 'Mobile A',
          seriesCategory: 'A',
          colorFn: (_, __) => MaterialPalette.green.shadeDefault,
          domainFn: (MyRow row, _) => row.campaign,
          measureFn: (MyRow row, _) => row.clickCount,
          measureOffsetFn: (MyRow row, _) => 0,
          data: myFakeMobileAData)),
      new MutableSeries<String>(new Series<MyRow, String>(
          id: 'Desktop B',
          seriesCategory: 'B',
          colorFn: (_, __) => MaterialPalette.blue.shadeDefault,
          domainFn: (MyRow row, _) => row.campaign,
          measureFn: (MyRow row, _) => row.clickCount,
          measureOffsetFn: (MyRow row, _) => 0,
          data: myFakeDesktopBData)),
      new MutableSeries<String>(new Series<MyRow, String>(
          id: 'Tablet B',
          seriesCategory: 'B',
          colorFn: (_, __) => MaterialPalette.red.shadeDefault,
          domainFn: (MyRow row, _) => row.campaign,
          measureFn: (MyRow row, _) => row.clickCount,
          measureOffsetFn: (MyRow row, _) => 0,
          data: myFakeTabletBData)),
      new MutableSeries<String>(new Series<MyRow, String>(
          id: 'Mobile B',
          seriesCategory: 'B',
          colorFn: (_, __) => MaterialPalette.green.shadeDefault,
          domainFn: (MyRow row, _) => row.campaign,
          measureFn: (MyRow row, _) => row.clickCount,
          measureOffsetFn: (MyRow row, _) => 0,
          data: myFakeMobileBData))
    ];
  });

  group('preprocess', () {
    test('with grouped bars', () {
      renderer = makeRenderer(
          config: new BarRendererConfig(groupingType: BarGroupingType.grouped));

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
    });

    test('with grouped stacked bars', () {
      renderer = makeRenderer(
          config: new BarRendererConfig(
              groupingType: BarGroupingType.groupedStacked));

      renderer.preprocessSeries(groupedStackedSeriesList);

      expect(groupedStackedSeriesList.length, equals(6));

      // Validate Desktop A series.
      var series = groupedStackedSeriesList[0];
      expect(series.getAttr(barGroupIndexKey), equals(0));
      expect(series.getAttr(barGroupCountKey), equals(2));
      expect(series.getAttr(previousBarGroupWeightKey), equals(0.0));
      expect(series.getAttr(barGroupWeightKey), equals(0.5));
      expect(series.getAttr(stackKeyKey), equals('A'));

      var elementsList = series.getAttr(barElementsKey);
      expect(elementsList.length, equals(4));

      var element = elementsList[0];
      expect(element.barStackIndex, equals(2));
      expect(element.measureOffset, equals(10));
      expect(element.measureOffsetPlusMeasure, equals(15));
      expect(series.measureOffsetFn(0), equals(10));

      // Validate Tablet A series.
      series = groupedStackedSeriesList[1];
      expect(series.getAttr(barGroupIndexKey), equals(0));
      expect(series.getAttr(barGroupCountKey), equals(2));
      expect(series.getAttr(previousBarGroupWeightKey), equals(0.0));
      expect(series.getAttr(barGroupWeightKey), equals(0.5));
      expect(series.getAttr(stackKeyKey), equals('A'));

      elementsList = series.getAttr(barElementsKey);
      expect(elementsList.length, equals(4));

      element = elementsList[0];
      expect(element.barStackIndex, equals(1));
      expect(element.measureOffset, equals(5));
      expect(element.measureOffsetPlusMeasure, equals(10));
      expect(series.measureOffsetFn(0), equals(5));

      // Validate Mobile A series.
      series = groupedStackedSeriesList[2];
      expect(series.getAttr(barGroupIndexKey), equals(0));
      expect(series.getAttr(barGroupCountKey), equals(2));
      expect(series.getAttr(previousBarGroupWeightKey), equals(0.0));
      expect(series.getAttr(barGroupWeightKey), equals(0.5));
      expect(series.getAttr(stackKeyKey), equals('A'));

      elementsList = series.getAttr(barElementsKey);
      expect(elementsList.length, equals(4));

      element = elementsList[0];
      expect(element.barStackIndex, equals(0));
      expect(element.measureOffset, equals(0));
      expect(element.measureOffsetPlusMeasure, equals(5));
      expect(series.measureOffsetFn(0), equals(0));

      // Validate Desktop B series.
      series = groupedStackedSeriesList[3];
      expect(series.getAttr(barGroupIndexKey), equals(1));
      expect(series.getAttr(barGroupCountKey), equals(2));
      expect(series.getAttr(previousBarGroupWeightKey), equals(0.5));
      expect(series.getAttr(barGroupWeightKey), equals(0.5));
      expect(series.getAttr(stackKeyKey), equals('B'));

      elementsList = series.getAttr(barElementsKey);
      expect(elementsList.length, equals(4));

      element = elementsList[0];
      expect(element.barStackIndex, equals(2));
      expect(element.measureOffset, equals(10));
      expect(element.measureOffsetPlusMeasure, equals(15));
      expect(series.measureOffsetFn(0), equals(10));

      // Validate Tablet B series.
      series = groupedStackedSeriesList[4];
      expect(series.getAttr(barGroupIndexKey), equals(1));
      expect(series.getAttr(barGroupCountKey), equals(2));
      expect(series.getAttr(previousBarGroupWeightKey), equals(0.5));
      expect(series.getAttr(barGroupWeightKey), equals(0.5));
      expect(series.getAttr(stackKeyKey), equals('B'));

      elementsList = series.getAttr(barElementsKey);
      expect(elementsList.length, equals(4));

      element = elementsList[0];
      expect(element.barStackIndex, equals(1));
      expect(element.measureOffset, equals(5));
      expect(element.measureOffsetPlusMeasure, equals(10));
      expect(series.measureOffsetFn(0), equals(5));

      // Validate Mobile B series.
      series = groupedStackedSeriesList[5];
      expect(series.getAttr(barGroupIndexKey), equals(1));
      expect(series.getAttr(barGroupCountKey), equals(2));
      expect(series.getAttr(previousBarGroupWeightKey), equals(0.5));
      expect(series.getAttr(barGroupWeightKey), equals(0.5));
      expect(series.getAttr(stackKeyKey), equals('B'));

      elementsList = series.getAttr(barElementsKey);
      expect(elementsList.length, equals(4));

      element = elementsList[0];
      expect(element.barStackIndex, equals(0));
      expect(element.measureOffset, equals(0));
      expect(element.measureOffsetPlusMeasure, equals(5));
      expect(series.measureOffsetFn(0), equals(0));
    });

    test('with stacked bars', () {
      renderer = makeRenderer(
          config: new BarRendererConfig(groupingType: BarGroupingType.stacked));

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
    });

    test('with stacked bars containing zero and null', () {
      // Set up some nulls and zeros in the data.
      seriesList[2].data[0] = new MyRow('MyCampaign1', null);
      seriesList[2].data[2] = new MyRow('MyCampaign3', 0);

      seriesList[1].data[1] = new MyRow('MyCampaign2', null);
      seriesList[1].data[3] = new MyRow('MyOtherCampaign', 0);

      seriesList[0].data[2] = new MyRow('MyCampaign3', 0);

      renderer = makeRenderer(
          config: new BarRendererConfig(groupingType: BarGroupingType.stacked));

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

      element = elementsList[1];
      expect(element.measureOffset, equals(25));
      expect(element.measureOffsetPlusMeasure, equals(50));
      expect(series.measureOffsetFn(1), equals(25));

      element = elementsList[2];
      expect(element.measureOffset, equals(100));
      expect(element.measureOffsetPlusMeasure, equals(100));
      expect(series.measureOffsetFn(2), equals(100));

      element = elementsList[3];
      expect(element.measureOffset, equals(75));
      expect(element.measureOffsetPlusMeasure, equals(150));
      expect(series.measureOffsetFn(3), equals(75));

      // Validate Tablet series.
      series = seriesList[1];

      elementsList = series.getAttr(barElementsKey);
      expect(elementsList.length, equals(4));

      element = elementsList[0];
      expect(element.barStackIndex, equals(1));
      expect(element.measureOffset, equals(0));
      expect(element.measureOffsetPlusMeasure, equals(5));
      expect(series.measureOffsetFn(0), equals(0));

      element = elementsList[1];
      expect(element.measureOffset, equals(25));
      expect(element.measureOffsetPlusMeasure, equals(25));
      expect(series.measureOffsetFn(1), equals(25));

      element = elementsList[2];
      expect(element.measureOffset, equals(0));
      expect(element.measureOffsetPlusMeasure, equals(100));
      expect(series.measureOffsetFn(2), equals(0));

      element = elementsList[3];
      expect(element.measureOffset, equals(75));
      expect(element.measureOffsetPlusMeasure, equals(75));
      expect(series.measureOffsetFn(3), equals(75));

      // Validate Mobile series.
      series = seriesList[2];
      elementsList = series.getAttr(barElementsKey);

      element = elementsList[0];
      expect(element.barStackIndex, equals(0));
      expect(element.measureOffset, equals(0));
      expect(element.measureOffsetPlusMeasure, equals(0));
      expect(series.measureOffsetFn(0), equals(0));

      element = elementsList[1];
      expect(element.measureOffset, equals(0));
      expect(element.measureOffsetPlusMeasure, equals(25));
      expect(series.measureOffsetFn(1), equals(0));

      element = elementsList[2];
      expect(element.measureOffset, equals(0));
      expect(element.measureOffsetPlusMeasure, equals(0));
      expect(series.measureOffsetFn(2), equals(0));

      element = elementsList[3];
      expect(element.measureOffset, equals(0));
      expect(element.measureOffsetPlusMeasure, equals(75));
      expect(series.measureOffsetFn(3), equals(0));
    });
  });

  group('preprocess weight pattern', () {
    test('with grouped bars', () {
      renderer = makeRenderer(
          config: new BarRendererConfig(
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
    });

    test('with grouped stacked bars', () {
      renderer = makeRenderer(
          config: new BarRendererConfig(
              groupingType: BarGroupingType.groupedStacked,
              weightPattern: [2, 1]));

      renderer.preprocessSeries(groupedStackedSeriesList);

      // Verify that bar group weights are proportional to the sum of the used
      // segments of weightPattern. The weightPattern should be distributed
      // amongst bars that share the same domain and series category values.

      expect(groupedStackedSeriesList.length, equals(6));

      // Validate Desktop A series.
      var series = groupedStackedSeriesList[0];
      expect(series.getAttr(barGroupIndexKey), equals(0));
      expect(series.getAttr(barGroupCountKey), equals(2));
      expect(series.getAttr(previousBarGroupWeightKey), equals(0.0));
      expect(series.getAttr(barGroupWeightKey), equals(2 / 3));
      expect(series.getAttr(stackKeyKey), equals('A'));

      var elementsList = series.getAttr(barElementsKey);
      expect(elementsList.length, equals(4));

      var element = elementsList[0];
      expect(element.barStackIndex, equals(2));
      expect(element.measureOffset, equals(10));
      expect(element.measureOffsetPlusMeasure, equals(15));
      expect(series.measureOffsetFn(0), equals(10));

      // Validate Tablet A series.
      series = groupedStackedSeriesList[1];
      expect(series.getAttr(barGroupIndexKey), equals(0));
      expect(series.getAttr(barGroupCountKey), equals(2));
      expect(series.getAttr(previousBarGroupWeightKey), equals(0.0));
      expect(series.getAttr(barGroupWeightKey), equals(2 / 3));
      expect(series.getAttr(stackKeyKey), equals('A'));

      elementsList = series.getAttr(barElementsKey);
      expect(elementsList.length, equals(4));

      element = elementsList[0];
      expect(element.barStackIndex, equals(1));
      expect(element.measureOffset, equals(5));
      expect(element.measureOffsetPlusMeasure, equals(10));
      expect(series.measureOffsetFn(0), equals(5));

      // Validate Mobile A series.
      series = groupedStackedSeriesList[2];
      expect(series.getAttr(barGroupIndexKey), equals(0));
      expect(series.getAttr(barGroupCountKey), equals(2));
      expect(series.getAttr(previousBarGroupWeightKey), equals(0.0));
      expect(series.getAttr(barGroupWeightKey), equals(2 / 3));
      expect(series.getAttr(stackKeyKey), equals('A'));

      elementsList = series.getAttr(barElementsKey);
      expect(elementsList.length, equals(4));

      element = elementsList[0];
      expect(element.barStackIndex, equals(0));
      expect(element.measureOffset, equals(0));
      expect(element.measureOffsetPlusMeasure, equals(5));
      expect(series.measureOffsetFn(0), equals(0));

      // Validate Desktop B series.
      series = groupedStackedSeriesList[3];
      expect(series.getAttr(barGroupIndexKey), equals(1));
      expect(series.getAttr(barGroupCountKey), equals(2));
      expect(series.getAttr(previousBarGroupWeightKey), equals(2 / 3));
      expect(series.getAttr(barGroupWeightKey), equals(1 / 3));
      expect(series.getAttr(stackKeyKey), equals('B'));

      elementsList = series.getAttr(barElementsKey);
      expect(elementsList.length, equals(4));

      element = elementsList[0];
      expect(element.barStackIndex, equals(2));
      expect(element.measureOffset, equals(10));
      expect(element.measureOffsetPlusMeasure, equals(15));
      expect(series.measureOffsetFn(0), equals(10));

      // Validate Tablet B series.
      series = groupedStackedSeriesList[4];
      expect(series.getAttr(barGroupIndexKey), equals(1));
      expect(series.getAttr(barGroupCountKey), equals(2));
      expect(series.getAttr(previousBarGroupWeightKey), equals(2 / 3));
      expect(series.getAttr(barGroupWeightKey), equals(1 / 3));
      expect(series.getAttr(stackKeyKey), equals('B'));

      elementsList = series.getAttr(barElementsKey);
      expect(elementsList.length, equals(4));

      element = elementsList[0];
      expect(element.barStackIndex, equals(1));
      expect(element.measureOffset, equals(5));
      expect(element.measureOffsetPlusMeasure, equals(10));
      expect(series.measureOffsetFn(0), equals(5));

      // Validate Mobile B series.
      series = groupedStackedSeriesList[5];
      expect(series.getAttr(barGroupIndexKey), equals(1));
      expect(series.getAttr(barGroupCountKey), equals(2));
      expect(series.getAttr(previousBarGroupWeightKey), equals(2 / 3));
      expect(series.getAttr(barGroupWeightKey), equals(1 / 3));
      expect(series.getAttr(stackKeyKey), equals('B'));

      elementsList = series.getAttr(barElementsKey);
      expect(elementsList.length, equals(4));

      element = elementsList[0];
      expect(element.barStackIndex, equals(0));
      expect(element.measureOffset, equals(0));
      expect(element.measureOffsetPlusMeasure, equals(5));
      expect(series.measureOffsetFn(0), equals(0));
    });

    test('with stacked bars - weightPattern not used', () {
      renderer = makeRenderer(
          config: new BarRendererConfig(
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

      final renderer = makeFakeRenderer(
          config: new BarRendererConfig(groupingType: BarGroupingType.grouped));

      // Verify that only 3 bars are drawn for an initial draw with null data.
      renderer.preprocessSeries(seriesListWithNull);
      renderer.update(seriesListWithNull, true);
      renderer.paintBarCallCount = 0;
      renderer.paint(canvas, 0.5);
      expect(renderer.paintBarCallCount, equals(3));

      // On animation complete, verify that only 3 bars are drawn.
      renderer.paintBarCallCount = 0;
      renderer.paint(canvas, 1.0);
      expect(renderer.paintBarCallCount, equals(3));

      // Change series list where there are measures on all values, verify all
      // 4 bars were drawn
      renderer.preprocessSeries(seriesListWithMeasures);
      renderer.update(seriesListWithMeasures, true);
      renderer.paintBarCallCount = 0;
      renderer.paint(canvas, 0.5);
      expect(renderer.paintBarCallCount, equals(4));

      // Change series to one with null measures, verifies all 4 bars drawn
      renderer.preprocessSeries(seriesListWithNull);
      renderer.update(seriesListWithNull, true);
      renderer.paintBarCallCount = 0;
      renderer.paint(canvas, 0.5);
      expect(renderer.paintBarCallCount, equals(4));

      // On animation complete, verify that only 3 bars are drawn.
      renderer.paintBarCallCount = 0;
      renderer.paint(canvas, 1.0);
      expect(renderer.paintBarCallCount, equals(3));
    });
  });
}
