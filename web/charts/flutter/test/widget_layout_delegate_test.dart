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
import 'package:flutter_web/material.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_web_test/flutter_web_test.dart';

import 'package:charts_common/common.dart' as common
    show BehaviorPosition, InsideJustification, OutsideJustification;
import 'package:charts_flutter/src/behaviors/chart_behavior.dart';
import 'package:charts_flutter/src/widget_layout_delegate.dart';

const chartContainerLayoutID = 'chartContainer';

class MockBuildableBehavior extends Mock implements BuildableBehavior {}

void main() {
  group('widget layout test', () {
    final chartKey = new UniqueKey();
    final behaviorKey = new UniqueKey();
    final behaviorID = 'behavior';
    final totalSize = const Size(200.0, 100.0);
    final behaviorSize = const Size(50.0, 50.0);

    /// Creates widget for testing.
    Widget createWidget(
        Size chartSize, Size behaviorSize, common.BehaviorPosition position,
        {common.OutsideJustification outsideJustification,
        common.InsideJustification insideJustification,
        Rectangle<int> drawAreaBounds,
        bool isRTL: false}) {
      // Create a mock buildable behavior that returns information about the
      // position and justification desired.
      final behavior = new MockBuildableBehavior();
      when(behavior.position).thenReturn(position);
      when(behavior.outsideJustification).thenReturn(outsideJustification);
      when(behavior.insideJustification).thenReturn(insideJustification);
      when(behavior.drawAreaBounds).thenReturn(drawAreaBounds);

      // The 'chart' widget that expands to the full size allowed to test that
      // the behavior widget's size affects the size given to the chart.
      final chart = new LayoutId(
          key: chartKey, id: chartContainerLayoutID, child: new Container());

      // A behavior widget
      final behaviorWidget = new LayoutId(
          key: behaviorKey,
          id: behaviorID,
          child: new SizedBox.fromSize(size: behaviorSize));

      // Create a the widget that uses the layout delegate that is being tested.
      final layout = new CustomMultiChildLayout(
          delegate: new WidgetLayoutDelegate(
              chartContainerLayoutID, {behaviorID: behavior}, isRTL),
          children: [chart, behaviorWidget]);

      final container = new Align(
          alignment: Alignment.topLeft,
          child: new Container(
              width: chartSize.width, height: chartSize.height, child: layout));

      return container;
    }

    // Verifies the expected results.
    void verifyResults(WidgetTester tester, Size expectedChartSize,
        Offset expectedChartOffset, Offset expectedBehaviorOffset) {
      final RenderBox chartBox = tester.firstRenderObject(find.byKey(chartKey));
      expect(chartBox.size, equals(expectedChartSize));

      final chartOffset = chartBox.localToGlobal(Offset.zero);
      expect(chartOffset, equals(expectedChartOffset));

      final RenderBox behaviorBox =
          tester.firstRenderObject(find.byKey(behaviorKey));
      final behaviorOffset = behaviorBox.localToGlobal(Offset.zero);
      expect(behaviorOffset, equals(expectedBehaviorOffset));
    }

    testWidgets('Position top - start draw area justified',
        (WidgetTester tester) async {
      final behaviorPosition = common.BehaviorPosition.top;
      final outsideJustification = common.OutsideJustification.startDrawArea;
      final drawAreaBounds = const Rectangle<int>(25, 50, 150, 50);

      // Behavior takes up 50 height, so 50 height remains for the chart.
      final expectedChartSize = const Size(200.0, 50.0);
      // Behavior is positioned on the top, so the chart is offset by 50.
      final expectedChartOffset = const Offset(0.0, 50.0);
      // Behavior is aligned to draw area
      final expectedBehaviorOffset = const Offset(25.0, 0.0);

      await tester.pumpWidget(createWidget(
          totalSize, behaviorSize, behaviorPosition,
          outsideJustification: outsideJustification,
          drawAreaBounds: drawAreaBounds));

      verifyResults(tester, expectedChartSize, expectedChartOffset,
          expectedBehaviorOffset);
    });

    testWidgets('Position bottom - end draw area justified',
        (WidgetTester tester) async {
      final behaviorPosition = common.BehaviorPosition.bottom;
      final outsideJustification = common.OutsideJustification.endDrawArea;
      final drawAreaBounds = const Rectangle<int>(25, 0, 125, 50);

      // Behavior takes up 50 height, so 50 height remains for the chart.
      final expectedChartSize = const Size(200.0, 50.0);
      // Behavior is positioned on the bottom, so the chart is offset by 0.
      final expectedChartOffset = const Offset(0.0, 0.0);
      // Behavior is aligned to draw area and offset to the bottom.
      final expectedBehaviorOffset = const Offset(100.0, 50.0);

      await tester.pumpWidget(createWidget(
          totalSize, behaviorSize, behaviorPosition,
          outsideJustification: outsideJustification,
          drawAreaBounds: drawAreaBounds));

      verifyResults(tester, expectedChartSize, expectedChartOffset,
          expectedBehaviorOffset);
    });

    testWidgets('Position start - start draw area justified',
        (WidgetTester tester) async {
      final behaviorPosition = common.BehaviorPosition.start;
      final outsideJustification = common.OutsideJustification.startDrawArea;
      final drawAreaBounds = const Rectangle<int>(75, 25, 150, 50);

      // Behavior takes up 50 width, so 150 width remains for the chart.
      final expectedChartSize = const Size(150.0, 100.0);
      // Behavior is positioned at the start (left) since this is NOT a RTL
      // so the chart is offset to the right by the behavior width of 50.
      final expectedChartOffset = const Offset(50.0, 0.0);
      // Behavior is aligned to draw area.
      final expectedBehaviorOffset = const Offset(0.0, 25.0);

      await tester.pumpWidget(createWidget(
          totalSize, behaviorSize, behaviorPosition,
          outsideJustification: outsideJustification,
          drawAreaBounds: drawAreaBounds));

      verifyResults(tester, expectedChartSize, expectedChartOffset,
          expectedBehaviorOffset);
    });

    testWidgets('Position end - end draw area justified',
        (WidgetTester tester) async {
      final behaviorPosition = common.BehaviorPosition.end;
      final outsideJustification = common.OutsideJustification.endDrawArea;
      final drawAreaBounds = const Rectangle<int>(25, 25, 150, 50);

      // Behavior takes up 50 width, so 150 width remains for the chart.
      final expectedChartSize = const Size(150.0, 100.0);
      // Behavior is positioned at the right (left) since this is NOT a RTL
      // so no offset for the chart.
      final expectedChartOffset = const Offset(0.0, 0.0);
      // Behavior is aligned to draw area and offset to the right of the
      // chart.
      final expectedBehaviorOffset = const Offset(150.0, 25.0);

      await tester.pumpWidget(createWidget(
          totalSize, behaviorSize, behaviorPosition,
          outsideJustification: outsideJustification,
          drawAreaBounds: drawAreaBounds));

      verifyResults(tester, expectedChartSize, expectedChartOffset,
          expectedBehaviorOffset);
    });

    testWidgets('Position top - start justified', (WidgetTester tester) async {
      final behaviorPosition = common.BehaviorPosition.top;
      final outsideJustification = common.OutsideJustification.start;
      final drawAreaBounds = const Rectangle<int>(25, 50, 150, 50);

      // Behavior takes up 50 height, so 50 height remains for the chart.
      final expectedChartSize = const Size(200.0, 50.0);
      // Behavior is positioned on the top, so the chart is offset by 50.
      final expectedChartOffset = const Offset(0.0, 50.0);
      // Behavior is aligned to the start, so no offset
      final expectedBehaviorOffset = const Offset(0.0, 0.0);

      await tester.pumpWidget(createWidget(
          totalSize, behaviorSize, behaviorPosition,
          outsideJustification: outsideJustification,
          drawAreaBounds: drawAreaBounds));

      verifyResults(tester, expectedChartSize, expectedChartOffset,
          expectedBehaviorOffset);
    });

    testWidgets('Position top - end justified', (WidgetTester tester) async {
      final behaviorPosition = common.BehaviorPosition.top;
      final outsideJustification = common.OutsideJustification.end;
      final drawAreaBounds = const Rectangle<int>(25, 50, 150, 50);

      // Behavior takes up 50 height, so 50 height remains for the chart.
      final expectedChartSize = const Size(200.0, 50.0);
      // Behavior is positioned on the top, so the chart is offset by 50.
      final expectedChartOffset = const Offset(0.0, 50.0);
      // Behavior is aligned to the end, so it is offset by total size minus
      // the behavior size.
      final expectedBehaviorOffset = const Offset(150.0, 0.0);

      await tester.pumpWidget(createWidget(
          totalSize, behaviorSize, behaviorPosition,
          outsideJustification: outsideJustification,
          drawAreaBounds: drawAreaBounds));

      verifyResults(tester, expectedChartSize, expectedChartOffset,
          expectedBehaviorOffset);
    });

    testWidgets('Position start - start justified',
        (WidgetTester tester) async {
      final behaviorPosition = common.BehaviorPosition.start;
      final outsideJustification = common.OutsideJustification.start;
      final drawAreaBounds = const Rectangle<int>(75, 25, 150, 50);

      // Behavior takes up 50 width, so 150 width remains for the chart.
      final expectedChartSize = const Size(150.0, 100.0);
      // Behavior is positioned at the start (left) since this is NOT a RTL
      // so the chart is offset to the right by the behavior width of 50.
      final expectedChartOffset = const Offset(50.0, 0.0);
      // No offset because it is start justified.
      final expectedBehaviorOffset = const Offset(0.0, 0.0);

      await tester.pumpWidget(createWidget(
          totalSize, behaviorSize, behaviorPosition,
          outsideJustification: outsideJustification,
          drawAreaBounds: drawAreaBounds));

      verifyResults(tester, expectedChartSize, expectedChartOffset,
          expectedBehaviorOffset);
    });

    testWidgets('Position start - end justified', (WidgetTester tester) async {
      final behaviorPosition = common.BehaviorPosition.start;
      final outsideJustification = common.OutsideJustification.end;
      final drawAreaBounds = const Rectangle<int>(75, 25, 150, 50);

      // Behavior takes up 50 width, so 150 width remains for the chart.
      final expectedChartSize = const Size(150.0, 100.0);
      // Behavior is positioned at the start (left) since this is NOT a RTL
      // so the chart is offset to the right by the behavior width of 50.
      final expectedChartOffset = const Offset(50.0, 0.0);
      // End justified, total height minus behavior height
      final expectedBehaviorOffset = const Offset(0.0, 50.0);

      await tester.pumpWidget(createWidget(
          totalSize, behaviorSize, behaviorPosition,
          outsideJustification: outsideJustification,
          drawAreaBounds: drawAreaBounds));

      verifyResults(tester, expectedChartSize, expectedChartOffset,
          expectedBehaviorOffset);
    });

    testWidgets('Position inside - top start justified',
        (WidgetTester tester) async {
      final behaviorPosition = common.BehaviorPosition.inside;
      final insideJustification = common.InsideJustification.topStart;
      final drawAreaBounds = const Rectangle<int>(25, 25, 175, 75);

      // Behavior is layered on top, chart uses the full size.
      final expectedChartSize = const Size(200.0, 100.0);
      // No offset since chart takes up full size.
      final expectedChartOffset = const Offset(0.0, 0.0);
      // Top start justified, no offset
      final expectedBehaviorOffset = const Offset(0.0, 0.0);

      await tester.pumpWidget(createWidget(
          totalSize, behaviorSize, behaviorPosition,
          insideJustification: insideJustification,
          drawAreaBounds: drawAreaBounds));

      verifyResults(tester, expectedChartSize, expectedChartOffset,
          expectedBehaviorOffset);
    });

    testWidgets('Position inside - top end justified',
        (WidgetTester tester) async {
      final behaviorPosition = common.BehaviorPosition.inside;
      final insideJustification = common.InsideJustification.topEnd;
      final drawAreaBounds = const Rectangle<int>(25, 25, 175, 75);

      // Behavior is layered on top, chart uses the full size.
      final expectedChartSize = const Size(200.0, 100.0);
      // No offset since chart takes up full size.
      final expectedChartOffset = const Offset(0.0, 0.0);
      // Offset to the top end
      final expectedBehaviorOffset = const Offset(150.0, 0.0);

      await tester.pumpWidget(createWidget(
          totalSize, behaviorSize, behaviorPosition,
          insideJustification: insideJustification,
          drawAreaBounds: drawAreaBounds));

      verifyResults(tester, expectedChartSize, expectedChartOffset,
          expectedBehaviorOffset);
    });

    testWidgets('RTL - Position top - start draw area justified',
        (WidgetTester tester) async {
      final behaviorPosition = common.BehaviorPosition.top;
      final outsideJustification = common.OutsideJustification.startDrawArea;
      final drawAreaBounds = const Rectangle<int>(0, 50, 175, 50);

      // Behavior takes up 50 height, so 50 height remains for the chart.
      final expectedChartSize = const Size(200.0, 50.0);
      // Behavior is positioned on the top, so the chart is offset by 50.
      final expectedChartOffset = const Offset(0.0, 50.0);
      // Behavior is aligned to start draw area, which is to the left in RTL
      final expectedBehaviorOffset = const Offset(125.0, 0.0);

      await tester.pumpWidget(createWidget(
          totalSize, behaviorSize, behaviorPosition,
          outsideJustification: outsideJustification,
          drawAreaBounds: drawAreaBounds,
          isRTL: true));

      verifyResults(tester, expectedChartSize, expectedChartOffset,
          expectedBehaviorOffset);
    });

    testWidgets('RTL - Position bottom - end draw area justified',
        (WidgetTester tester) async {
      final behaviorPosition = common.BehaviorPosition.bottom;
      final outsideJustification = common.OutsideJustification.endDrawArea;
      final drawAreaBounds = const Rectangle<int>(0, 0, 175, 50);

      // Behavior takes up 50 height, so 50 height remains for the chart.
      final expectedChartSize = const Size(200.0, 50.0);
      // Behavior is positioned on the bottom, so the chart is offset by 0.
      final expectedChartOffset = const Offset(0.0, 0.0);
      // Behavior is aligned to end draw area (left) and offset to the bottom.
      final expectedBehaviorOffset = const Offset(0.0, 50.0);

      await tester.pumpWidget(createWidget(
          totalSize, behaviorSize, behaviorPosition,
          outsideJustification: outsideJustification,
          drawAreaBounds: drawAreaBounds,
          isRTL: true));

      verifyResults(tester, expectedChartSize, expectedChartOffset,
          expectedBehaviorOffset);
    });

    testWidgets('RTL - Position start - start draw area justified',
        (WidgetTester tester) async {
      final behaviorPosition = common.BehaviorPosition.start;
      final outsideJustification = common.OutsideJustification.startDrawArea;
      final drawAreaBounds = const Rectangle<int>(0, 25, 125, 75);

      // Behavior takes up 50 width, so 150 width remains for the chart.
      final expectedChartSize = const Size(150.0, 100.0);
      // Chart is on the left, so no offset.
      final expectedChartOffset = const Offset(0.0, 0.0);
      // Behavior is positioned at the start (right) and start draw area.
      final expectedBehaviorOffset = const Offset(150.0, 25.0);

      await tester.pumpWidget(createWidget(
          totalSize, behaviorSize, behaviorPosition,
          outsideJustification: outsideJustification,
          drawAreaBounds: drawAreaBounds,
          isRTL: true));

      verifyResults(tester, expectedChartSize, expectedChartOffset,
          expectedBehaviorOffset);
    });

    testWidgets('RTL - Position end - end draw area justified',
        (WidgetTester tester) async {
      final behaviorPosition = common.BehaviorPosition.end;
      final outsideJustification = common.OutsideJustification.endDrawArea;
      final drawAreaBounds = const Rectangle<int>(75, 25, 125, 75);

      // Behavior takes up 50 width, so 150 width remains for the chart.
      final expectedChartSize = const Size(150.0, 100.0);
      // Chart is to the left of the behavior because of RTL.
      final expectedChartOffset = const Offset(50.0, 0.0);
      // Behavior is aligned to end draw area.
      final expectedBehaviorOffset = const Offset(0.0, 50.0);

      await tester.pumpWidget(createWidget(
          totalSize, behaviorSize, behaviorPosition,
          outsideJustification: outsideJustification,
          drawAreaBounds: drawAreaBounds,
          isRTL: true));

      verifyResults(tester, expectedChartSize, expectedChartOffset,
          expectedBehaviorOffset);
    });

    testWidgets('RTL - Position top - start justified',
        (WidgetTester tester) async {
      final behaviorPosition = common.BehaviorPosition.top;
      final outsideJustification = common.OutsideJustification.start;
      final drawAreaBounds = const Rectangle<int>(25, 50, 150, 50);

      // Behavior takes up 50 height, so 50 height remains for the chart.
      final expectedChartSize = const Size(200.0, 50.0);
      // Behavior is positioned on the top, so the chart is offset by 50.
      final expectedChartOffset = const Offset(0.0, 50.0);
      // Behavior is aligned to the end, offset by behavior size.
      final expectedBehaviorOffset = const Offset(150.0, 0.0);

      await tester.pumpWidget(createWidget(
          totalSize, behaviorSize, behaviorPosition,
          outsideJustification: outsideJustification,
          drawAreaBounds: drawAreaBounds,
          isRTL: true));

      verifyResults(tester, expectedChartSize, expectedChartOffset,
          expectedBehaviorOffset);
    });

    testWidgets('RTL - Position top - end justified',
        (WidgetTester tester) async {
      final behaviorPosition = common.BehaviorPosition.top;
      final outsideJustification = common.OutsideJustification.end;
      final drawAreaBounds = const Rectangle<int>(25, 50, 150, 50);

      // Behavior takes up 50 height, so 50 height remains for the chart.
      final expectedChartSize = const Size(200.0, 50.0);
      // Behavior is positioned on the top, so the chart is offset by 50.
      final expectedChartOffset = const Offset(0.0, 50.0);
      // Behavior is aligned to the end, no offset.
      final expectedBehaviorOffset = const Offset(0.0, 0.0);

      await tester.pumpWidget(createWidget(
          totalSize, behaviorSize, behaviorPosition,
          outsideJustification: outsideJustification,
          drawAreaBounds: drawAreaBounds,
          isRTL: true));

      verifyResults(tester, expectedChartSize, expectedChartOffset,
          expectedBehaviorOffset);
    });

    testWidgets('RTL - Position start - start justified',
        (WidgetTester tester) async {
      final behaviorPosition = common.BehaviorPosition.start;
      final outsideJustification = common.OutsideJustification.start;
      final drawAreaBounds = const Rectangle<int>(75, 25, 150, 50);

      // Behavior takes up 50 width, so 150 width remains for the chart.
      final expectedChartSize = const Size(150.0, 100.0);
      // Behavior is positioned at the right since this is RTL so the chart is
      // has no offset.
      final expectedChartOffset = const Offset(0.0, 0.0);
      // No offset because it is start justified.
      final expectedBehaviorOffset = const Offset(150.0, 0.0);

      await tester.pumpWidget(createWidget(
          totalSize, behaviorSize, behaviorPosition,
          outsideJustification: outsideJustification,
          drawAreaBounds: drawAreaBounds,
          isRTL: true));

      verifyResults(tester, expectedChartSize, expectedChartOffset,
          expectedBehaviorOffset);
    });

    testWidgets('RTL - Position start - end justified',
        (WidgetTester tester) async {
      final behaviorPosition = common.BehaviorPosition.start;
      final outsideJustification = common.OutsideJustification.end;
      final drawAreaBounds = const Rectangle<int>(75, 25, 150, 50);

      // Behavior takes up 50 width, so 150 width remains for the chart.
      final expectedChartSize = const Size(150.0, 100.0);
      // Behavior is positioned at the right since this is RTL so the chart is
      // has no offset.
      final expectedChartOffset = const Offset(0.0, 0.0);
      // End justified, total height minus behavior height
      final expectedBehaviorOffset = const Offset(150.0, 50.0);

      await tester.pumpWidget(createWidget(
          totalSize, behaviorSize, behaviorPosition,
          outsideJustification: outsideJustification,
          drawAreaBounds: drawAreaBounds,
          isRTL: true));

      verifyResults(tester, expectedChartSize, expectedChartOffset,
          expectedBehaviorOffset);
    });

    testWidgets('RTL - Position inside - top start justified',
        (WidgetTester tester) async {
      final behaviorPosition = common.BehaviorPosition.inside;
      final insideJustification = common.InsideJustification.topStart;
      final drawAreaBounds = const Rectangle<int>(25, 25, 175, 75);

      // Behavior is layered on top, chart uses the full size.
      final expectedChartSize = const Size(200.0, 100.0);
      // No offset since chart takes up full size.
      final expectedChartOffset = const Offset(0.0, 0.0);
      // Offset to the right
      final expectedBehaviorOffset = const Offset(150.0, 0.0);

      await tester.pumpWidget(createWidget(
          totalSize, behaviorSize, behaviorPosition,
          insideJustification: insideJustification,
          drawAreaBounds: drawAreaBounds,
          isRTL: true));

      verifyResults(tester, expectedChartSize, expectedChartOffset,
          expectedBehaviorOffset);
    });

    testWidgets('RTL - Position inside - top end justified',
        (WidgetTester tester) async {
      final behaviorPosition = common.BehaviorPosition.inside;
      final insideJustification = common.InsideJustification.topEnd;
      final drawAreaBounds = const Rectangle<int>(25, 25, 175, 75);

      // Behavior is layered on top, chart uses the full size.
      final expectedChartSize = const Size(200.0, 100.0);
      // No offset since chart takes up full size.
      final expectedChartOffset = const Offset(0.0, 0.0);
      // No offset, since end is to the left.
      final expectedBehaviorOffset = const Offset(0.0, 0.0);

      await tester.pumpWidget(createWidget(
          totalSize, behaviorSize, behaviorPosition,
          insideJustification: insideJustification,
          drawAreaBounds: drawAreaBounds,
          isRTL: true));

      verifyResults(tester, expectedChartSize, expectedChartOffset,
          expectedBehaviorOffset);
    });
  });
}
