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

import 'dart:math' show Rectangle;

import 'package:charts_common/src/chart/cartesian/axis/axis.dart';
import 'package:charts_common/src/chart/cartesian/axis/numeric_tick_provider.dart';
import 'package:charts_common/src/chart/cartesian/axis/tick_formatter.dart';
import 'package:charts_common/src/chart/cartesian/axis/linear/linear_scale.dart';
import 'package:charts_common/src/chart/common/base_chart.dart';
import 'package:charts_common/src/chart/common/chart_context.dart';
import 'package:charts_common/src/chart/common/behavior/range_annotation.dart';
import 'package:charts_common/src/chart/line/line_chart.dart';
import 'package:charts_common/src/common/material_palette.dart';
import 'package:charts_common/src/data/series.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockContext extends Mock implements ChartContext {}

class ConcreteChart extends LineChart {
  LifecycleListener<num> lastListener;

  final _domainAxis = new ConcreteNumericAxis();

  final _primaryMeasureAxis = new ConcreteNumericAxis();

  @override
  addLifecycleListener(LifecycleListener listener) {
    lastListener = listener;
    return super.addLifecycleListener(listener);
  }

  @override
  removeLifecycleListener(LifecycleListener listener) {
    expect(listener, equals(lastListener));
    lastListener = null;
    return super.removeLifecycleListener(listener);
  }

  @override
  Axis get domainAxis => _domainAxis;

  @override
  Axis getMeasureAxis({String axisId}) => _primaryMeasureAxis;
}

class ConcreteNumericAxis extends Axis<num> {
  ConcreteNumericAxis()
      : super(
          tickProvider: new MockTickProvider(),
          tickFormatter: new NumericTickFormatter(),
          scale: new LinearScale(),
        );
}

class MockTickProvider extends Mock implements NumericTickProvider {}

void main() {
  Rectangle<int> drawBounds;
  Rectangle<int> domainAxisBounds;
  Rectangle<int> measureAxisBounds;

  ConcreteChart _chart;

  Series<MyRow, int> _series1;
  final _s1D1 = new MyRow(0, 11);
  final _s1D2 = new MyRow(1, 12);
  final _s1D3 = new MyRow(2, 13);

  Series<MyRow, int> _series2;
  final _s2D1 = new MyRow(3, 21);
  final _s2D2 = new MyRow(4, 22);
  final _s2D3 = new MyRow(5, 23);

  const _dashPattern = const <int>[2, 3];

  List<RangeAnnotationSegment<num>> _annotations1;

  List<RangeAnnotationSegment<num>> _annotations2;

  List<LineAnnotationSegment<num>> _annotations3;

  ConcreteChart _makeChart() {
    final chart = new ConcreteChart();

    final context = new MockContext();
    when(context.chartContainerIsRtl).thenReturn(false);
    when(context.isRtl).thenReturn(false);
    chart.context = context;

    return chart;
  }

  /// Initializes the [chart], draws the [seriesList], and configures mock axis
  /// layout bounds.
  _drawSeriesList(ConcreteChart chart, List<Series<MyRow, int>> seriesList) {
    _chart.domainAxis.autoViewport = true;
    _chart.domainAxis.resetDomains();

    _chart.getMeasureAxis().autoViewport = true;
    _chart.getMeasureAxis().resetDomains();

    _chart.draw(seriesList);

    _chart.domainAxis.layout(domainAxisBounds, drawBounds);

    _chart.getMeasureAxis().layout(measureAxisBounds, drawBounds);

    _chart.lastListener.onAxisConfigured();
  }

  setUpAll(() {
    drawBounds = new Rectangle<int>(0, 0, 100, 100);
    domainAxisBounds = new Rectangle<int>(0, 0, 100, 100);
    measureAxisBounds = new Rectangle<int>(0, 0, 100, 100);
  });

  setUp(() {
    _chart = _makeChart();

    _series1 = new Series<MyRow, int>(
        id: 's1',
        data: [_s1D1, _s1D2, _s1D3],
        domainFn: (dynamic row, _) => row.campaign,
        measureFn: (dynamic row, _) => row.count,
        colorFn: (_, __) => MaterialPalette.blue.shadeDefault);

    _series2 = new Series<MyRow, int>(
        id: 's2',
        data: [_s2D1, _s2D2, _s2D3],
        domainFn: (dynamic row, _) => row.campaign,
        measureFn: (dynamic row, _) => row.count,
        colorFn: (_, __) => MaterialPalette.red.shadeDefault);

    _annotations1 = [
      new RangeAnnotationSegment(1, 2, RangeAnnotationAxisType.domain,
          startLabel: 'Ann 1'),
      new RangeAnnotationSegment(4, 5, RangeAnnotationAxisType.domain,
          color: MaterialPalette.gray.shade200, endLabel: 'Ann 2'),
      new RangeAnnotationSegment(5, 5.5, RangeAnnotationAxisType.measure,
          startLabel: 'Really long tick start label',
          endLabel: 'Really long tick end label'),
      new RangeAnnotationSegment(10, 15, RangeAnnotationAxisType.measure,
          startLabel: 'Ann 4 Start', endLabel: 'Ann 4 End'),
      new RangeAnnotationSegment(16, 22, RangeAnnotationAxisType.measure,
          startLabel: 'Ann 5 Start', endLabel: 'Ann 5 End'),
    ];

    _annotations2 = [
      new RangeAnnotationSegment(1, 2, RangeAnnotationAxisType.domain),
      new RangeAnnotationSegment(4, 5, RangeAnnotationAxisType.domain,
          color: MaterialPalette.gray.shade200),
      new RangeAnnotationSegment(8, 10, RangeAnnotationAxisType.domain,
          color: MaterialPalette.gray.shade300),
    ];

    _annotations3 = [
      new LineAnnotationSegment(1, RangeAnnotationAxisType.measure,
          startLabel: 'Ann 1 Start', endLabel: 'Ann 1 End'),
      new LineAnnotationSegment(4, RangeAnnotationAxisType.measure,
          startLabel: 'Ann 2 Start',
          endLabel: 'Ann 2 End',
          color: MaterialPalette.gray.shade200,
          dashPattern: _dashPattern),
    ];
  });

  group('RangeAnnotation', () {
    test('renders the annotations', () {
      // Setup
      final behavior = new RangeAnnotation<num>(_annotations1);
      final tester = new RangeAnnotationTester(behavior);
      behavior.attachTo(_chart);

      final seriesList = [_series1, _series2];

      // Act
      _drawSeriesList(_chart, seriesList);

      // Verify
      expect(_chart.domainAxis.getLocation(2), equals(40.0));
      expect(
          tester.doesAnnotationExist(
              startPosition: 20.0,
              endPosition: 40.0,
              color: MaterialPalette.gray.shade100,
              startLabel: 'Ann 1',
              labelAnchor: AnnotationLabelAnchor.end,
              labelDirection: AnnotationLabelDirection.vertical,
              labelPosition: AnnotationLabelPosition.auto),
          equals(true));
      expect(
          tester.doesAnnotationExist(
              startPosition: 80.0,
              endPosition: 100.0,
              color: MaterialPalette.gray.shade200,
              endLabel: 'Ann 2',
              labelAnchor: AnnotationLabelAnchor.end,
              labelDirection: AnnotationLabelDirection.vertical,
              labelPosition: AnnotationLabelPosition.auto),
          equals(true));

      // Verify measure annotations
      expect(_chart.getMeasureAxis().getLocation(11).round(), equals(33));
      expect(
          tester.doesAnnotationExist(
              startPosition: 0.0,
              endPosition: 2.78,
              color: MaterialPalette.gray.shade100,
              startLabel: 'Really long tick start label',
              endLabel: 'Really long tick end label',
              labelAnchor: AnnotationLabelAnchor.end,
              labelDirection: AnnotationLabelDirection.horizontal,
              labelPosition: AnnotationLabelPosition.auto),
          equals(true));
      expect(
          tester.doesAnnotationExist(
              startPosition: 27.78,
              endPosition: 55.56,
              color: MaterialPalette.gray.shade100,
              startLabel: 'Ann 4 Start',
              endLabel: 'Ann 4 End',
              labelAnchor: AnnotationLabelAnchor.end,
              labelDirection: AnnotationLabelDirection.horizontal,
              labelPosition: AnnotationLabelPosition.auto),
          equals(true));
      expect(
          tester.doesAnnotationExist(
              startPosition: 61.11,
              endPosition: 94.44,
              color: MaterialPalette.gray.shade100,
              startLabel: 'Ann 5 Start',
              endLabel: 'Ann 5 End',
              labelAnchor: AnnotationLabelAnchor.end,
              labelDirection: AnnotationLabelDirection.horizontal,
              labelPosition: AnnotationLabelPosition.auto),
          equals(true));
    });

    test('extends the domain axis when annotations fall outside the range', () {
      // Setup
      final behavior = new RangeAnnotation<num>(_annotations2);
      final tester = new RangeAnnotationTester(behavior);
      behavior.attachTo(_chart);

      final seriesList = [_series1, _series2];

      // Act
      _drawSeriesList(_chart, seriesList);

      // Verify
      expect(_chart.domainAxis.getLocation(2), equals(20.0));
      expect(
          tester.doesAnnotationExist(
              startPosition: 10.0,
              endPosition: 20.0,
              color: MaterialPalette.gray.shade100,
              labelAnchor: AnnotationLabelAnchor.end,
              labelDirection: AnnotationLabelDirection.vertical,
              labelPosition: AnnotationLabelPosition.auto),
          equals(true));
      expect(
          tester.doesAnnotationExist(
              startPosition: 40.0,
              endPosition: 50.0,
              color: MaterialPalette.gray.shade200,
              labelAnchor: AnnotationLabelAnchor.end,
              labelDirection: AnnotationLabelDirection.vertical,
              labelPosition: AnnotationLabelPosition.auto),
          equals(true));
      expect(
          tester.doesAnnotationExist(
              startPosition: 80.0,
              endPosition: 100.0,
              color: MaterialPalette.gray.shade300,
              labelAnchor: AnnotationLabelAnchor.end,
              labelDirection: AnnotationLabelDirection.vertical,
              labelPosition: AnnotationLabelPosition.auto),
          equals(true));
    });

    test('test dash pattern equality', () {
      // Setup
      final behavior = new RangeAnnotation<num>(_annotations3);
      final tester = new RangeAnnotationTester(behavior);
      behavior.attachTo(_chart);

      final seriesList = [_series1, _series2];

      // Act
      _drawSeriesList(_chart, seriesList);

      // Verify
      expect(_chart.domainAxis.getLocation(2), equals(40.0));
      expect(
          tester.doesAnnotationExist(
              startPosition: 0.0,
              endPosition: 0.0,
              color: MaterialPalette.gray.shade100,
              startLabel: 'Ann 1 Start',
              endLabel: 'Ann 1 End',
              labelAnchor: AnnotationLabelAnchor.end,
              labelDirection: AnnotationLabelDirection.horizontal,
              labelPosition: AnnotationLabelPosition.auto),
          equals(true));
      expect(
          tester.doesAnnotationExist(
              startPosition: 13.64,
              endPosition: 13.64,
              color: MaterialPalette.gray.shade200,
              dashPattern: _dashPattern,
              startLabel: 'Ann 2 Start',
              endLabel: 'Ann 2 End',
              labelAnchor: AnnotationLabelAnchor.end,
              labelDirection: AnnotationLabelDirection.horizontal,
              labelPosition: AnnotationLabelPosition.auto),
          equals(true));
    });

    test('cleans up', () {
      // Setup
      final behavior = new RangeAnnotation<num>(_annotations2);
      behavior.attachTo(_chart);

      // Act
      behavior.removeFrom(_chart);

      // Verify
      expect(_chart.lastListener, isNull);
    });
  });
}

class MyRow {
  final int campaign;
  final int count;
  MyRow(this.campaign, this.count);
}
