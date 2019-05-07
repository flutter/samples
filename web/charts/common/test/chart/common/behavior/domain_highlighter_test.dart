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

import 'package:charts_common/src/chart/common/base_chart.dart';
import 'package:charts_common/src/chart/common/behavior/domain_highlighter.dart';
import 'package:charts_common/src/chart/common/processed_series.dart';
import 'package:charts_common/src/chart/common/selection_model/selection_model.dart';
import 'package:charts_common/src/common/material_palette.dart';
import 'package:charts_common/src/data/series.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockChart extends Mock implements BaseChart {
  LifecycleListener lastListener;

  @override
  addLifecycleListener(LifecycleListener listener) => lastListener = listener;

  @override
  removeLifecycleListener(LifecycleListener listener) {
    expect(listener, equals(lastListener));
    lastListener = null;
    return true;
  }
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

void main() {
  MockChart _chart;
  MockSelectionModel _selectionModel;

  MutableSeries<String> _series1;
  final _s1D1 = new MyRow('s1d1', 11);
  final _s1D2 = new MyRow('s1d2', 12);
  final _s1D3 = new MyRow('s1d3', 13);

  MutableSeries<String> _series2;
  final _s2D1 = new MyRow('s2d1', 21);
  final _s2D2 = new MyRow('s2d2', 22);
  final _s2D3 = new MyRow('s2d3', 23);

  _setupSelection(List<MyRow> selected) {
    for (var i = 0; i < _series1.data.length; i++) {
      when(_selectionModel.isDatumSelected(_series1, i))
          .thenReturn(selected.contains(_series1.data[i]));
    }
    for (var i = 0; i < _series2.data.length; i++) {
      when(_selectionModel.isDatumSelected(_series2, i))
          .thenReturn(selected.contains(_series2.data[i]));
    }
  }

  setUp(() {
    _chart = new MockChart();

    _selectionModel = new MockSelectionModel();
    when(_chart.getSelectionModel(SelectionModelType.info))
        .thenReturn(_selectionModel);

    _series1 = new MutableSeries(new Series<MyRow, String>(
        id: 's1',
        data: [_s1D1, _s1D2, _s1D3],
        domainFn: (MyRow row, _) => row.campaign,
        measureFn: (MyRow row, _) => row.count,
        colorFn: (_, __) => MaterialPalette.blue.shadeDefault))
      ..measureFn = (_) => 0.0;

    _series2 = new MutableSeries(new Series<MyRow, String>(
        id: 's2',
        data: [_s2D1, _s2D2, _s2D3],
        domainFn: (MyRow row, _) => row.campaign,
        measureFn: (MyRow row, _) => row.count,
        colorFn: (_, __) => MaterialPalette.red.shadeDefault))
      ..measureFn = (_) => 0.0;
  });

  group('DomainHighligher', () {
    test('darkens the selected bars', () {
      // Setup
      final behavior = new DomainHighlighter(SelectionModelType.info);
      behavior.attachTo(_chart);
      _setupSelection([_s1D2, _s2D2]);
      final seriesList = [_series1, _series2];

      // Act
      _selectionModel.lastListener(_selectionModel);
      verify(_chart.redraw(skipAnimation: true, skipLayout: true));
      _chart.lastListener.onPostprocess(seriesList);

      // Verify
      final s1ColorFn = _series1.colorFn;
      expect(s1ColorFn(0), equals(MaterialPalette.blue.shadeDefault));
      expect(s1ColorFn(1), equals(MaterialPalette.blue.shadeDefault.darker));
      expect(s1ColorFn(2), equals(MaterialPalette.blue.shadeDefault));

      final s2ColorFn = _series2.colorFn;
      expect(s2ColorFn(0), equals(MaterialPalette.red.shadeDefault));
      expect(s2ColorFn(1), equals(MaterialPalette.red.shadeDefault.darker));
      expect(s2ColorFn(2), equals(MaterialPalette.red.shadeDefault));
    });

    test('listens to other selection models', () {
      // Setup
      final behavior = new DomainHighlighter(SelectionModelType.action);
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
      final behavior = new DomainHighlighter(SelectionModelType.info);
      behavior.attachTo(_chart);
      _setupSelection([]);
      final seriesList = [_series1, _series2];

      // Act
      _selectionModel.lastListener(_selectionModel);
      verify(_chart.redraw(skipAnimation: true, skipLayout: true));
      _chart.lastListener.onPostprocess(seriesList);

      // Verify
      final s1ColorFn = _series1.colorFn;
      expect(s1ColorFn(0), equals(MaterialPalette.blue.shadeDefault));
      expect(s1ColorFn(1), equals(MaterialPalette.blue.shadeDefault));
      expect(s1ColorFn(2), equals(MaterialPalette.blue.shadeDefault));

      final s2ColorFn = _series2.colorFn;
      expect(s2ColorFn(0), equals(MaterialPalette.red.shadeDefault));
      expect(s2ColorFn(1), equals(MaterialPalette.red.shadeDefault));
      expect(s2ColorFn(2), equals(MaterialPalette.red.shadeDefault));
    });

    test('cleans up', () {
      // Setup
      final behavior = new DomainHighlighter(SelectionModelType.info);
      behavior.attachTo(_chart);
      _setupSelection([_s1D2, _s2D2]);

      // Act
      behavior.removeFrom(_chart);

      // Verify
      expect(_chart.lastListener, isNull);
      expect(_selectionModel.lastListener, isNull);
    });
  });
}

class MyRow {
  final String campaign;
  final int count;
  MyRow(this.campaign, this.count);
}
