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
import 'package:charts_common/src/chart/common/behavior/selection/select_nearest.dart';
import 'package:charts_common/src/chart/common/behavior/selection/selection_trigger.dart';
import 'package:charts_common/src/chart/common/datum_details.dart';
import 'package:charts_common/src/chart/common/processed_series.dart';
import 'package:charts_common/src/chart/common/series_datum.dart';
import 'package:charts_common/src/chart/common/selection_model/selection_model.dart';
import 'package:charts_common/src/common/gesture_listener.dart';
import 'package:charts_common/src/data/series.dart';

import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockChart extends Mock implements BaseChart<String> {
  GestureListener lastListener;

  @override
  GestureListener addGestureListener(GestureListener listener) {
    lastListener = listener;
    return listener;
  }

  @override
  void removeGestureListener(GestureListener listener) {
    expect(listener, equals(lastListener));
    lastListener = null;
  }
}

class MockSelectionModel extends Mock implements MutableSelectionModel<String> {
}

void main() {
  MockChart _chart;
  MockSelectionModel _hoverSelectionModel;
  MockSelectionModel _clickSelectionModel;
  List<String> _series1Data;
  List<String> _series2Data;
  MutableSeries<String> _series1;
  MutableSeries<String> _series2;
  DatumDetails<String> _details1;
  DatumDetails<String> _details1Series2;
  DatumDetails<String> _details2;
  DatumDetails<String> _details3;

  SelectNearest<String> _makeBehavior(
      SelectionModelType selectionModelType, SelectionTrigger eventTrigger,
      {bool expandToDomain,
      bool selectClosestSeries,
      int maximumDomainDistancePx}) {
    SelectNearest<String> behavior = new SelectNearest<String>(
        selectionModelType: selectionModelType,
        expandToDomain: expandToDomain,
        selectClosestSeries: selectClosestSeries,
        eventTrigger: eventTrigger,
        maximumDomainDistancePx: maximumDomainDistancePx);

    behavior.attachTo(_chart);

    return behavior;
  }

  _setupChart(
      {Point<double> forPoint,
      bool isWithinRenderer,
      List<DatumDetails<String>> respondWithDetails,
      List<MutableSeries<String>> seriesList}) {
    if (isWithinRenderer != null) {
      when(_chart.pointWithinRenderer(forPoint)).thenReturn(isWithinRenderer);
    }
    if (respondWithDetails != null) {
      when(_chart.getNearestDatumDetailPerSeries(forPoint, true))
          .thenReturn(respondWithDetails);
    }
    if (seriesList != null) {
      when(_chart.currentSeriesList).thenReturn(seriesList);
    }
  }

  setUp(() {
    _hoverSelectionModel = new MockSelectionModel();
    _clickSelectionModel = new MockSelectionModel();

    _chart = new MockChart();
    when(_chart.getSelectionModel(SelectionModelType.info))
        .thenReturn(_hoverSelectionModel);
    when(_chart.getSelectionModel(SelectionModelType.action))
        .thenReturn(_clickSelectionModel);

    _series1Data = ['myDomain1', 'myDomain2', 'myDomain3'];

    _series1 = new MutableSeries<String>(new Series(
        id: 'mySeries1',
        data: ['myDatum1', 'myDatum2', 'myDatum3'],
        domainFn: (_, int i) => _series1Data[i],
        measureFn: (_, __) {}));

    _details1 = new DatumDetails(
        datum: 'myDatum1',
        domain: 'myDomain1',
        series: _series1,
        domainDistance: 10.0,
        measureDistance: 20.0);
    _details2 = new DatumDetails(
        datum: 'myDatum2',
        domain: 'myDomain2',
        series: _series1,
        domainDistance: 10.0,
        measureDistance: 20.0);
    _details3 = new DatumDetails(
        datum: 'myDatum3',
        domain: 'myDomain3',
        series: _series1,
        domainDistance: 10.0,
        measureDistance: 20.0);

    _series2Data = ['myDomain1'];

    _series2 = new MutableSeries<String>(new Series(
        id: 'mySeries2',
        data: ['myDatum1s2'],
        domainFn: (_, int i) => _series2Data[i],
        measureFn: (_, __) {}));

    _details1Series2 = new DatumDetails(
        datum: 'myDatum1s2',
        domain: 'myDomain1',
        series: _series2,
        domainDistance: 10.0,
        measureDistance: 20.0);
  });

  tearDown(resetMockitoState);

  group('SelectNearest trigger handling', () {
    test('single series selects detail', () {
      // Setup chart matches point with single domain single series.
      _makeBehavior(SelectionModelType.info, SelectionTrigger.hover,
          expandToDomain: true, selectClosestSeries: true);
      Point<double> point = new Point(100.0, 100.0);
      _setupChart(
          forPoint: point,
          isWithinRenderer: true,
          respondWithDetails: [_details1],
          seriesList: [_series1]);

      // Act
      _chart.lastListener.onHover(point);

      // Validate
      verify(_hoverSelectionModel.updateSelection(
          [new SeriesDatum(_series1, _details1.datum)], [_series1]));
      verifyNoMoreInteractions(_hoverSelectionModel);
      verifyNoMoreInteractions(_clickSelectionModel);
      // Shouldn't be listening to anything else.
      expect(_chart.lastListener.onTap, isNull);
      expect(_chart.lastListener.onDragStart, isNull);
    });

    test('can listen to tap', () {
      // Setup chart matches point with single domain single series.
      _makeBehavior(SelectionModelType.action, SelectionTrigger.tap,
          expandToDomain: true, selectClosestSeries: true);
      Point<double> point = new Point(100.0, 100.0);
      _setupChart(
          forPoint: point,
          isWithinRenderer: true,
          respondWithDetails: [_details1],
          seriesList: [_series1]);

      // Act
      _chart.lastListener.onTapTest(point);
      _chart.lastListener.onTap(point);

      // Validate
      verify(_clickSelectionModel.updateSelection(
          [new SeriesDatum(_series1, _details1.datum)], [_series1]));
      verifyNoMoreInteractions(_hoverSelectionModel);
      verifyNoMoreInteractions(_clickSelectionModel);
    });

    test('can listen to drag', () {
      // Setup chart matches point with single domain single series.
      _makeBehavior(SelectionModelType.info, SelectionTrigger.pressHold,
          expandToDomain: true, selectClosestSeries: true);

      Point<double> startPoint = new Point(100.0, 100.0);
      _setupChart(
          forPoint: startPoint,
          isWithinRenderer: true,
          respondWithDetails: [_details1],
          seriesList: [_series1]);

      Point<double> updatePoint1 = new Point(200.0, 100.0);
      _setupChart(
          forPoint: updatePoint1,
          isWithinRenderer: true,
          respondWithDetails: [_details1],
          seriesList: [_series1]);

      Point<double> updatePoint2 = new Point(300.0, 100.0);
      _setupChart(
          forPoint: updatePoint2,
          isWithinRenderer: true,
          respondWithDetails: [_details2],
          seriesList: [_series1]);

      Point<double> endPoint = new Point(400.0, 100.0);
      _setupChart(
          forPoint: endPoint,
          isWithinRenderer: true,
          respondWithDetails: [_details3],
          seriesList: [_series1]);

      // Act
      _chart.lastListener.onTapTest(startPoint);
      _chart.lastListener.onDragStart(startPoint);
      _chart.lastListener.onDragUpdate(updatePoint1, 1.0);
      _chart.lastListener.onDragUpdate(updatePoint2, 1.0);
      _chart.lastListener.onDragEnd(endPoint, 1.0, 0.0);

      // Validate
      // details1 was tripped 2 times (startPoint & updatePoint1)
      verify(_hoverSelectionModel.updateSelection(
          [new SeriesDatum(_series1, _details1.datum)], [_series1])).called(2);
      // details2 was tripped for updatePoint2
      verify(_hoverSelectionModel.updateSelection(
          [new SeriesDatum(_series1, _details2.datum)], [_series1]));
      // dragEnd deselects even though we are over details3.
      verify(_hoverSelectionModel.updateSelection([], []));
      verifyNoMoreInteractions(_hoverSelectionModel);
      verifyNoMoreInteractions(_clickSelectionModel);
    });

    test('can listen to drag after long press', () {
      // Setup chart matches point with single domain single series.
      _makeBehavior(SelectionModelType.info, SelectionTrigger.longPressHold,
          expandToDomain: true, selectClosestSeries: true);

      Point<double> startPoint = new Point(100.0, 100.0);
      _setupChart(
          forPoint: startPoint,
          isWithinRenderer: true,
          respondWithDetails: [_details1],
          seriesList: [_series1]);

      Point<double> updatePoint1 = new Point(200.0, 100.0);
      _setupChart(
          forPoint: updatePoint1,
          isWithinRenderer: true,
          respondWithDetails: [_details2],
          seriesList: [_series1]);

      Point<double> endPoint = new Point(400.0, 100.0);
      _setupChart(
          forPoint: endPoint,
          isWithinRenderer: true,
          respondWithDetails: [_details3],
          seriesList: [_series1]);

      // Act 1
      _chart.lastListener.onTapTest(startPoint);
      verifyNoMoreInteractions(_hoverSelectionModel);
      verifyNoMoreInteractions(_clickSelectionModel);

      // Act 2
      // verify no interaction yet.
      _chart.lastListener.onLongPress(startPoint);
      _chart.lastListener.onDragStart(startPoint);
      _chart.lastListener.onDragUpdate(updatePoint1, 1.0);
      _chart.lastListener.onDragEnd(endPoint, 1.0, 0.0);

      // Validate
      // details1 was tripped 2 times (longPress & dragStart)
      verify(_hoverSelectionModel.updateSelection(
          [new SeriesDatum(_series1, _details1.datum)], [_series1])).called(2);
      verify(_hoverSelectionModel.updateSelection(
          [new SeriesDatum(_series1, _details2.datum)], [_series1]));
      // dragEnd deselects even though we are over details3.
      verify(_hoverSelectionModel.updateSelection([], []));
      verifyNoMoreInteractions(_hoverSelectionModel);
      verifyNoMoreInteractions(_clickSelectionModel);
    });

    test('no trigger before long press', () {
      // Setup chart matches point with single domain single series.
      _makeBehavior(SelectionModelType.info, SelectionTrigger.longPressHold,
          expandToDomain: true, selectClosestSeries: true);

      Point<double> startPoint = new Point(100.0, 100.0);
      _setupChart(
          forPoint: startPoint,
          isWithinRenderer: true,
          respondWithDetails: [_details1],
          seriesList: [_series1]);

      Point<double> updatePoint1 = new Point(200.0, 100.0);
      _setupChart(
          forPoint: updatePoint1,
          isWithinRenderer: true,
          respondWithDetails: [_details2],
          seriesList: [_series1]);

      Point<double> endPoint = new Point(400.0, 100.0);
      _setupChart(
          forPoint: endPoint,
          isWithinRenderer: true,
          respondWithDetails: [_details3],
          seriesList: [_series1]);

      // Act
      _chart.lastListener.onTapTest(startPoint);
      _chart.lastListener.onDragStart(startPoint);
      _chart.lastListener.onDragUpdate(updatePoint1, 1.0);
      _chart.lastListener.onDragEnd(endPoint, 1.0, 0.0);

      // Validate
      // No interaction, didn't long press first.
      verifyNoMoreInteractions(_hoverSelectionModel);
      verifyNoMoreInteractions(_clickSelectionModel);
    });
  });

  group('Details', () {
    test('expands to domain and includes closest series', () {
      // Setup chart matches point with single domain single series.
      _makeBehavior(SelectionModelType.info, SelectionTrigger.hover,
          expandToDomain: true, selectClosestSeries: true);
      Point<double> point = new Point(100.0, 100.0);
      _setupChart(forPoint: point, isWithinRenderer: true, respondWithDetails: [
        _details1,
        _details1Series2,
      ], seriesList: [
        _series1,
        _series2
      ]);

      // Act
      _chart.lastListener.onHover(point);

      // Validate
      verify(_hoverSelectionModel.updateSelection([
        new SeriesDatum(_series1, _details1.datum),
        new SeriesDatum(_series2, _details1Series2.datum)
      ], [
        _series1
      ]));
      verifyNoMoreInteractions(_hoverSelectionModel);
      verifyNoMoreInteractions(_clickSelectionModel);
    });

    test('does not expand to domain', () {
      // Setup chart matches point with single domain single series.
      _makeBehavior(SelectionModelType.info, SelectionTrigger.hover,
          expandToDomain: false, selectClosestSeries: true);
      Point<double> point = new Point(100.0, 100.0);
      _setupChart(forPoint: point, isWithinRenderer: true, respondWithDetails: [
        _details1,
        _details1Series2,
      ], seriesList: [
        _series1,
        _series2
      ]);

      // Act
      _chart.lastListener.onHover(point);

      // Validate
      verify(_hoverSelectionModel.updateSelection(
          [new SeriesDatum(_series1, _details1.datum)], [_series1]));
      verifyNoMoreInteractions(_hoverSelectionModel);
      verifyNoMoreInteractions(_clickSelectionModel);
    });

    test('does not include closest series', () {
      // Setup chart matches point with single domain single series.
      _makeBehavior(SelectionModelType.info, SelectionTrigger.hover,
          expandToDomain: true, selectClosestSeries: false);
      Point<double> point = new Point(100.0, 100.0);
      _setupChart(forPoint: point, isWithinRenderer: true, respondWithDetails: [
        _details1,
        _details1Series2,
      ], seriesList: [
        _series1,
        _series2
      ]);

      // Act
      _chart.lastListener.onHover(point);

      // Validate
      verify(_hoverSelectionModel.updateSelection([
        new SeriesDatum(_series1, _details1.datum),
        new SeriesDatum(_series2, _details1Series2.datum)
      ], []));
      verifyNoMoreInteractions(_hoverSelectionModel);
      verifyNoMoreInteractions(_clickSelectionModel);
    });

    test('does not include overlay series', () {
      // Setup chart with an overlay series.
      _series2.overlaySeries = true;

      _makeBehavior(SelectionModelType.info, SelectionTrigger.hover,
          expandToDomain: true, selectClosestSeries: true);
      Point<double> point = new Point(100.0, 100.0);
      _setupChart(forPoint: point, isWithinRenderer: true, respondWithDetails: [
        _details1,
        _details1Series2,
      ], seriesList: [
        _series1,
        _series2
      ]);

      // Act
      _chart.lastListener.onHover(point);

      // Validate
      verify(_hoverSelectionModel.updateSelection([
        new SeriesDatum(_series1, _details1.datum),
      ], [
        _series1
      ]));
      verifyNoMoreInteractions(_hoverSelectionModel);
      verifyNoMoreInteractions(_clickSelectionModel);
    });

    test('selection does not exceed maximumDomainDistancePx', () {
      // Setup chart matches point with single domain single series.
      _makeBehavior(SelectionModelType.info, SelectionTrigger.hover,
          expandToDomain: true,
          selectClosestSeries: true,
          maximumDomainDistancePx: 1);
      Point<double> point = new Point(100.0, 100.0);
      _setupChart(forPoint: point, isWithinRenderer: true, respondWithDetails: [
        _details1,
        _details1Series2,
      ], seriesList: [
        _series1,
        _series2
      ]);

      // Act
      _chart.lastListener.onHover(point);

      // Validate
      verify(_hoverSelectionModel.updateSelection([], []));
      verifyNoMoreInteractions(_hoverSelectionModel);
      verifyNoMoreInteractions(_clickSelectionModel);
    });
  });

  group('Cleanup', () {
    test('detach removes listener', () {
      // Setup
      SelectNearest behavior = _makeBehavior(
          SelectionModelType.info, SelectionTrigger.hover,
          expandToDomain: true, selectClosestSeries: true);
      Point<double> point = new Point(100.0, 100.0);
      _setupChart(
          forPoint: point,
          isWithinRenderer: true,
          respondWithDetails: [_details1],
          seriesList: [_series1]);
      expect(_chart.lastListener, isNotNull);

      // Act
      behavior.removeFrom(_chart);

      // Validate
      expect(_chart.lastListener, isNull);
    });
  });
}
