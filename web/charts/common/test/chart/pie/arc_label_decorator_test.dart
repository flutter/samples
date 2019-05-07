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

import 'dart:math' show pi, Point, Rectangle;
import 'package:charts_common/src/chart/common/processed_series.dart'
    show ImmutableSeries;
import 'package:charts_common/src/common/color.dart' show Color;
import 'package:charts_common/src/common/graphics_factory.dart'
    show GraphicsFactory;
import 'package:charts_common/src/common/line_style.dart' show LineStyle;
import 'package:charts_common/src/common/text_element.dart'
    show TextDirection, TextElement, MaxWidthStrategy;
import 'package:charts_common/src/common/text_measurement.dart'
    show TextMeasurement;
import 'package:charts_common/src/common/text_style.dart' show TextStyle;
import 'package:charts_common/src/chart/cartesian/axis/spec/axis_spec.dart'
    show TextStyleSpec;
import 'package:charts_common/src/chart/common/chart_canvas.dart'
    show ChartCanvas;
import 'package:charts_common/src/chart/pie/arc_label_decorator.dart'
    show ArcLabelDecorator, ArcLabelPosition;
import 'package:charts_common/src/chart/pie/arc_renderer.dart'
    show ArcRendererElement, ArcRendererElementList;
import 'package:charts_common/src/data/series.dart' show AccessorFn;

import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockCanvas extends Mock implements ChartCanvas {}

/// A fake [GraphicsFactory] that returns [FakeTextStyle] and [FakeTextElement].
class FakeGraphicsFactory extends GraphicsFactory {
  @override
  TextStyle createTextPaint() => new FakeTextStyle();

  @override
  TextElement createTextElement(String text) => new FakeTextElement(text);

  @override
  LineStyle createLinePaint() => new MockLinePaint();
}

/// Stores [TextStyle] properties for test to verify.
class FakeTextStyle implements TextStyle {
  Color color;
  int fontSize;
  String fontFamily;
}

/// Fake [TextElement] which returns text length as [horizontalSliceWidth].
///
/// Font size is returned for [verticalSliceWidth] and [baseline].
class FakeTextElement implements TextElement {
  final String text;
  TextStyle textStyle;
  int maxWidth;
  MaxWidthStrategy maxWidthStrategy;
  TextDirection textDirection;
  double opacity;

  FakeTextElement(this.text);

  TextMeasurement get measurement => new TextMeasurement(
      horizontalSliceWidth: text.length.toDouble(),
      verticalSliceWidth: textStyle.fontSize.toDouble(),
      baseline: textStyle.fontSize.toDouble());
}

class MockLinePaint extends Mock implements LineStyle {}

class FakeArcRendererElement extends ArcRendererElement<String> {
  final _series = new MockImmutableSeries<String>();
  final AccessorFn<String> labelAccessor;
  final List<String> data;

  FakeArcRendererElement(this.labelAccessor, this.data) {
    when(_series.labelAccessorFn).thenReturn(labelAccessor);
    when(_series.data).thenReturn(data);
  }

  ImmutableSeries<String> get series => _series;
}

class MockImmutableSeries<D> extends Mock implements ImmutableSeries<D> {}

void main() {
  ChartCanvas canvas;
  GraphicsFactory graphicsFactory;
  Rectangle<int> drawBounds;

  setUpAll(() {
    canvas = new MockCanvas();
    graphicsFactory = new FakeGraphicsFactory();
    drawBounds = new Rectangle(0, 0, 200, 200);
  });

  group('pie chart', () {
    test('Paint labels with default settings', () {
      final data = ['A', 'B'];
      final arcElements = new ArcRendererElementList()
        ..arcs = [
          // 'A' is small enough to fit inside the arc.
          // 'LongLabelB' should not fit inside the arc because it has length
          // greater than 10.
          new FakeArcRendererElement((_) => 'A', data)
            ..startAngle = -pi / 2
            ..endAngle = pi / 2,
          new FakeArcRendererElement((_) => 'LongLabelB', data)
            ..startAngle = pi / 2
            ..endAngle = 3 * pi / 2,
        ]
        ..center = new Point(100.0, 100.0)
        ..innerRadius = 30.0
        ..radius = 40.0
        ..startAngle = -pi / 2;

      final decorator = new ArcLabelDecorator();

      decorator.decorate(arcElements, canvas, graphicsFactory,
          drawBounds: drawBounds, animationPercent: 1.0);

      final captured =
          verify(canvas.drawText(captureAny, captureAny, captureAny)).captured;
      // Draw text is called twice (once for each arc) and all 3 parameters were
      // captured. Total parameters captured expected to be 6.
      expect(captured, hasLength(6));
      // For arc 'A'.
      expect(captured[0].maxWidth, equals(10 - decorator.labelPadding));
      expect(captured[0].textDirection, equals(TextDirection.center));
      expect(captured[1], equals(135));
      expect(captured[2],
          equals(100 - decorator.insideLabelStyleSpec.fontSize ~/ 2));
      // For arc 'B'.
      expect(captured[3].maxWidth, equals(80));
      expect(captured[3].textDirection, equals(TextDirection.rtl));
      expect(
          captured[4],
          equals(60 -
              decorator.leaderLineStyleSpec.length -
              decorator.labelPadding * 3));
      expect(captured[5],
          equals(100 - decorator.outsideLabelStyleSpec.fontSize ~/ 2));
    });

    test('LabelPosition.inside always paints inside the arc', () {
      final arcElements = new ArcRendererElementList()
        ..arcs = [
          // 'LongLabelABC' would not fit inside the arc because it has length
          // greater than 10. [ArcLabelPosition.inside] should override this.
          new FakeArcRendererElement((_) => 'LongLabelABC', ['A'])
            ..startAngle = -pi / 2
            ..endAngle = pi / 2,
        ]
        ..center = new Point(100.0, 100.0)
        ..innerRadius = 30.0
        ..radius = 40.0
        ..startAngle = -pi / 2;

      final decorator = new ArcLabelDecorator(
          labelPosition: ArcLabelPosition.inside,
          insideLabelStyleSpec: new TextStyleSpec(fontSize: 10));

      decorator.decorate(arcElements, canvas, graphicsFactory,
          drawBounds: drawBounds, animationPercent: 1.0);

      final captured =
          verify(canvas.drawText(captureAny, captureAny, captureAny)).captured;
      expect(captured, hasLength(3));
      expect(captured[0].maxWidth, equals(10 - decorator.labelPadding));
      expect(captured[0].textDirection, equals(TextDirection.center));
      expect(captured[1], equals(135));
      expect(captured[2],
          equals(100 - decorator.insideLabelStyleSpec.fontSize ~/ 2));
    });

    test('LabelPosition.outside always paints outside the arc', () {
      final arcElements = new ArcRendererElementList()
        ..arcs = [
          // 'A' will fit inside the arc because it has length less than 10.
          // [ArcLabelPosition.outside] should override this.
          new FakeArcRendererElement((_) => 'A', ['A'])
            ..startAngle = -pi / 2
            ..endAngle = pi / 2,
        ]
        ..center = new Point(100.0, 100.0)
        ..innerRadius = 30.0
        ..radius = 40.0
        ..startAngle = -pi / 2;

      final decorator = new ArcLabelDecorator(
          labelPosition: ArcLabelPosition.outside,
          outsideLabelStyleSpec: new TextStyleSpec(fontSize: 10));

      decorator.decorate(arcElements, canvas, graphicsFactory,
          drawBounds: drawBounds, animationPercent: 1.0);

      final captured =
          verify(canvas.drawText(captureAny, captureAny, captureAny)).captured;
      expect(captured, hasLength(3));
      expect(captured[0].maxWidth, equals(40));
      expect(captured[0].textDirection, equals(TextDirection.ltr));
      expect(
          captured[1],
          equals(140 +
              decorator.leaderLineStyleSpec.length +
              decorator.labelPadding * 3));
      expect(captured[2],
          equals(100 - decorator.outsideLabelStyleSpec.fontSize ~/ 2));
    });

    test('Inside and outside label styles are applied', () {
      final data = ['A', 'B'];
      final arcElements = new ArcRendererElementList()
        ..arcs = [
          // 'A' is small enough to fit inside the arc.
          // 'LongLabelB' should not fit inside the arc because it has length
          // greater than 10.
          new FakeArcRendererElement((_) => 'A', data)
            ..startAngle = -pi / 2
            ..endAngle = pi / 2,
          new FakeArcRendererElement((_) => 'LongLabelB', data)
            ..startAngle = pi / 2
            ..endAngle = 3 * pi / 2,
        ]
        ..center = new Point(100.0, 100.0)
        ..innerRadius = 30.0
        ..radius = 40.0
        ..startAngle = -pi / 2;

      final insideColor = new Color(r: 0, g: 0, b: 0);
      final outsideColor = new Color(r: 255, g: 255, b: 255);
      final decorator = new ArcLabelDecorator(
          labelPadding: 0,
          insideLabelStyleSpec: new TextStyleSpec(
              fontSize: 10, fontFamily: 'insideFont', color: insideColor),
          outsideLabelStyleSpec: new TextStyleSpec(
              fontSize: 8, fontFamily: 'outsideFont', color: outsideColor));

      decorator.decorate(arcElements, canvas, graphicsFactory,
          drawBounds: drawBounds, animationPercent: 1.0);

      final captured =
          verify(canvas.drawText(captureAny, captureAny, captureAny)).captured;
      // Draw text is called twice (once for each arc) and all 3 parameters were
      // captured. Total parameters captured expected to be 6.
      expect(captured, hasLength(6));
      // For arc 'A'.
      expect(captured[0].maxWidth, equals(10 - decorator.labelPadding));
      expect(captured[0].textDirection, equals(TextDirection.center));
      expect(captured[0].textStyle.fontFamily, equals('insideFont'));
      expect(captured[0].textStyle.color, equals(insideColor));
      expect(captured[1], equals(135));
      expect(captured[2],
          equals(100 - decorator.insideLabelStyleSpec.fontSize ~/ 2));
      // For arc 'B'.
      expect(captured[3].maxWidth, equals(90));
      expect(captured[3].textDirection, equals(TextDirection.rtl));
      expect(captured[3].textStyle.fontFamily, equals('outsideFont'));
      expect(captured[3].textStyle.color, equals(outsideColor));
      expect(
          captured[4],
          equals(50 -
              decorator.leaderLineStyleSpec.length -
              decorator.labelPadding * 3));
      expect(captured[5],
          equals(100 - decorator.outsideLabelStyleSpec.fontSize ~/ 2));
    });
  });

  group('Null and empty label scenarios', () {
    test('Skip label if label accessor does not exist', () {
      final arcElements = new ArcRendererElementList()
        ..arcs = [
          new FakeArcRendererElement(null, ['A'])
            ..startAngle = -pi / 2
            ..endAngle = pi / 2,
        ]
        ..center = new Point(100.0, 100.0)
        ..innerRadius = 30.0
        ..radius = 40.0
        ..startAngle = -pi / 2;

      new ArcLabelDecorator().decorate(arcElements, canvas, graphicsFactory,
          drawBounds: drawBounds, animationPercent: 1.0);

      verifyNever(canvas.drawText(any, any, any));
    });

    test('Skip label if label is null or empty', () {
      final data = ['A', 'B'];
      final arcElements = new ArcRendererElementList()
        ..arcs = [
          new FakeArcRendererElement(null, data)
            ..startAngle = -pi / 2
            ..endAngle = pi / 2,
          new FakeArcRendererElement((_) => '', data)
            ..startAngle = pi / 2
            ..endAngle = 3 * pi / 2,
        ]
        ..center = new Point(100.0, 100.0)
        ..innerRadius = 30.0
        ..radius = 40.0
        ..startAngle = -pi / 2;

      new ArcLabelDecorator().decorate(arcElements, canvas, graphicsFactory,
          drawBounds: drawBounds, animationPercent: 1.0);

      verifyNever(canvas.drawText(any, any, any));
    });
  });
}
