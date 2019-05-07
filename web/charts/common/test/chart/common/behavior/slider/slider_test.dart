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

import 'package:charts_common/src/chart/cartesian/cartesian_chart.dart';
import 'package:charts_common/src/chart/cartesian/axis/axis.dart';
import 'package:charts_common/src/chart/common/base_chart.dart';
import 'package:charts_common/src/chart/common/datum_details.dart';
import 'package:charts_common/src/chart/common/processed_series.dart';
import 'package:charts_common/src/chart/common/behavior/slider/slider.dart';
import 'package:charts_common/src/chart/common/behavior/selection/selection_trigger.dart';
import 'package:charts_common/src/common/gesture_listener.dart';
import 'package:charts_common/src/data/series.dart';

import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockChart extends Mock implements CartesianChart {
  GestureListener lastGestureListener;

  LifecycleListener lastLifecycleListener;

  bool vertical = true;

  @override
  GestureListener addGestureListener(GestureListener listener) {
    lastGestureListener = listener;
    return listener;
  }

  @override
  void removeGestureListener(GestureListener listener) {
    expect(listener, equals(lastGestureListener));
    lastGestureListener = null;
  }

  @override
  addLifecycleListener(LifecycleListener listener) =>
      lastLifecycleListener = listener;

  @override
  removeLifecycleListener(LifecycleListener listener) {
    expect(listener, equals(lastLifecycleListener));
    lastLifecycleListener = null;
    return true;
  }
}

class MockDomainAxis extends Mock implements NumericAxis {
  @override
  double getDomain(num location) {
    return (location / 20.0).toDouble();
  }

  @override
  double getLocation(num domain) {
    return (domain * 20.0).toDouble();
  }
}

void main() {
  MockChart _chart;
  MockDomainAxis _domainAxis;
  ImmutableSeries _series1;
  DatumDetails _details1;
  DatumDetails _details2;
  DatumDetails _details3;

  SliderTester tester;

  Slider _makeBehavior(SelectionTrigger eventTrigger,
      {Point<double> handleOffset,
      Rectangle<int> handleSize,
      double initialDomainValue,
      SliderListenerCallback onChangeCallback,
      bool snapToDatum = false,
      SliderHandlePosition handlePosition = SliderHandlePosition.middle}) {
    Slider behavior = new Slider(
        eventTrigger: eventTrigger,
        initialDomainValue: initialDomainValue,
        onChangeCallback: onChangeCallback,
        snapToDatum: snapToDatum,
        style: new SliderStyle(
            handleOffset: handleOffset, handlePosition: handlePosition));

    behavior.attachTo(_chart);

    tester = new SliderTester(behavior);

    // Mock out chart layout by assigning bounds to the layout view.
    tester.layout(
        new Rectangle<int>(0, 0, 200, 200), new Rectangle<int>(0, 0, 200, 200));

    return behavior;
  }

  _setupChart(
      {Point<double> forPoint,
      bool isWithinRenderer,
      List<DatumDetails> respondWithDetails}) {
    when(_chart.domainAxis).thenReturn(_domainAxis);

    if (isWithinRenderer != null) {
      when(_chart.pointWithinRenderer(forPoint)).thenReturn(isWithinRenderer);
    }
    if (respondWithDetails != null) {
      when(_chart.getNearestDatumDetailPerSeries(forPoint, true))
          .thenReturn(respondWithDetails);
    }
  }

  setUp(() {
    _chart = new MockChart();

    _domainAxis = new MockDomainAxis();

    _series1 = new MutableSeries(new Series(
        id: 'mySeries1',
        data: [],
        domainFn: (_, __) {},
        measureFn: (_, __) {}));

    _details1 = new DatumDetails(
        chartPosition: new Point(20.0, 80.0),
        datum: 'myDatum1',
        domain: 1.0,
        series: _series1,
        domainDistance: 10.0,
        measureDistance: 20.0);
    _details2 = new DatumDetails(
        chartPosition: new Point(40.0, 80.0),
        datum: 'myDatum2',
        domain: 2.0,
        series: _series1,
        domainDistance: 10.0,
        measureDistance: 20.0);
    _details3 = new DatumDetails(
        chartPosition: new Point(90.0, 80.0),
        datum: 'myDatum3',
        domain: 4.5,
        series: _series1,
        domainDistance: 10.0,
        measureDistance: 20.0);
  });

  group('Slider trigger handling', () {
    test('can listen to tap and drag', () {
      // Setup chart matches point with single domain single series.
      _makeBehavior(SelectionTrigger.tapAndDrag,
          handleOffset: new Point<double>(0.0, 0.0),
          handleSize: new Rectangle<int>(0, 0, 10, 20));

      Point<double> startPoint = new Point(100.0, 100.0);
      _setupChart(
          forPoint: startPoint,
          isWithinRenderer: true,
          respondWithDetails: [_details1]);

      Point<double> updatePoint1 = new Point(50.0, 100.0);
      _setupChart(
          forPoint: updatePoint1,
          isWithinRenderer: true,
          respondWithDetails: [_details2]);

      Point<double> updatePoint2 = new Point(100.0, 100.0);
      _setupChart(
          forPoint: updatePoint2,
          isWithinRenderer: true,
          respondWithDetails: [_details3]);

      Point<double> endPoint = new Point(120.0, 100.0);
      _setupChart(
          forPoint: endPoint,
          isWithinRenderer: true,
          respondWithDetails: [_details3]);

      // Act
      _chart.lastLifecycleListener.onAxisConfigured();

      _chart.lastGestureListener.onTapTest(startPoint);
      _chart.lastGestureListener.onTap(startPoint);

      // Start the drag.
      _chart.lastGestureListener.onDragStart(startPoint);
      expect(tester.domainCenterPoint, equals(startPoint));
      expect(tester.domainValue, equals(5.0));
      expect(tester.handleBounds, equals(new Rectangle<int>(95, 90, 10, 20)));

      // Drag to first update point.
      _chart.lastGestureListener.onDragUpdate(updatePoint1, 1.0);
      expect(tester.domainCenterPoint, equals(updatePoint1));
      expect(tester.domainValue, equals(2.5));
      expect(tester.handleBounds, equals(new Rectangle<int>(45, 90, 10, 20)));

      // Drag to first update point.
      _chart.lastGestureListener.onDragUpdate(updatePoint2, 1.0);
      expect(tester.domainCenterPoint, equals(updatePoint2));
      expect(tester.domainValue, equals(5.0));
      expect(tester.handleBounds, equals(new Rectangle<int>(95, 90, 10, 20)));

      // Drag the point to the end point.
      _chart.lastGestureListener.onDragUpdate(endPoint, 1.0);
      expect(tester.domainCenterPoint, equals(endPoint));
      expect(tester.domainValue, equals(6.0));
      expect(tester.handleBounds, equals(new Rectangle<int>(115, 90, 10, 20)));

      // Simulate onDragEnd.
      _chart.lastGestureListener.onDragEnd(endPoint, 1.0, 1.0);

      expect(tester.domainCenterPoint, equals(endPoint));
      expect(tester.domainValue, equals(6.0));
      expect(tester.handleBounds, equals(new Rectangle<int>(115, 90, 10, 20)));
    });

    test('slider handle can render at top', () {
      // Setup chart matches point with single domain single series.
      _makeBehavior(SelectionTrigger.tapAndDrag,
          handleOffset: new Point<double>(0.0, 0.0),
          handleSize: new Rectangle<int>(0, 0, 10, 20),
          handlePosition: SliderHandlePosition.top);

      Point<double> startPoint = new Point(100.0, 0.0);
      _setupChart(
          forPoint: startPoint,
          isWithinRenderer: true,
          respondWithDetails: [_details1]);

      Point<double> updatePoint1 = new Point(50.0, 0.0);
      _setupChart(
          forPoint: updatePoint1,
          isWithinRenderer: true,
          respondWithDetails: [_details2]);

      Point<double> updatePoint2 = new Point(100.0, 0.0);
      _setupChart(
          forPoint: updatePoint2,
          isWithinRenderer: true,
          respondWithDetails: [_details3]);

      Point<double> endPoint = new Point(120.0, 0.0);
      _setupChart(
          forPoint: endPoint,
          isWithinRenderer: true,
          respondWithDetails: [_details3]);

      // Act
      _chart.lastLifecycleListener.onAxisConfigured();

      _chart.lastGestureListener.onTapTest(startPoint);
      _chart.lastGestureListener.onTap(startPoint);

      // Start the drag.
      _chart.lastGestureListener.onDragStart(startPoint);
      expect(tester.domainValue, equals(5.0));
      expect(tester.handleBounds, equals(new Rectangle<int>(95, -10, 10, 20)));

      // Drag to first update point.
      _chart.lastGestureListener.onDragUpdate(updatePoint1, 1.0);
      expect(tester.domainValue, equals(2.5));
      expect(tester.handleBounds, equals(new Rectangle<int>(45, -10, 10, 20)));

      // Drag to first update point.
      _chart.lastGestureListener.onDragUpdate(updatePoint2, 1.0);
      expect(tester.domainValue, equals(5.0));
      expect(tester.handleBounds, equals(new Rectangle<int>(95, -10, 10, 20)));

      // Drag the point to the end point.
      _chart.lastGestureListener.onDragUpdate(endPoint, 1.0);
      expect(tester.domainValue, equals(6.0));
      expect(tester.handleBounds, equals(new Rectangle<int>(115, -10, 10, 20)));

      // Simulate onDragEnd.
      _chart.lastGestureListener.onDragEnd(endPoint, 1.0, 1.0);

      expect(tester.domainValue, equals(6.0));
      expect(tester.handleBounds, equals(new Rectangle<int>(115, -10, 10, 20)));
    });

    test('can listen to press hold', () {
      // Setup chart matches point with single domain single series.
      _makeBehavior(SelectionTrigger.pressHold,
          handleOffset: new Point<double>(0.0, 0.0),
          handleSize: new Rectangle<int>(0, 0, 10, 20));

      Point<double> startPoint = new Point(100.0, 100.0);
      _setupChart(
          forPoint: startPoint,
          isWithinRenderer: true,
          respondWithDetails: [_details1]);

      Point<double> updatePoint1 = new Point(50.0, 100.0);
      _setupChart(
          forPoint: updatePoint1,
          isWithinRenderer: true,
          respondWithDetails: [_details2]);

      Point<double> updatePoint2 = new Point(100.0, 100.0);
      _setupChart(
          forPoint: updatePoint2,
          isWithinRenderer: true,
          respondWithDetails: [_details3]);

      Point<double> endPoint = new Point(120.0, 100.0);
      _setupChart(
          forPoint: endPoint,
          isWithinRenderer: true,
          respondWithDetails: [_details3]);

      // Act
      _chart.lastLifecycleListener.onAxisConfigured();

      _chart.lastGestureListener.onTapTest(startPoint);
      _chart.lastGestureListener.onLongPress(startPoint);

      // Start the drag.
      _chart.lastGestureListener.onDragStart(startPoint);
      expect(tester.domainCenterPoint, equals(startPoint));
      expect(tester.domainValue, equals(5.0));
      expect(tester.handleBounds, equals(new Rectangle<int>(95, 90, 10, 20)));

      // Drag to first update point.
      _chart.lastGestureListener.onDragUpdate(updatePoint1, 1.0);
      expect(tester.domainCenterPoint, equals(updatePoint1));
      expect(tester.domainValue, equals(2.5));
      expect(tester.handleBounds, equals(new Rectangle<int>(45, 90, 10, 20)));

      // Drag to first update point.
      _chart.lastGestureListener.onDragUpdate(updatePoint2, 1.0);
      expect(tester.domainCenterPoint, equals(updatePoint2));
      expect(tester.domainValue, equals(5.0));
      expect(tester.handleBounds, equals(new Rectangle<int>(95, 90, 10, 20)));

      // Drag the point to the end point.
      _chart.lastGestureListener.onDragUpdate(endPoint, 1.0);
      expect(tester.domainCenterPoint, equals(endPoint));
      expect(tester.domainValue, equals(6.0));
      expect(tester.handleBounds, equals(new Rectangle<int>(115, 90, 10, 20)));

      // Simulate onDragEnd.
      _chart.lastGestureListener.onDragEnd(endPoint, 1.0, 1.0);

      expect(tester.domainCenterPoint, equals(endPoint));
      expect(tester.domainValue, equals(6.0));
      expect(tester.handleBounds, equals(new Rectangle<int>(115, 90, 10, 20)));
    });

    test('can listen to long press hold', () {
      // Setup chart matches point with single domain single series.
      _makeBehavior(SelectionTrigger.longPressHold,
          handleOffset: new Point<double>(0.0, 0.0),
          handleSize: new Rectangle<int>(0, 0, 10, 20));

      Point<double> startPoint = new Point(100.0, 100.0);
      _setupChart(
          forPoint: startPoint,
          isWithinRenderer: true,
          respondWithDetails: [_details1]);

      Point<double> updatePoint1 = new Point(50.0, 100.0);
      _setupChart(
          forPoint: updatePoint1,
          isWithinRenderer: true,
          respondWithDetails: [_details2]);

      Point<double> updatePoint2 = new Point(100.0, 100.0);
      _setupChart(
          forPoint: updatePoint2,
          isWithinRenderer: true,
          respondWithDetails: [_details3]);

      Point<double> endPoint = new Point(120.0, 100.0);
      _setupChart(
          forPoint: endPoint,
          isWithinRenderer: true,
          respondWithDetails: [_details3]);

      // Act
      _chart.lastLifecycleListener.onAxisConfigured();

      _chart.lastGestureListener.onTapTest(startPoint);
      _chart.lastGestureListener.onLongPress(startPoint);

      // Start the drag.
      _chart.lastGestureListener.onDragStart(startPoint);
      expect(tester.domainCenterPoint, equals(startPoint));
      expect(tester.domainValue, equals(5.0));
      expect(tester.handleBounds, equals(new Rectangle<int>(95, 90, 10, 20)));

      // Drag to first update point.
      _chart.lastGestureListener.onDragUpdate(updatePoint1, 1.0);
      expect(tester.domainCenterPoint, equals(updatePoint1));
      expect(tester.domainValue, equals(2.5));
      expect(tester.handleBounds, equals(new Rectangle<int>(45, 90, 10, 20)));

      // Drag to first update point.
      _chart.lastGestureListener.onDragUpdate(updatePoint2, 1.0);
      expect(tester.domainCenterPoint, equals(updatePoint2));
      expect(tester.domainValue, equals(5.0));
      expect(tester.handleBounds, equals(new Rectangle<int>(95, 90, 10, 20)));

      // Drag the point to the end point.
      _chart.lastGestureListener.onDragUpdate(endPoint, 1.0);
      expect(tester.domainCenterPoint, equals(endPoint));
      expect(tester.domainValue, equals(6.0));
      expect(tester.handleBounds, equals(new Rectangle<int>(115, 90, 10, 20)));

      // Simulate onDragEnd.
      _chart.lastGestureListener.onDragEnd(endPoint, 1.0, 1.0);

      expect(tester.domainCenterPoint, equals(endPoint));
      expect(tester.domainValue, equals(6.0));
      expect(tester.handleBounds, equals(new Rectangle<int>(115, 90, 10, 20)));
    });

    test('no position update before long press', () {
      // Setup chart matches point with single domain single series.
      _makeBehavior(SelectionTrigger.longPressHold,
          handleOffset: new Point<double>(0.0, 0.0),
          handleSize: new Rectangle<int>(0, 0, 10, 20));

      Point<double> startPoint = new Point(100.0, 100.0);
      _setupChart(
          forPoint: startPoint,
          isWithinRenderer: true,
          respondWithDetails: [_details1]);

      Point<double> updatePoint1 = new Point(50.0, 100.0);
      _setupChart(
          forPoint: updatePoint1,
          isWithinRenderer: true,
          respondWithDetails: [_details2]);

      Point<double> updatePoint2 = new Point(100.0, 100.0);
      _setupChart(
          forPoint: updatePoint2,
          isWithinRenderer: true,
          respondWithDetails: [_details3]);

      Point<double> endPoint = new Point(120.0, 100.0);
      _setupChart(
          forPoint: endPoint,
          isWithinRenderer: true,
          respondWithDetails: [_details3]);

      // Act
      _chart.lastLifecycleListener.onAxisConfigured();

      _chart.lastGestureListener.onTapTest(startPoint);

      // Start the drag.
      _chart.lastGestureListener.onDragStart(startPoint);
      expect(tester.domainCenterPoint, equals(startPoint));
      expect(tester.domainValue, equals(5.0));
      expect(tester.handleBounds, equals(new Rectangle<int>(95, 90, 10, 20)));

      // Drag the point to the end point.
      _chart.lastGestureListener.onDragUpdate(endPoint, 1.0);
      expect(tester.domainCenterPoint, equals(startPoint));
      expect(tester.domainValue, equals(5.0));
      expect(tester.handleBounds, equals(new Rectangle<int>(95, 90, 10, 20)));

      // Simulate onDragEnd.
      _chart.lastGestureListener.onDragEnd(endPoint, 1.0, 1.0);

      expect(tester.domainCenterPoint, equals(startPoint));
      expect(tester.domainValue, equals(5.0));
      expect(tester.handleBounds, equals(new Rectangle<int>(95, 90, 10, 20)));
    });

    test('can snap to datum', () {
      // Setup chart matches point with single domain single series.
      _makeBehavior(SelectionTrigger.tapAndDrag,
          handleOffset: new Point<double>(0.0, 0.0),
          handleSize: new Rectangle<int>(0, 0, 10, 20),
          snapToDatum: true);

      Point<double> startPoint = new Point(100.0, 100.0);
      _setupChart(
          forPoint: startPoint,
          isWithinRenderer: true,
          respondWithDetails: [_details1]);

      Point<double> updatePoint1 = new Point(50.0, 100.0);
      _setupChart(
          forPoint: updatePoint1,
          isWithinRenderer: true,
          respondWithDetails: [_details2]);

      Point<double> updatePoint2 = new Point(100.0, 100.0);
      _setupChart(
          forPoint: updatePoint2,
          isWithinRenderer: true,
          respondWithDetails: [_details3]);

      Point<double> endPoint = new Point(120.0, 100.0);
      _setupChart(
          forPoint: endPoint,
          isWithinRenderer: true,
          respondWithDetails: [_details3]);

      // Act
      _chart.lastLifecycleListener.onAxisConfigured();

      _chart.lastGestureListener.onTapTest(startPoint);
      _chart.lastGestureListener.onTap(startPoint);

      // Start the drag.
      _chart.lastGestureListener.onDragStart(startPoint);
      expect(tester.domainCenterPoint, equals(startPoint));
      expect(tester.domainValue, equals(5.0));
      expect(tester.handleBounds, equals(new Rectangle<int>(95, 90, 10, 20)));

      // Drag to first update point. The slider should follow the mouse during
      // each drag update.
      _chart.lastGestureListener.onDragUpdate(updatePoint1, 1.0);
      expect(tester.domainCenterPoint, equals(updatePoint1));
      expect(tester.domainValue, equals(2.5));
      expect(tester.handleBounds, equals(new Rectangle<int>(45, 90, 10, 20)));

      // Drag to first update point.
      _chart.lastGestureListener.onDragUpdate(updatePoint2, 1.0);
      expect(tester.domainCenterPoint, equals(updatePoint2));
      expect(tester.domainValue, equals(5.0));
      expect(tester.handleBounds, equals(new Rectangle<int>(95, 90, 10, 20)));

      // Drag the point to the end point.
      _chart.lastGestureListener.onDragUpdate(endPoint, 1.0);
      expect(tester.domainCenterPoint, equals(endPoint));
      expect(tester.domainValue, equals(6.0));
      expect(tester.handleBounds, equals(new Rectangle<int>(115, 90, 10, 20)));

      // Simulate onDragEnd. This is where we expect the snap to occur.
      _chart.lastGestureListener.onDragEnd(endPoint, 1.0, 1.0);

      expect(tester.domainCenterPoint, equals(new Point<int>(90, 100)));
      expect(tester.domainValue, equals(4.5));
      expect(tester.handleBounds, equals(new Rectangle<int>(85, 90, 10, 20)));
    });
  });

  group('Slider manual control', () {
    test('can set domain position', () {
      // Setup chart matches point with single domain single series.
      final slider = _makeBehavior(SelectionTrigger.tapAndDrag,
          handleOffset: new Point<double>(0.0, 0.0),
          handleSize: new Rectangle<int>(0, 0, 10, 20),
          initialDomainValue: 1.0);

      _setupChart();

      // Act
      _chart.lastLifecycleListener.onAxisConfigured();

      // Verify initial position.
      expect(tester.domainCenterPoint, equals(new Point(20.0, 100.0)));
      expect(tester.domainValue, equals(1.0));
      expect(tester.handleBounds, equals(new Rectangle<int>(15, 90, 10, 20)));

      // Move to first domain value.
      slider.moveSliderToDomain(2);
      expect(tester.domainCenterPoint, equals(new Point(40.0, 100.0)));
      expect(tester.domainValue, equals(2.0));
      expect(tester.handleBounds, equals(new Rectangle<int>(35, 90, 10, 20)));

      // Move to second domain value.
      slider.moveSliderToDomain(5);
      expect(tester.domainCenterPoint, equals(new Point(100.0, 100.0)));
      expect(tester.domainValue, equals(5.0));
      expect(tester.handleBounds, equals(new Rectangle<int>(95, 90, 10, 20)));

      // Move to second domain value.
      slider.moveSliderToDomain(7.5);
      expect(tester.domainCenterPoint, equals(new Point(150.0, 100.0)));
      expect(tester.domainValue, equals(7.5));
      expect(tester.handleBounds, equals(new Rectangle<int>(145, 90, 10, 20)));
    });
  });

  group('Cleanup', () {
    test('detach removes listener', () {
      // Setup
      Slider behavior = _makeBehavior(SelectionTrigger.tapAndDrag);

      Point<double> point = new Point(100.0, 100.0);
      _setupChart(
          forPoint: point,
          isWithinRenderer: true,
          respondWithDetails: [_details1]);
      expect(_chart.lastGestureListener, isNotNull);

      // Act
      behavior.removeFrom(_chart);

      // Validate
      expect(_chart.lastGestureListener, isNull);
    });
  });
}
