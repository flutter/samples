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
import 'package:charts_common/src/chart/cartesian/axis/draw_strategy/base_tick_draw_strategy.dart';
import 'package:charts_common/src/chart/cartesian/axis/axis.dart';
import 'package:charts_common/src/chart/cartesian/axis/spec/axis_spec.dart';
import 'package:charts_common/src/chart/cartesian/axis/tick.dart';
import 'package:charts_common/src/chart/common/chart_canvas.dart';
import 'package:charts_common/src/chart/common/chart_context.dart';
import 'package:charts_common/src/common/graphics_factory.dart';
import 'package:charts_common/src/common/line_style.dart';
import 'package:charts_common/src/common/text_element.dart';
import 'package:charts_common/src/common/text_measurement.dart';
import 'package:charts_common/src/common/text_style.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockContext extends Mock implements ChartContext {}

/// Implementation of [BaseTickDrawStrategy] that does nothing on draw.
class BaseTickDrawStrategyImpl<D> extends BaseTickDrawStrategy<D> {
  BaseTickDrawStrategyImpl(
      ChartContext chartContext, GraphicsFactory graphicsFactory,
      {TextStyleSpec labelStyleSpec,
      LineStyleSpec axisLineStyleSpec,
      TickLabelAnchor labelAnchor,
      TickLabelJustification labelJustification,
      int labelOffsetFromAxisPx,
      int labelOffsetFromTickPx,
      int minimumPaddingBetweenLabelsPx})
      : super(chartContext, graphicsFactory,
            labelStyleSpec: labelStyleSpec,
            axisLineStyleSpec: axisLineStyleSpec,
            labelAnchor: labelAnchor,
            labelJustification: labelJustification,
            labelOffsetFromAxisPx: labelOffsetFromAxisPx,
            labelOffsetFromTickPx: labelOffsetFromTickPx,
            minimumPaddingBetweenLabelsPx: minimumPaddingBetweenLabelsPx);

  void draw(ChartCanvas canvas, Tick<D> tick,
      {AxisOrientation orientation,
      Rectangle<int> axisBounds,
      Rectangle<int> drawAreaBounds,
      bool isFirst,
      bool isLast}) {}
}

/// Fake [TextElement] for testing.
///
/// [baseline] returns the same value as the [verticalSliceWidth] specified.
class FakeTextElement implements TextElement {
  final String text;
  final TextMeasurement measurement;
  TextStyle textStyle;
  int maxWidth;
  MaxWidthStrategy maxWidthStrategy;
  TextDirection textDirection;
  double opacity;

  FakeTextElement(
    this.text,
    this.textDirection,
    double horizontalSliceWidth,
    double verticalSliceWidth,
  ) : measurement = new TextMeasurement(
            horizontalSliceWidth: horizontalSliceWidth,
            verticalSliceWidth: verticalSliceWidth);
}

class MockGraphicsFactory extends Mock implements GraphicsFactory {}

class MockLineStyle extends Mock implements LineStyle {}

class MockTextStyle extends Mock implements TextStyle {}

/// Helper function to create [Tick] for testing.
Tick<String> createTick(String value, double locationPx,
    {double horizontalWidth,
    double verticalWidth,
    TextDirection textDirection}) {
  return new Tick<String>(
      value: value,
      locationPx: locationPx,
      textElement: new FakeTextElement(
          value, textDirection, horizontalWidth, verticalWidth));
}

void main() {
  GraphicsFactory graphicsFactory;
  ChartContext chartContext;

  setUpAll(() {
    graphicsFactory = new MockGraphicsFactory();
    when(graphicsFactory.createLinePaint()).thenReturn(new MockLineStyle());
    when(graphicsFactory.createTextPaint()).thenReturn(new MockTextStyle());

    chartContext = new MockContext();
    when(chartContext.chartContainerIsRtl).thenReturn(false);
    when(chartContext.isRtl).thenReturn(false);
  });

  group('collision detection - vertically drawn axis', () {
    test('ticks do not collide', () {
      final drawStrategy = new BaseTickDrawStrategyImpl(
          chartContext, graphicsFactory,
          minimumPaddingBetweenLabelsPx: 2);

      final ticks = [
        createTick('A', 10.0, verticalWidth: 8.0), // 10.0 - 20.0 (18.0 + 2)
        createTick('B', 20.0, verticalWidth: 8.0), // 20.0 - 30.0 (28.0 + 2)
        createTick('C', 30.0, verticalWidth: 8.0), // 30.0 - 40.0 (38.0 + 2)
      ];

      final report = drawStrategy.collides(ticks, AxisOrientation.left);

      expect(report.ticksCollide, isFalse);
    });

    test('ticks collide because it does not have minimum padding', () {
      final drawStrategy = new BaseTickDrawStrategyImpl(
          chartContext, graphicsFactory,
          minimumPaddingBetweenLabelsPx: 2);

      final ticks = [
        createTick('A', 10.0, verticalWidth: 8.0), // 10.0 - 20.0 (18.0 + 2)
        createTick('B', 20.0, verticalWidth: 9.0), // 20.0 - 31.0 (28.0 + 3)
        createTick('C', 30.0, verticalWidth: 8.0), // 30.0 - 40.0 (38.0 + 2)
      ];

      final report = drawStrategy.collides(ticks, AxisOrientation.left);

      expect(report.ticksCollide, isTrue);
    });

    test('first tick causes collision', () {
      final drawStrategy = new BaseTickDrawStrategyImpl(
          chartContext, graphicsFactory,
          minimumPaddingBetweenLabelsPx: 0);

      final ticks = [
        createTick('A', 10.0, verticalWidth: 11.0), // 10.0 - 21.0
        createTick('B', 20.0, verticalWidth: 10.0), // 20.0 - 30.0
        createTick('C', 30.0, verticalWidth: 10.0), // 30.0 - 40.0
      ];

      final report = drawStrategy.collides(ticks, AxisOrientation.left);

      expect(report.ticksCollide, isTrue);
    });

    test('last tick causes collision', () {
      final drawStrategy = new BaseTickDrawStrategyImpl(
          chartContext, graphicsFactory,
          minimumPaddingBetweenLabelsPx: 0);

      final ticks = [
        createTick('A', 10.0, verticalWidth: 10.0), // 10.0 - 20.0
        createTick('B', 20.0, verticalWidth: 10.0), // 20.0 - 30.0
        createTick('C', 29.0, verticalWidth: 10.0), // 29.0 - 40.0
      ];

      final report = drawStrategy.collides(ticks, AxisOrientation.left);

      expect(report.ticksCollide, isTrue);
    });

    test('ticks do not collide for inside tick label anchor', () {
      final drawStrategy = new BaseTickDrawStrategyImpl(
          chartContext, graphicsFactory,
          minimumPaddingBetweenLabelsPx: 2,
          labelAnchor: TickLabelAnchor.inside);

      final ticks = [
        createTick('A', 10.0, verticalWidth: 8.0), // 10.0 - 20.0 (18.0 + 2)
        createTick('B', 25.0, verticalWidth: 8.0), // 20.0 - 30.0 (25 + 2 + 1)
        createTick('C', 40.0, verticalWidth: 8.0), // 30.0 - 40.0 (40-8-2)
      ];

      final report = drawStrategy.collides(ticks, AxisOrientation.left);

      expect(report.ticksCollide, isFalse);
    });

    test('ticks collide for inside anchor - first tick too large', () {
      final drawStrategy = new BaseTickDrawStrategyImpl(
          chartContext, graphicsFactory,
          minimumPaddingBetweenLabelsPx: 2,
          labelAnchor: TickLabelAnchor.inside);

      final ticks = [
        createTick('A', 10.0, verticalWidth: 9.0), // 10.0 - 21.0 (19.0 + 2)
        createTick('B', 25.0, verticalWidth: 8.0), // 20.0 - 30.0 (25 + 2 + 1)
        createTick('C', 40.0, verticalWidth: 8.0), // 30.0 - 40.0 (40-8-2)
      ];

      final report = drawStrategy.collides(ticks, AxisOrientation.left);

      expect(report.ticksCollide, isTrue);
    });

    test('ticks collide for inside anchor - center tick too large', () {
      final drawStrategy = new BaseTickDrawStrategyImpl(
          chartContext, graphicsFactory,
          minimumPaddingBetweenLabelsPx: 2,
          labelAnchor: TickLabelAnchor.inside);

      final ticks = [
        createTick('A', 10.0, verticalWidth: 8.0), // 10.0 - 20.0 (18.0 + 2)
        createTick('B', 25.0, verticalWidth: 9.0), // 19.5 - 30.5 (25 + 2.5 + 1)
        createTick('C', 40.0, verticalWidth: 8.0), // 30.0 - 40.0 (40-8-2)
      ];

      final report = drawStrategy.collides(ticks, AxisOrientation.left);

      expect(report.ticksCollide, isTrue);
    });

    test('ticks collide for inside anchor - last tick too large', () {
      final drawStrategy = new BaseTickDrawStrategyImpl(
          chartContext, graphicsFactory,
          minimumPaddingBetweenLabelsPx: 2,
          labelAnchor: TickLabelAnchor.inside);

      final ticks = [
        createTick('A', 10.0, verticalWidth: 8.0), // 10.0 - 20.0 (18.0 + 2)
        createTick('B', 25.0, verticalWidth: 8.0), // 20.0 - 30.0 (25 + 2 + 1)
        createTick('C', 40.0, verticalWidth: 9.0), // 29.0 - 40.0 (40-9-2)
      ];

      final report = drawStrategy.collides(ticks, AxisOrientation.left);

      expect(report.ticksCollide, isTrue);
    });
  });

  group('collision detection - horizontally drawn axis', () {
    test('ticks do not collide for TickLabelAnchor.before', () {
      final drawStrategy = new BaseTickDrawStrategyImpl(
          chartContext, graphicsFactory,
          minimumPaddingBetweenLabelsPx: 2,
          labelAnchor: TickLabelAnchor.before);

      final ticks = [
        createTick('A', 10.0, horizontalWidth: 8.0), // 10.0 - 20.0 (18.0 + 2)
        createTick('B', 20.0, horizontalWidth: 8.0), // 20.0 - 30.0 (28.0 + 2)
        createTick('C', 30.0, horizontalWidth: 8.0), // 30.0 - 40.0 (38.0 + 2)
      ];

      final report = drawStrategy.collides(ticks, AxisOrientation.bottom);

      expect(report.ticksCollide, isFalse);
    });

    test('ticks do not collide for TickLabelAnchor.inside', () {
      final drawStrategy = new BaseTickDrawStrategyImpl(
          chartContext, graphicsFactory,
          minimumPaddingBetweenLabelsPx: 0,
          labelAnchor: TickLabelAnchor.inside);

      final ticks = [
        createTick('A', 10.0,
            horizontalWidth: 10.0,
            textDirection: TextDirection.ltr), // 10.0 - 20.0
        createTick('B', 25.0,
            horizontalWidth: 10.0,
            textDirection: TextDirection.center), // 20.0 - 30.0
        createTick('C', 40.0,
            horizontalWidth: 10.0,
            textDirection: TextDirection.rtl), // 30.0 - 40.0
      ];

      final report = drawStrategy.collides(ticks, AxisOrientation.bottom);

      expect(report.ticksCollide, isFalse);
    });

    test('ticks collide - first tick too large', () {
      final drawStrategy = new BaseTickDrawStrategyImpl(
          chartContext, graphicsFactory,
          minimumPaddingBetweenLabelsPx: 0,
          labelAnchor: TickLabelAnchor.inside);

      final ticks = [
        createTick('A', 10.0, horizontalWidth: 11.0), // 10.0 - 21.0
        createTick('B', 25.0, horizontalWidth: 10.0), // 20.0 - 30.0
        createTick('C', 40.0, horizontalWidth: 10.0), // 30.0 - 40.0
      ];

      final report = drawStrategy.collides(ticks, AxisOrientation.bottom);

      expect(report.ticksCollide, isTrue);
    });

    test('ticks collide - middle tick too large', () {
      final drawStrategy = new BaseTickDrawStrategyImpl(
          chartContext, graphicsFactory,
          minimumPaddingBetweenLabelsPx: 0,
          labelAnchor: TickLabelAnchor.inside);

      final ticks = [
        createTick('A', 10.0, horizontalWidth: 10.0), // 10.0 - 20.0
        createTick('B', 25.0, horizontalWidth: 11.0), // 19.5 - 30.5
        createTick('C', 40.0, horizontalWidth: 10.0), // 30.0 - 40.0
      ];

      final report = drawStrategy.collides(ticks, AxisOrientation.bottom);

      expect(report.ticksCollide, isTrue);
    });

    test('ticks collide - last tick too large', () {
      final drawStrategy = new BaseTickDrawStrategyImpl(
          chartContext, graphicsFactory,
          minimumPaddingBetweenLabelsPx: 0,
          labelAnchor: TickLabelAnchor.inside);

      final ticks = [
        createTick('A', 10.0, horizontalWidth: 10.0), // 10.0 - 20.0
        createTick('B', 25.0, horizontalWidth: 10.0), // 20.0 - 30.0
        createTick('C', 40.0, horizontalWidth: 11.0), // 29.0 - 40.0
      ];

      final report = drawStrategy.collides(ticks, AxisOrientation.bottom);

      expect(report.ticksCollide, isTrue);
    });
  });

  group('collision detection - unsorted ticks', () {
    test('ticks do not collide', () {
      final drawStrategy = new BaseTickDrawStrategyImpl(
          chartContext, graphicsFactory,
          minimumPaddingBetweenLabelsPx: 0,
          labelAnchor: TickLabelAnchor.inside);

      final ticks = [
        createTick('C', 40.0, horizontalWidth: 10.0), // 30.0 - 40.0
        createTick('B', 25.0, horizontalWidth: 10.0), // 20.0 - 30.0
        createTick('A', 10.0, horizontalWidth: 10.0), // 10.0 - 20.0
      ];

      final report = drawStrategy.collides(ticks, AxisOrientation.bottom);

      expect(report.ticksCollide, isFalse);
    });

    test('ticks collide - tick B is too large', () {
      final drawStrategy = new BaseTickDrawStrategyImpl(
          chartContext, graphicsFactory,
          minimumPaddingBetweenLabelsPx: 0,
          labelAnchor: TickLabelAnchor.inside);

      final ticks = [
        createTick('A', 10.0, horizontalWidth: 10.0), // 10.0 - 20.0
        createTick('C', 40.0, horizontalWidth: 10.0), // 30.0 - 40.0
        createTick('B', 25.0, horizontalWidth: 11.0), // 19.5 - 30.5
      ];

      final report = drawStrategy.collides(ticks, AxisOrientation.bottom);

      expect(report.ticksCollide, isTrue);
    });
  });

  group('collision detection - corner cases', () {
    test('null ticks do not collide', () {
      final drawStrategy =
          new BaseTickDrawStrategyImpl(chartContext, graphicsFactory);

      final report = drawStrategy.collides(null, AxisOrientation.left);

      expect(report.ticksCollide, isFalse);
    });

    test('empty tick list do not collide', () {
      final drawStrategy =
          new BaseTickDrawStrategyImpl(chartContext, graphicsFactory);

      final report = drawStrategy.collides([], AxisOrientation.left);

      expect(report.ticksCollide, isFalse);
    });

    test('single tick does not collide', () {
      final drawStrategy =
          new BaseTickDrawStrategyImpl(chartContext, graphicsFactory);

      final report = drawStrategy.collides(
          [createTick('A', 10.0, horizontalWidth: 10.0)],
          AxisOrientation.bottom);

      expect(report.ticksCollide, isFalse);
    });
  });
}
