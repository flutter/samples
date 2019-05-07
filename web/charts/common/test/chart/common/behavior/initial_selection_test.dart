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

import 'package:charts_common/src/chart/common/base_chart.dart';
import 'package:charts_common/src/chart/common/chart_canvas.dart';
import 'package:charts_common/src/chart/common/datum_details.dart';
import 'package:charts_common/src/chart/common/behavior/initial_selection.dart';
import 'package:charts_common/src/chart/common/processed_series.dart';
import 'package:charts_common/src/chart/common/series_datum.dart';
import 'package:charts_common/src/chart/common/series_renderer.dart';
import 'package:charts_common/src/chart/common/selection_model/selection_model.dart';
import 'package:charts_common/src/data/series.dart';

import 'package:test/test.dart';

class FakeRenderer extends BaseSeriesRenderer {
  @override
  DatumDetails addPositionToDetailsForSeriesDatum(
      DatumDetails details, SeriesDatum seriesDatum) {
    return null;
  }

  @override
  List<DatumDetails> getNearestDatumDetailPerSeries(
      Point<double> chartPoint, bool byDomain, Rectangle<int> boundsOverride) {
    return null;
  }

  @override
  void paint(ChartCanvas canvas, double animationPercent) {}

  @override
  void update(List<ImmutableSeries> seriesList, bool isAnimating) {}
}

class FakeChart extends BaseChart {
  @override
  List<DatumDetails> getDatumDetails(SelectionModelType type) => [];

  @override
  SeriesRenderer makeDefaultRenderer() => new FakeRenderer();

  void requestOnDraw(List<MutableSeries> seriesList) {
    fireOnDraw(seriesList);
  }
}

void main() {
  FakeChart _chart;
  ImmutableSeries _series1;
  ImmutableSeries _series2;
  ImmutableSeries _series3;
  ImmutableSeries _series4;
  final infoSelectionType = SelectionModelType.info;

  InitialSelection _makeBehavior(SelectionModelType selectionModelType,
      {List<String> selectedSeries, List<SeriesDatumConfig> selectedData}) {
    InitialSelection behavior = new InitialSelection(
        selectionModelType: selectionModelType,
        selectedSeriesConfig: selectedSeries,
        selectedDataConfig: selectedData);

    behavior.attachTo(_chart);

    return behavior;
  }

  setUp(() {
    _chart = new FakeChart();

    _series1 = new MutableSeries(new Series(
        id: 'mySeries1',
        data: ['A', 'B', 'C', 'D'],
        domainFn: (dynamic datum, __) => datum,
        measureFn: (_, __) {}));

    _series2 = new MutableSeries(new Series(
        id: 'mySeries2',
        data: ['W', 'X', 'Y', 'Z'],
        domainFn: (dynamic datum, __) => datum,
        measureFn: (_, __) {}));

    _series3 = new MutableSeries(new Series(
        id: 'mySeries3',
        data: ['W', 'X', 'Y', 'Z'],
        domainFn: (dynamic datum, __) => datum,
        measureFn: (_, __) {}));

    _series4 = new MutableSeries(new Series(
        id: 'mySeries4',
        data: ['W', 'X', 'Y', 'Z'],
        domainFn: (dynamic datum, __) => datum,
        measureFn: (_, __) {}));
  });

  test('selects initial datum', () {
    _makeBehavior(infoSelectionType,
        selectedData: [new SeriesDatumConfig('mySeries1', 'C')]);

    _chart.requestOnDraw([_series1, _series2]);

    final model = _chart.getSelectionModel(infoSelectionType);

    expect(model.selectedSeries, hasLength(1));
    expect(model.selectedSeries[0], equals(_series1));
    expect(model.selectedDatum, hasLength(1));
    expect(model.selectedDatum[0].series, equals(_series1));
    expect(model.selectedDatum[0].datum, equals('C'));
  });

  test('selects multiple initial data', () {
    _makeBehavior(infoSelectionType, selectedData: [
      new SeriesDatumConfig('mySeries1', 'C'),
      new SeriesDatumConfig('mySeries1', 'D')
    ]);

    _chart.requestOnDraw([_series1, _series2]);

    final model = _chart.getSelectionModel(infoSelectionType);

    expect(model.selectedSeries, hasLength(1));
    expect(model.selectedSeries[0], equals(_series1));
    expect(model.selectedDatum, hasLength(2));
    expect(model.selectedDatum[0].series, equals(_series1));
    expect(model.selectedDatum[0].datum, equals('C'));
    expect(model.selectedDatum[1].series, equals(_series1));
    expect(model.selectedDatum[1].datum, equals('D'));
  });

  test('selects initial series', () {
    _makeBehavior(infoSelectionType, selectedSeries: ['mySeries2']);

    _chart.requestOnDraw([_series1, _series2, _series3, _series4]);

    final model = _chart.getSelectionModel(infoSelectionType);

    expect(model.selectedSeries, hasLength(1));
    expect(model.selectedSeries[0], equals(_series2));
    expect(model.selectedDatum, isEmpty);
  });

  test('selects multiple series', () {
    _makeBehavior(infoSelectionType,
        selectedSeries: ['mySeries2', 'mySeries4']);

    _chart.requestOnDraw([_series1, _series2, _series3, _series4]);

    final model = _chart.getSelectionModel(infoSelectionType);

    expect(model.selectedSeries, hasLength(2));
    expect(model.selectedSeries[0], equals(_series2));
    expect(model.selectedSeries[1], equals(_series4));
    expect(model.selectedDatum, isEmpty);
  });

  test('selects series and datum', () {
    _makeBehavior(infoSelectionType,
        selectedData: [new SeriesDatumConfig('mySeries1', 'C')],
        selectedSeries: ['mySeries4']);

    _chart.requestOnDraw([_series1, _series2, _series3, _series4]);

    final model = _chart.getSelectionModel(infoSelectionType);

    expect(model.selectedSeries, hasLength(2));
    expect(model.selectedSeries[0], equals(_series1));
    expect(model.selectedSeries[1], equals(_series4));
    expect(model.selectedDatum[0].series, equals(_series1));
    expect(model.selectedDatum[0].datum, equals('C'));
  });

  test('selection model is reset when a new series is drawn', () {
    _makeBehavior(infoSelectionType, selectedSeries: ['mySeries2']);

    _chart.requestOnDraw([_series1, _series2, _series3, _series4]);

    final model = _chart.getSelectionModel(infoSelectionType);

    // Verify initial selection is selected on first draw
    expect(model.selectedSeries, hasLength(1));
    expect(model.selectedSeries[0], equals(_series2));
    expect(model.selectedDatum, isEmpty);

    // Request a draw with a new series list.
    _chart.draw(
      [
        new Series(
            id: 'mySeries2',
            data: ['W', 'X', 'Y', 'Z'],
            domainFn: (dynamic datum, __) => datum,
            measureFn: (_, __) {})
      ],
    );

    // Verify selection is cleared.
    expect(model.selectedSeries, isEmpty);
    expect(model.selectedDatum, isEmpty);
  });
}
