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

import 'package:charts_common/src/chart/cartesian/axis/axis.dart';
import 'package:charts_common/src/chart/common/base_chart.dart';
import 'package:charts_common/src/chart/common/processed_series.dart';
import 'package:charts_common/src/chart/common/series_datum.dart';
import 'package:charts_common/src/chart/common/series_renderer.dart';
import 'package:charts_common/src/chart/common/behavior/legend/legend_entry_generator.dart';
import 'package:charts_common/src/chart/common/behavior/legend/series_legend.dart';
import 'package:charts_common/src/chart/common/datum_details.dart';
import 'package:charts_common/src/chart/common/selection_model/selection_model.dart';
import 'package:charts_common/src/common/color.dart';
import 'package:charts_common/src/data/series.dart';
import 'package:test/test.dart';

class ConcreteChart extends BaseChart<String> {
  List<MutableSeries<String>> _seriesList;

  ConcreteChart(this._seriesList);

  @override
  SeriesRenderer<String> makeDefaultRenderer() => null;

  @override
  List<MutableSeries<String>> get currentSeriesList => _seriesList;

  @override
  List<DatumDetails<String>> getDatumDetails(SelectionModelType _) => null;

  set seriesList(List<MutableSeries<String>> seriesList) {
    _seriesList = seriesList;
  }

  void callOnDraw() {
    fireOnDraw(_seriesList);
  }

  void callOnPreProcess() {
    fireOnPreprocess(_seriesList);
  }

  void callOnPostProcess() {
    fireOnPostprocess(_seriesList);
  }
}

class ConcreteSeriesLegend<D> extends SeriesLegend<D> {
  ConcreteSeriesLegend(
      {SelectionModelType selectionModelType,
      LegendEntryGenerator<D> legendEntryGenerator})
      : super(
            selectionModelType: selectionModelType,
            legendEntryGenerator: legendEntryGenerator);

  @override
  bool isSeriesRenderer = false;

  @override
  void hideSeries(String seriesId) {
    super.hideSeries(seriesId);
  }

  @override
  void showSeries(String seriesId) {
    super.showSeries(seriesId);
  }

  @override
  bool isSeriesHidden(String seriesId) {
    return super.isSeriesHidden(seriesId);
  }
}

void main() {
  MutableSeries<String> series1;
  final s1D1 = new MyRow('s1d1', 11);
  final s1D2 = new MyRow('s1d2', 12);
  final s1D3 = new MyRow('s1d3', 13);

  MutableSeries<String> series2;
  final s2D1 = new MyRow('s2d1', 21);
  final s2D2 = new MyRow('s2d2', 22);
  final s2D3 = new MyRow('s2d3', 23);

  final blue = new Color(r: 0x21, g: 0x96, b: 0xF3);
  final red = new Color(r: 0xF4, g: 0x43, b: 0x36);

  ConcreteChart chart;

  setUp(() {
    series1 = new MutableSeries(new Series<MyRow, String>(
        id: 's1',
        data: [s1D1, s1D2, s1D3],
        domainFn: (MyRow row, _) => row.campaign,
        measureFn: (MyRow row, _) => row.count,
        colorFn: (_, __) => blue));

    series2 = new MutableSeries(new Series<MyRow, String>(
        id: 's2',
        data: [s2D1, s2D2, s2D3],
        domainFn: (MyRow row, _) => row.campaign,
        measureFn: (MyRow row, _) => row.count,
        colorFn: (_, __) => red));
  });

  test('Legend entries created on chart post process', () {
    final seriesList = [series1, series2];
    final selectionType = SelectionModelType.info;
    final legend = new SeriesLegend<String>(selectionModelType: selectionType);

    chart = new ConcreteChart(seriesList);
    legend.attachTo(chart);
    chart.callOnDraw();
    chart.callOnPreProcess();
    chart.callOnPostProcess();

    final legendEntries = legend.legendState.legendEntries;
    expect(legendEntries, hasLength(2));
    expect(legendEntries[0].series, equals(series1));
    expect(legendEntries[0].label, equals('s1'));
    expect(legendEntries[0].color, equals(blue));
    expect(legendEntries[0].isSelected, isFalse);

    expect(legendEntries[1].series, equals(series2));
    expect(legendEntries[1].label, equals('s2'));
    expect(legendEntries[1].color, equals(red));
    expect(legendEntries[1].isSelected, isFalse);
  });

  test('default hidden series are removed from list during pre process', () {
    final seriesList = [series1, series2];
    final selectionType = SelectionModelType.info;
    final legend =
        new ConcreteSeriesLegend<String>(selectionModelType: selectionType);

    legend.defaultHiddenSeries = ['s2'];

    chart = new ConcreteChart(seriesList);
    legend.attachTo(chart);
    chart.callOnDraw();
    chart.callOnPreProcess();

    expect(legend.isSeriesHidden('s1'), isFalse);
    expect(legend.isSeriesHidden('s2'), isTrue);

    expect(seriesList, hasLength(1));
    expect(seriesList[0].id, equals('s1'));
  });

  test('hidden series are removed from list after chart pre process', () {
    final seriesList = [series1, series2];
    final selectionType = SelectionModelType.info;
    final legend =
        new ConcreteSeriesLegend<String>(selectionModelType: selectionType);

    chart = new ConcreteChart(seriesList);
    legend.attachTo(chart);
    legend.hideSeries('s1');
    chart.callOnDraw();
    chart.callOnPreProcess();

    expect(legend.isSeriesHidden('s1'), isTrue);
    expect(legend.isSeriesHidden('s2'), isFalse);

    expect(seriesList, hasLength(1));
    expect(seriesList[0].id, equals('s2'));
  });

  test('hidden and re-shown series is in the list after chart pre process', () {
    final seriesList = [series1, series2];
    final seriesList2 = [series1, series2];
    final selectionType = SelectionModelType.info;
    final legend =
        new ConcreteSeriesLegend<String>(selectionModelType: selectionType);

    chart = new ConcreteChart(seriesList);
    legend.attachTo(chart);

    // First hide the series.
    legend.hideSeries('s1');
    chart.callOnDraw();
    chart.callOnPreProcess();

    expect(legend.isSeriesHidden('s1'), isTrue);
    expect(legend.isSeriesHidden('s2'), isFalse);

    expect(seriesList, hasLength(1));
    expect(seriesList[0].id, equals('s2'));

    // Then un-hide the series. This second list imitates the behavior of the
    // chart, which creates a fresh copy of the original data from the user
    // during each draw cycle.
    legend.showSeries('s1');
    chart.seriesList = seriesList2;
    chart.callOnDraw();
    chart.callOnPreProcess();

    expect(legend.isSeriesHidden('s1'), isFalse);
    expect(legend.isSeriesHidden('s2'), isFalse);

    expect(seriesList2, hasLength(2));
    expect(seriesList2[0].id, equals('s1'));
    expect(seriesList2[1].id, equals('s2'));
  });

  test('selected series legend entry is updated', () {
    final seriesList = [series1, series2];
    final selectionType = SelectionModelType.info;
    final legend = new SeriesLegend<String>(selectionModelType: selectionType);

    chart = new ConcreteChart(seriesList);
    legend.attachTo(chart);
    chart.callOnDraw();
    chart.callOnPreProcess();
    chart.callOnPostProcess();
    chart.getSelectionModel(selectionType).updateSelection([], [series1]);

    final legendEntries = legend.legendState.legendEntries;
    expect(legendEntries, hasLength(2));
    expect(legendEntries[0].series, equals(series1));
    expect(legendEntries[0].label, equals('s1'));
    expect(legendEntries[0].color, equals(blue));
    expect(legendEntries[0].isSelected, isTrue);

    expect(legendEntries[1].series, equals(series2));
    expect(legendEntries[1].label, equals('s2'));
    expect(legendEntries[1].color, equals(red));
    expect(legendEntries[1].isSelected, isFalse);
  });

  test('hidden series removed from chart and later readded is visible', () {
    final seriesList = [series1, series2];
    final selectionType = SelectionModelType.info;
    final legend =
        new ConcreteSeriesLegend<String>(selectionModelType: selectionType);

    chart = new ConcreteChart(seriesList);
    legend.attachTo(chart);

    // First hide the series.
    legend.hideSeries('s1');
    chart.callOnDraw();
    chart.callOnPreProcess();

    expect(legend.isSeriesHidden('s1'), isTrue);
    expect(legend.isSeriesHidden('s2'), isFalse);

    expect(seriesList, hasLength(1));
    expect(seriesList[0].id, equals('s2'));

    // Validate that drawing the same set of series again maintains the hidden
    // states.
    final seriesList2 = [series1, series2];
    chart.seriesList = seriesList2;
    chart.callOnDraw();
    chart.callOnPreProcess();

    expect(legend.isSeriesHidden('s1'), isTrue);
    expect(legend.isSeriesHidden('s2'), isFalse);

    expect(seriesList2, hasLength(1));
    expect(seriesList2[0].id, equals('s2'));

    // Next, redraw the chart with only the visible series2.
    final seriesList3 = [series2];

    chart.seriesList = seriesList3;
    chart.callOnDraw();
    chart.callOnPreProcess();

    expect(legend.isSeriesHidden('s2'), isFalse);

    expect(seriesList3, hasLength(1));
    expect(seriesList3[0].id, equals('s2'));

    // Finally, add series1 back to the chart, and validate that it is not
    // hidden.
    final seriesList4 = [series1, series2];
    chart.seriesList = seriesList4;
    chart.callOnDraw();
    chart.callOnPreProcess();

    expect(legend.isSeriesHidden('s1'), isFalse);
    expect(legend.isSeriesHidden('s2'), isFalse);

    expect(seriesList4, hasLength(2));
    expect(seriesList4[0].id, equals('s1'));
    expect(seriesList4[1].id, equals('s2'));
  });

  test('generated legend entries use provided formatters', () {
    final seriesList = [series1, series2];
    final selectionType = SelectionModelType.info;
    final measureFormatter =
        (num value) => 'measure ${value?.toStringAsFixed(0)}';
    final secondaryMeasureFormatter =
        (num value) => 'secondary ${value?.toStringAsFixed(0)}';
    final legend = new SeriesLegend<String>(
        selectionModelType: selectionType,
        measureFormatter: measureFormatter,
        secondaryMeasureFormatter: secondaryMeasureFormatter);

    series2.setAttr(measureAxisIdKey, 'secondaryMeasureAxisId');
    chart = new ConcreteChart(seriesList);
    legend.attachTo(chart);
    chart.callOnDraw();
    chart.callOnPreProcess();
    chart.callOnPostProcess();
    chart.getSelectionModel(selectionType).updateSelection(
        [new SeriesDatum(series1, s1D1), new SeriesDatum(series2, s2D1)],
        [series1, series2]);

    final legendEntries = legend.legendState.legendEntries;
    expect(legendEntries, hasLength(2));
    expect(legendEntries[0].series, equals(series1));
    expect(legendEntries[0].label, equals('s1'));
    expect(legendEntries[0].isSelected, isTrue);
    expect(legendEntries[0].value, equals(11.0));
    expect(legendEntries[0].formattedValue, equals('measure 11'));

    expect(legendEntries[1].series, equals(series2));
    expect(legendEntries[1].label, equals('s2'));
    expect(legendEntries[1].isSelected, isTrue);
    expect(legendEntries[1].value, equals(21.0));
    expect(legendEntries[1].formattedValue, equals('secondary 21'));
  });

  test('series legend - show measure sum when there is no selection', () {
    final seriesList = [series1, series2];
    final selectionType = SelectionModelType.info;
    final measureFormatter = (num value) => '${value?.toStringAsFixed(0)}';
    final legend = new SeriesLegend<String>(
        selectionModelType: selectionType,
        legendDefaultMeasure: LegendDefaultMeasure.sum,
        measureFormatter: measureFormatter);

    chart = new ConcreteChart(seriesList);
    legend.attachTo(chart);
    chart.callOnDraw();
    chart.callOnPreProcess();
    chart.callOnPostProcess();

    final legendEntries = legend.legendState.legendEntries;
    expect(legendEntries, hasLength(2));
    expect(legendEntries[0].series, equals(series1));
    expect(legendEntries[0].label, equals('s1'));
    expect(legendEntries[0].color, equals(blue));
    expect(legendEntries[0].isSelected, isFalse);
    expect(legendEntries[0].value, equals(36.0));
    expect(legendEntries[0].formattedValue, equals('36'));

    expect(legendEntries[1].series, equals(series2));
    expect(legendEntries[1].label, equals('s2'));
    expect(legendEntries[1].color, equals(red));
    expect(legendEntries[1].isSelected, isFalse);
    expect(legendEntries[1].value, equals(66.0));
    expect(legendEntries[1].formattedValue, equals('66'));
  });

  test('series legend - show measure average when there is no selection', () {
    final seriesList = [series1, series2];
    final selectionType = SelectionModelType.info;
    final measureFormatter = (num value) => '${value?.toStringAsFixed(0)}';
    final legend = new SeriesLegend<String>(
        selectionModelType: selectionType,
        legendDefaultMeasure: LegendDefaultMeasure.average,
        measureFormatter: measureFormatter);

    chart = new ConcreteChart(seriesList);
    legend.attachTo(chart);
    chart.callOnDraw();
    chart.callOnPreProcess();
    chart.callOnPostProcess();

    final legendEntries = legend.legendState.legendEntries;
    expect(legendEntries, hasLength(2));
    expect(legendEntries[0].series, equals(series1));
    expect(legendEntries[0].label, equals('s1'));
    expect(legendEntries[0].color, equals(blue));
    expect(legendEntries[0].isSelected, isFalse);
    expect(legendEntries[0].value, equals(12.0));
    expect(legendEntries[0].formattedValue, equals('12'));

    expect(legendEntries[1].series, equals(series2));
    expect(legendEntries[1].label, equals('s2'));
    expect(legendEntries[1].color, equals(red));
    expect(legendEntries[1].isSelected, isFalse);
    expect(legendEntries[1].value, equals(22.0));
    expect(legendEntries[1].formattedValue, equals('22'));
  });

  test('series legend - show first measure when there is no selection', () {
    final seriesList = [series1, series2];
    final selectionType = SelectionModelType.info;
    final measureFormatter = (num value) => '${value?.toStringAsFixed(0)}';
    final legend = new SeriesLegend<String>(
        selectionModelType: selectionType,
        legendDefaultMeasure: LegendDefaultMeasure.firstValue,
        measureFormatter: measureFormatter);

    chart = new ConcreteChart(seriesList);
    legend.attachTo(chart);
    chart.callOnDraw();
    chart.callOnPreProcess();
    chart.callOnPostProcess();

    final legendEntries = legend.legendState.legendEntries;
    expect(legendEntries, hasLength(2));
    expect(legendEntries[0].series, equals(series1));
    expect(legendEntries[0].label, equals('s1'));
    expect(legendEntries[0].color, equals(blue));
    expect(legendEntries[0].isSelected, isFalse);
    expect(legendEntries[0].value, equals(11.0));
    expect(legendEntries[0].formattedValue, equals('11'));

    expect(legendEntries[1].series, equals(series2));
    expect(legendEntries[1].label, equals('s2'));
    expect(legendEntries[1].color, equals(red));
    expect(legendEntries[1].isSelected, isFalse);
    expect(legendEntries[1].value, equals(21.0));
    expect(legendEntries[1].formattedValue, equals('21'));
  });

  test('series legend - show last measure when there is no selection', () {
    final seriesList = [series1, series2];
    final selectionType = SelectionModelType.info;
    final measureFormatter = (num value) => '${value?.toStringAsFixed(0)}';
    final legend = new SeriesLegend<String>(
        selectionModelType: selectionType,
        legendDefaultMeasure: LegendDefaultMeasure.lastValue,
        measureFormatter: measureFormatter);

    chart = new ConcreteChart(seriesList);
    legend.attachTo(chart);
    chart.callOnDraw();
    chart.callOnPreProcess();
    chart.callOnPostProcess();

    final legendEntries = legend.legendState.legendEntries;
    expect(legendEntries, hasLength(2));
    expect(legendEntries[0].series, equals(series1));
    expect(legendEntries[0].label, equals('s1'));
    expect(legendEntries[0].color, equals(blue));
    expect(legendEntries[0].isSelected, isFalse);
    expect(legendEntries[0].value, equals(13.0));
    expect(legendEntries[0].formattedValue, equals('13'));

    expect(legendEntries[1].series, equals(series2));
    expect(legendEntries[1].label, equals('s2'));
    expect(legendEntries[1].color, equals(red));
    expect(legendEntries[1].isSelected, isFalse);
    expect(legendEntries[1].value, equals(23.0));
    expect(legendEntries[1].formattedValue, equals('23'));
  });
}

class MyRow {
  final String campaign;
  final int count;
  MyRow(this.campaign, this.count);
}
