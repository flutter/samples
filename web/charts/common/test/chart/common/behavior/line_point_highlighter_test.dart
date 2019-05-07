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

import 'package:charts_common/src/chart/cartesian/cartesian_chart.dart';
import 'package:charts_common/src/chart/cartesian/axis/axis.dart';
import 'package:charts_common/src/chart/common/base_chart.dart';
import 'package:charts_common/src/chart/common/behavior/line_point_highlighter.dart';
import 'package:charts_common/src/chart/common/datum_details.dart';
import 'package:charts_common/src/chart/common/processed_series.dart';
import 'package:charts_common/src/chart/common/series_datum.dart';
import 'package:charts_common/src/chart/common/series_renderer.dart';
import 'package:charts_common/src/chart/common/selection_model/selection_model.dart';
import 'package:charts_common/src/common/material_palette.dart';
import 'package:charts_common/src/data/series.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockChart extends Mock implements CartesianChart {
  LifecycleListener lastListener;

  @override
  addLifecycleListener(LifecycleListener listener) => lastListener = listener;

  @override
  removeLifecycleListener(LifecycleListener listener) {
    expect(listener, equals(lastListener));
    lastListener = null;
    return true;
  }

  @override
  bool get vertical => true;
}

class MockSelectionModel extends Mock implements MutableSelectionModel {
  SelectionModelListener lastListener;

  @override
  addSelectionChangedListener(SelectionModelListener listener) =>
      lastListener = listener;

  @override
  removeSelectionChangedListener(SelectionModelListener listener) {
    expect(listener, equals(lastListener));
    lastListener = null;
  }
}

class MockNumericAxis extends Mock implements NumericAxis {
  @override
  getLocation(num domain) {
    return 10.0;
  }
}

class MockSeriesRenderer extends BaseSeriesRenderer {
  @override
  void update(_, __) {}

  @override
  void paint(_, __) {}

  List<DatumDetails> getNearestDatumDetailPerSeries(
      Point<double> chartPoint, bool byDomain, Rectangle<int> boundsOverride) {
    return null;
  }

  DatumDetails addPositionToDetailsForSeriesDatum(
      DatumDetails details, SeriesDatum seriesDatum) {
    return new DatumDetails.from(details,
        chartPosition: new Point<double>(0.0, 0.0));
  }
}

void main() {
  MockChart _chart;
  MockSelectionModel _selectionModel;
  MockSeriesRenderer _seriesRenderer;

  MutableSeries<int> _series1;
  final _s1D1 = new MyRow(1, 11);
  final _s1D2 = new MyRow(2, 12);
  final _s1D3 = new MyRow(3, 13);

  MutableSeries<int> _series2;
  final _s2D1 = new MyRow(4, 21);
  final _s2D2 = new MyRow(5, 22);
  final _s2D3 = new MyRow(6, 23);

  List<DatumDetails> _mockGetSelectedDatumDetails(List<SeriesDatum> selection) {
    final details = <DatumDetails>[];

    for (SeriesDatum seriesDatum in selection) {
      details.add(_seriesRenderer.getDetailsForSeriesDatum(seriesDatum));
    }

    return details;
  }

  _setupSelection(List<SeriesDatum> selection) {
    final selected = <MyRow>[];

    for (var i = 0; i < selection.length; i++) {
      selected.add(selection[0].datum);
    }

    for (int i = 0; i < _series1.data.length; i++) {
      when(_selectionModel.isDatumSelected(_series1, i))
          .thenReturn(selected.contains(_series1.data[i]));
    }
    for (int i = 0; i < _series2.data.length; i++) {
      when(_selectionModel.isDatumSelected(_series2, i))
          .thenReturn(selected.contains(_series2.data[i]));
    }

    when(_selectionModel.selectedDatum).thenReturn(selection);

    final selectedDetails = _mockGetSelectedDatumDetails(selection);

    when(_chart.getSelectedDatumDetails(SelectionModelType.info))
        .thenReturn(selectedDetails);
  }

  setUp(() {
    _chart = new MockChart();

    _seriesRenderer = new MockSeriesRenderer();

    _selectionModel = new MockSelectionModel();
    when(_chart.getSelectionModel(SelectionModelType.info))
        .thenReturn(_selectionModel);

    _series1 = new MutableSeries(new Series<MyRow, int>(
        id: 's1',
        data: [_s1D1, _s1D2, _s1D3],
        domainFn: (MyRow row, _) => row.campaign,
        measureFn: (MyRow row, _) => row.count,
        colorFn: (_, __) => MaterialPalette.blue.shadeDefault))
      ..measureFn = (_) => 0.0;

    _series2 = new MutableSeries(new Series<MyRow, int>(
        id: 's2',
        data: [_s2D1, _s2D2, _s2D3],
        domainFn: (MyRow row, _) => row.campaign,
        measureFn: (MyRow row, _) => row.count,
        colorFn: (_, __) => MaterialPalette.red.shadeDefault))
      ..measureFn = (_) => 0.0;
  });

  group('LinePointHighlighter', () {
    test('highlights the selected points', () {
      // Setup
      final behavior =
          new LinePointHighlighter(selectionModelType: SelectionModelType.info);
      final tester = new LinePointHighlighterTester(behavior);
      behavior.attachTo(_chart);
      _setupSelection([
        new SeriesDatum(_series1, _s1D2),
        new SeriesDatum(_series2, _s2D2),
      ]);

      // Mock axes for returning fake domain locations.
      Axis domainAxis = new MockNumericAxis();
      Axis primaryMeasureAxis = new MockNumericAxis();

      _series1.setAttr(domainAxisKey, domainAxis);
      _series1.setAttr(measureAxisKey, primaryMeasureAxis);
      _series1.measureOffsetFn = (_) => 0.0;

      _series2.setAttr(domainAxisKey, domainAxis);
      _series2.setAttr(measureAxisKey, primaryMeasureAxis);
      _series2.measureOffsetFn = (_) => 0.0;

      // Act
      _selectionModel.lastListener(_selectionModel);
      verify(_chart.redraw(skipAnimation: true, skipLayout: true));

      _chart.lastListener.onAxisConfigured();

      // Verify
      expect(tester.getSelectionLength(), equals(2));

      expect(tester.isDatumSelected(_series1.data[0]), equals(false));
      expect(tester.isDatumSelected(_series1.data[1]), equals(true));
      expect(tester.isDatumSelected(_series1.data[2]), equals(false));

      expect(tester.isDatumSelected(_series2.data[0]), equals(false));
      expect(tester.isDatumSelected(_series2.data[1]), equals(true));
      expect(tester.isDatumSelected(_series2.data[2]), equals(false));
    });

    test('listens to other selection models', () {
      // Setup
      final behavior = new LinePointHighlighter(
          selectionModelType: SelectionModelType.action);
      when(_chart.getSelectionModel(SelectionModelType.action))
          .thenReturn(_selectionModel);

      // Act
      behavior.attachTo(_chart);

      // Verify
      verify(_chart.getSelectionModel(SelectionModelType.action));
      verifyNever(_chart.getSelectionModel(SelectionModelType.info));
    });

    test('leaves everything alone with no selection', () {
      // Setup
      final behavior =
          new LinePointHighlighter(selectionModelType: SelectionModelType.info);
      final tester = new LinePointHighlighterTester(behavior);
      behavior.attachTo(_chart);
      _setupSelection([]);

      // Act
      _selectionModel.lastListener(_selectionModel);
      verify(_chart.redraw(skipAnimation: true, skipLayout: true));
      _chart.lastListener.onAxisConfigured();

      // Verify
      expect(tester.getSelectionLength(), equals(0));

      expect(tester.isDatumSelected(_series1.data[0]), equals(false));
      expect(tester.isDatumSelected(_series1.data[1]), equals(false));
      expect(tester.isDatumSelected(_series1.data[2]), equals(false));

      expect(tester.isDatumSelected(_series2.data[0]), equals(false));
      expect(tester.isDatumSelected(_series2.data[1]), equals(false));
      expect(tester.isDatumSelected(_series2.data[2]), equals(false));
    });

    test('cleans up', () {
      // Setup
      final behavior =
          new LinePointHighlighter(selectionModelType: SelectionModelType.info);
      behavior.attachTo(_chart);
      _setupSelection([
        new SeriesDatum(_series1, _s1D2),
        new SeriesDatum(_series2, _s2D2),
      ]);

      // Act
      behavior.removeFrom(_chart);

      // Verify
      expect(_chart.lastListener, isNull);
      expect(_selectionModel.lastListener, isNull);
    });
  });
}

class MyRow {
  final int campaign;
  final int count;
  MyRow(this.campaign, this.count);
}
