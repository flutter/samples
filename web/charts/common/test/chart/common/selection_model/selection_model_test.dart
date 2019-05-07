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

import 'package:charts_common/src/chart/common/selection_model/selection_model.dart';
import 'package:charts_common/src/chart/common/processed_series.dart';
import 'package:charts_common/src/chart/common/series_datum.dart';
import 'package:charts_common/src/data/series.dart';
import 'package:test/test.dart';

void main() {
  MutableSelectionModel<String> _selectionModel;

  ImmutableSeries<String> _closestSeries;
  MyDatum _closestDatumClosestSeries;
  SeriesDatum<String> _closestDatumClosestSeriesPair;
  MyDatum _otherDatumClosestSeries;
  SeriesDatum<String> _otherDatumClosestSeriesPair;

  ImmutableSeries<String> _otherSeries;
  MyDatum _closestDatumOtherSeries;
  SeriesDatum<String> _closestDatumOtherSeriesPair;
  MyDatum _otherDatumOtherSeries;
  SeriesDatum<String> _otherDatumOtherSeriesPair;

  setUp(() {
    _selectionModel = new MutableSelectionModel<String>();

    _closestDatumClosestSeries = new MyDatum('cDcS');
    _otherDatumClosestSeries = new MyDatum('oDcS');
    _closestSeries = new MutableSeries<String>(new Series<MyDatum, String>(
        id: 'closest',
        data: [_closestDatumClosestSeries, _otherDatumClosestSeries],
        domainFn: (dynamic d, _) => d.id,
        measureFn: (_, __) => 0));
    _closestDatumClosestSeriesPair =
        new SeriesDatum<String>(_closestSeries, _closestDatumClosestSeries);
    _otherDatumClosestSeriesPair =
        new SeriesDatum<String>(_closestSeries, _otherDatumClosestSeries);

    _closestDatumOtherSeries = new MyDatum('cDoS');
    _otherDatumOtherSeries = new MyDatum('oDoS');
    _otherSeries = new MutableSeries<String>(new Series<MyDatum, String>(
        id: 'other',
        data: [_closestDatumOtherSeries, _otherDatumOtherSeries],
        domainFn: (dynamic d, _) => d.id,
        measureFn: (_, __) => 0));
    _closestDatumOtherSeriesPair =
        new SeriesDatum<String>(_otherSeries, _closestDatumOtherSeries);
    _otherDatumOtherSeriesPair =
        new SeriesDatum<String>(_otherSeries, _otherDatumOtherSeries);
  });

  group('SelectionModel persists values', () {
    test('selection model is empty by default', () {
      expect(_selectionModel.hasDatumSelection, isFalse);
      expect(_selectionModel.hasSeriesSelection, isFalse);
    });

    test('all datum are selected but only the first Series is', () {
      // Select the 'closest' datum for each Series.
      _selectionModel.updateSelection([
        new SeriesDatum(_closestSeries, _closestDatumClosestSeries),
        new SeriesDatum(_otherSeries, _closestDatumOtherSeries),
      ], [
        _closestSeries
      ]);

      expect(_selectionModel.hasDatumSelection, isTrue);
      expect(_selectionModel.selectedDatum, hasLength(2));
      expect(_selectionModel.selectedDatum,
          contains(_closestDatumClosestSeriesPair));
      expect(_selectionModel.selectedDatum,
          contains(_closestDatumOtherSeriesPair));
      expect(
          _selectionModel.selectedDatum.contains(_otherDatumClosestSeriesPair),
          isFalse);
      expect(_selectionModel.selectedDatum.contains(_otherDatumOtherSeriesPair),
          isFalse);

      expect(_selectionModel.hasSeriesSelection, isTrue);
      expect(_selectionModel.selectedSeries, hasLength(1));
      expect(_selectionModel.selectedSeries, contains(_closestSeries));
      expect(_selectionModel.selectedSeries.contains(_otherSeries), isFalse);
    });

    test('selection can change', () {
      // Select the 'closest' datum for each Series.
      _selectionModel.updateSelection([
        new SeriesDatum(_closestSeries, _closestDatumClosestSeries),
        new SeriesDatum(_otherSeries, _closestDatumOtherSeries),
      ], [
        _closestSeries
      ]);

      // Change selection to just the other datum on the other series.
      _selectionModel.updateSelection([
        new SeriesDatum(_otherSeries, _otherDatumOtherSeries),
      ], [
        _otherSeries
      ]);

      expect(_selectionModel.selectedDatum, hasLength(1));
      expect(
          _selectionModel.selectedDatum, contains(_otherDatumOtherSeriesPair));

      expect(_selectionModel.selectedSeries, hasLength(1));
      expect(_selectionModel.selectedSeries, contains(_otherSeries));
    });

    test('selection can be series only', () {
      // Select the 'closest' Series without datum to simulate legend hovering.
      _selectionModel.updateSelection([], [_closestSeries]);

      expect(_selectionModel.hasDatumSelection, isFalse);
      expect(_selectionModel.selectedDatum, hasLength(0));

      expect(_selectionModel.hasSeriesSelection, isTrue);
      expect(_selectionModel.selectedSeries, hasLength(1));
      expect(_selectionModel.selectedSeries, contains(_closestSeries));
    });

    test('selection lock prevents change', () {
      // Prevent selection changes.
      _selectionModel.locked = true;

      // Try to the 'closest' datum for each Series.
      _selectionModel.updateSelection([
        new SeriesDatum(_closestSeries, _closestDatumClosestSeries),
        new SeriesDatum(_otherSeries, _closestDatumOtherSeries),
      ], [
        _closestSeries
      ]);

      expect(_selectionModel.hasDatumSelection, isFalse);
      expect(_selectionModel.hasSeriesSelection, isFalse);

      // Allow selection changes.
      _selectionModel.locked = false;

      // Try to the 'closest' datum for each Series.
      _selectionModel.updateSelection([
        new SeriesDatum(_closestSeries, _closestDatumClosestSeries),
        new SeriesDatum(_otherSeries, _closestDatumOtherSeries),
      ], [
        _closestSeries
      ]);

      expect(_selectionModel.hasDatumSelection, isTrue);
      expect(_selectionModel.hasSeriesSelection, isTrue);

      // Prevent selection changes.
      _selectionModel.locked = true;

      // Attempt to change selection
      _selectionModel.updateSelection([
        new SeriesDatum(_otherSeries, _otherDatumOtherSeries),
      ], [
        _otherSeries
      ]);

      // Previous selection should still be set.
      expect(_selectionModel.selectedDatum, hasLength(2));
      expect(_selectionModel.selectedDatum,
          contains(_closestDatumClosestSeriesPair));
      expect(_selectionModel.selectedDatum,
          contains(_closestDatumOtherSeriesPair));

      expect(_selectionModel.selectedSeries, hasLength(1));
      expect(_selectionModel.selectedSeries, contains(_closestSeries));
    });
  });

  group('SelectionModel changed listeners', () {
    test('listener triggered for change', () {
      SelectionModel<String> triggeredModel;
      // Listen
      _selectionModel
          .addSelectionChangedListener((SelectionModel<String> model) {
        triggeredModel = model;
      });

      // Set the selection to closest datum.
      _selectionModel.updateSelection([
        new SeriesDatum(_closestSeries, _closestDatumClosestSeries),
      ], [
        _closestSeries
      ]);

      // Callback should have been triggered.
      expect(triggeredModel, equals(_selectionModel));
    });

    test('listener not triggered for no change', () {
      SelectionModel<String> triggeredModel;
      // Set the selection to closest datum.
      _selectionModel.updateSelection([
        new SeriesDatum(_closestSeries, _closestDatumClosestSeries),
      ], [
        _closestSeries
      ]);

      // Listen
      _selectionModel
          .addSelectionChangedListener((SelectionModel<String> model) {
        triggeredModel = model;
      });

      // Try to update the model with the same value.
      _selectionModel.updateSelection([
        new SeriesDatum(_closestSeries, _closestDatumClosestSeries),
      ], [
        _closestSeries
      ]);

      // Callback should not have been triggered.
      expect(triggeredModel, isNull);
    });

    test('removed listener not triggered for change', () {
      SelectionModel<String> triggeredModel;

      Function cb = (SelectionModel<String> model) {
        triggeredModel = model;
      };

      // Listen
      _selectionModel.addSelectionChangedListener(cb);

      // Unlisten
      _selectionModel.removeSelectionChangedListener(cb);

      // Set the selection to closest datum.
      _selectionModel.updateSelection([
        new SeriesDatum(_closestSeries, _closestDatumClosestSeries),
      ], [
        _closestSeries
      ]);

      // Callback should not have been triggered.
      expect(triggeredModel, isNull);
    });
  });

  group('SelectionModel updated listeners', () {
    test('listener triggered for change', () {
      SelectionModel<String> triggeredModel;
      // Listen
      _selectionModel
          .addSelectionUpdatedListener((SelectionModel<String> model) {
        triggeredModel = model;
      });

      // Set the selection to closest datum.
      _selectionModel.updateSelection([
        new SeriesDatum(_closestSeries, _closestDatumClosestSeries),
      ], [
        _closestSeries
      ]);

      // Callback should have been triggered.
      expect(triggeredModel, equals(_selectionModel));
    });

    test('listener triggered for no change', () {
      SelectionModel<String> triggeredModel;
      // Set the selection to closest datum.
      _selectionModel.updateSelection([
        new SeriesDatum(_closestSeries, _closestDatumClosestSeries),
      ], [
        _closestSeries
      ]);

      // Listen
      _selectionModel
          .addSelectionUpdatedListener((SelectionModel<String> model) {
        triggeredModel = model;
      });

      // Try to update the model with the same value.
      _selectionModel.updateSelection([
        new SeriesDatum(_closestSeries, _closestDatumClosestSeries),
      ], [
        _closestSeries
      ]);

      // Callback should have been triggered.
      expect(triggeredModel, equals(_selectionModel));
    });

    test('removed listener not triggered for change', () {
      SelectionModel<String> triggeredModel;

      Function cb = (SelectionModel<String> model) {
        triggeredModel = model;
      };

      // Listen
      _selectionModel.addSelectionUpdatedListener(cb);

      // Unlisten
      _selectionModel.removeSelectionUpdatedListener(cb);

      // Set the selection to closest datum.
      _selectionModel.updateSelection([
        new SeriesDatum(_closestSeries, _closestDatumClosestSeries),
      ], [
        _closestSeries
      ]);

      // Callback should not have been triggered.
      expect(triggeredModel, isNull);
    });
  });
}

class MyDatum {
  final String id;
  MyDatum(this.id);
}
