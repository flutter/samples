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
import 'package:charts_common/src/chart/scatter_plot/comparison_points_decorator.dart';
import 'package:charts_common/src/chart/scatter_plot/point_renderer.dart';

import 'package:test/test.dart';

/// Datum/Row for the chart.
class MyRow {
  final int campaign;
  final int clickCount;
  MyRow(this.campaign, this.clickCount);
}

class TestComparisonPointsDecorator<D> extends ComparisonPointsDecorator<D> {
  List<Point<double>> testComputeBoundedPointsForElement(
      PointRendererElement<D> pointElement, Rectangle drawBounds) {
    return computeBoundedPointsForElement(pointElement, drawBounds);
  }
}

void main() {
  TestComparisonPointsDecorator decorator;
  Rectangle bounds;

  setUp(() {
    decorator = new TestComparisonPointsDecorator<num>();
    bounds = new Rectangle<int>(0, 0, 100, 100);
  });

  group('compute bounded points', () {
    test('with line inside bounds', () {
      final element = new PointRendererElement<num>()
        ..point = new DatumPoint<num>(
            x: 10.0,
            xLower: 5.0,
            xUpper: 50.0,
            y: 20.0,
            yLower: 20.0,
            yUpper: 20.0);

      final points =
          decorator.testComputeBoundedPointsForElement(element, bounds);

      expect(points.length, equals(2));

      expect(points[0].x, equals(5.0));
      expect(points[0].y, equals(20.0));

      expect(points[1].x, equals(50.0));
      expect(points[1].y, equals(20.0));
    });

    test('with line entirely above bounds', () {
      final element = new PointRendererElement<num>()
        ..point = new DatumPoint<num>(
            x: 10.0,
            xLower: 5.0,
            xUpper: 50.0,
            y: -20.0,
            yLower: -20.0,
            yUpper: -20.0);

      final points =
          decorator.testComputeBoundedPointsForElement(element, bounds);

      expect(points, isNull);
    });

    test('with line entirely below bounds', () {
      final element = new PointRendererElement<num>()
        ..point = new DatumPoint<num>(
            x: 10.0,
            xLower: 5.0,
            xUpper: 50.0,
            y: 120.0,
            yLower: 120.0,
            yUpper: 120.0);

      final points =
          decorator.testComputeBoundedPointsForElement(element, bounds);

      expect(points, isNull);
    });

    test('with line entirely left of bounds', () {
      final element = new PointRendererElement<num>()
        ..point = new DatumPoint<num>(
            x: -10.0,
            xLower: -5.0,
            xUpper: -50.0,
            y: 20.0,
            yLower: 20.0,
            yUpper: 50.0);

      final points =
          decorator.testComputeBoundedPointsForElement(element, bounds);

      expect(points, isNull);
    });

    test('with line entirely right of bounds', () {
      final element = new PointRendererElement<num>()
        ..point = new DatumPoint<num>(
            x: 110.0,
            xLower: 105.0,
            xUpper: 150.0,
            y: 20.0,
            yLower: 20.0,
            yUpper: 50.0);

      final points =
          decorator.testComputeBoundedPointsForElement(element, bounds);

      expect(points, isNull);
    });

    test('with horizontal line extending beyond bounds', () {
      final element = new PointRendererElement<num>()
        ..point = new DatumPoint<num>(
            x: 10.0,
            xLower: -10.0,
            xUpper: 110.0,
            y: 20.0,
            yLower: 20.0,
            yUpper: 20.0);

      final points =
          decorator.testComputeBoundedPointsForElement(element, bounds);

      expect(points.length, equals(2));

      expect(points[0].x, equals(0.0));
      expect(points[0].y, equals(20.0));

      expect(points[1].x, equals(100.0));
      expect(points[1].y, equals(20.0));
    });

    test('with vertical line extending beyond bounds', () {
      final element = new PointRendererElement<num>()
        ..point = new DatumPoint<num>(
            x: 20.0,
            xLower: 20.0,
            xUpper: 20.0,
            y: 10.0,
            yLower: -10.0,
            yUpper: 110.0);

      final points =
          decorator.testComputeBoundedPointsForElement(element, bounds);

      expect(points.length, equals(2));

      expect(points[0].x, equals(20.0));
      expect(points[0].y, equals(0.0));

      expect(points[1].x, equals(20.0));
      expect(points[1].y, equals(100.0));
    });

    test('with diagonal from top left to bottom right', () {
      final element = new PointRendererElement<num>()
        ..point = new DatumPoint<num>(
            x: 50.0,
            xLower: -50.0,
            xUpper: 150.0,
            y: 50.0,
            yLower: -50.0,
            yUpper: 150.0);

      final points =
          decorator.testComputeBoundedPointsForElement(element, bounds);

      expect(points.length, equals(2));

      expect(points[0].x, equals(0.0));
      expect(points[0].y, equals(0.0));

      expect(points[1].x, equals(100.0));
      expect(points[1].y, equals(100.0));
    });

    test('with diagonal from bottom left to top right', () {
      final element = new PointRendererElement<num>()
        ..point = new DatumPoint<num>(
            x: 50.0,
            xLower: -50.0,
            xUpper: 150.0,
            y: 50.0,
            yLower: 150.0,
            yUpper: -50.0);

      final points =
          decorator.testComputeBoundedPointsForElement(element, bounds);

      expect(points.length, equals(2));

      expect(points[0].x, equals(0.0));
      expect(points[0].y, equals(100.0));

      expect(points[1].x, equals(100.0));
      expect(points[1].y, equals(0.0));
    });
  });
}
