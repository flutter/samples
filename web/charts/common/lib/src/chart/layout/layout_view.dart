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
import 'package:meta/meta.dart';

import '../../common/graphics_factory.dart' show GraphicsFactory;
import '../common/chart_canvas.dart' show ChartCanvas;

/// Position of a [LayoutView].
enum LayoutPosition {
  Bottom,
  FullBottom,

  Top,
  FullTop,

  Left,
  FullLeft,

  Right,
  FullRight,

  DrawArea,
}

/// Standard layout paint orders for all internal components.
///
/// Custom component layers should define their paintOrder by taking the nearest
/// layer from this list, and adding or subtracting 1. This will help reduce the
/// chance of custom behaviors, renderers, etc. from breaking if we need to
/// re-order these components internally.
class LayoutViewPaintOrder {
  // Draw range annotations beneath axis grid lines.
  static const rangeAnnotation = -10;
  // Axis elements form the "base layer" of all components on the chart. Domain
  // axes are drawn on top of measure axes to ensure that the domain axis line
  // appears on top of any measure axis grid lines.
  static const measureAxis = 0;
  static const domainAxis = 5;
  // Draw series data on top of axis elements.
  static const arc = 10;
  static const bar = 10;
  static const barTargetLine = 15;
  static const line = 20;
  static const point = 25;
  // Draw most behaviors on top of series data.
  static const legend = 100;
  static const linePointHighlighter = 110;
  static const slider = 150;
  static const chartTitle = 160;
}

/// Standard layout position orders for all internal components.
///
/// Custom component layers should define their positionOrder by taking the
/// nearest component from this list, and adding or subtracting 1. This will
/// help reduce the chance of custom behaviors, renderers, etc. from breaking if
/// we need to re-order these components internally.
class LayoutViewPositionOrder {
  static const drawArea = 0;
  static const symbolAnnotation = 10;
  static const axis = 20;
  static const legend = 30;
  static const chartTitle = 40;
}

/// A configuration for margin (empty space) around a layout child view.
class ViewMargin {
  /// A [ViewMargin] with all zero px.
  static const empty =
      const ViewMargin(topPx: 0, bottomPx: 0, rightPx: 0, leftPx: 0);

  final int topPx;
  final int bottomPx;
  final int rightPx;
  final int leftPx;

  const ViewMargin({int topPx, int bottomPx, int rightPx, int leftPx})
      : topPx = topPx ?? 0,
        bottomPx = bottomPx ?? 0,
        rightPx = rightPx ?? 0,
        leftPx = leftPx ?? 0;

  /// Total width.
  int get width => leftPx + rightPx;

  /// Total height.
  int get height => topPx + bottomPx;
}

/// Configuration of a [LayoutView].
class LayoutViewConfig {
  /// Unique identifier for the [LayoutView].
  String id;

  /// The order to paint a [LayoutView] on the canvas.
  ///
  /// The smaller number is drawn first.
  int paintOrder;

  /// The position of a [LayoutView] defining where to place the view.
  LayoutPosition position;

  /// The order to place the [LayoutView] within a chart margin.
  ///
  /// The smaller number is closer to the draw area. Elements positioned closer
  /// to the draw area will be given extra layout space first, before those
  /// further away.
  ///
  /// Note that all views positioned in the draw area are given the entire draw
  /// area bounds as their component bounds.
  int positionOrder;

  /// Defines the space around a layout component.
  ViewMargin viewMargin;

  /// Creates new [LayoutParams].
  ///
  /// [paintOrder] the order that this component will be drawn.
  /// [position] the [ComponentPosition] of this component.
  /// [positionOrder] the order of this component in a chart margin.
  LayoutViewConfig(
      {@required this.paintOrder,
      @required this.position,
      @required this.positionOrder,
      ViewMargin viewMargin})
      : viewMargin = viewMargin ?? ViewMargin.empty;

  /// Returns true if it is a full position.
  bool get isFullPosition =>
      position == LayoutPosition.FullBottom ||
      position == LayoutPosition.FullTop ||
      position == LayoutPosition.FullRight ||
      position == LayoutPosition.FullLeft;
}

/// Size measurements of one component.
///
/// The measurement is tight to the component, without adding [ComponentBuffer].
class ViewMeasuredSizes {
  /// All zeroes component size.
  static const zero = const ViewMeasuredSizes(
      preferredWidth: 0, preferredHeight: 0, minWidth: 0, minHeight: 0);

  final int preferredWidth;
  final int preferredHeight;
  final int minWidth;
  final int minHeight;

  /// Create a new [ViewSizes].
  ///
  /// [preferredWidth] the component's preferred width.
  /// [preferredHeight] the component's preferred width.
  /// [minWidth] the component's minimum width. If not set, default to 0.
  /// [minHeight] the component's minimum height. If not set, default to 0.
  const ViewMeasuredSizes(
      {@required this.preferredWidth,
      @required this.preferredHeight,
      int minWidth,
      int minHeight})
      : minWidth = minWidth ?? 0,
        minHeight = minHeight ?? 0;
}

/// A component that measures its size and accepts bounds to complete layout.
abstract class LayoutView {
  GraphicsFactory get graphicsFactory;

  set graphicsFactory(GraphicsFactory value);

  /// Layout params for this component.
  LayoutViewConfig get layoutConfig;

  /// Measure and return the size of this component.
  ///
  /// This measurement is without the [ComponentBuffer], which is added by the
  /// layout manager.
  ViewMeasuredSizes measure(int maxWidth, int maxHeight);

  /// Layout this component.
  void layout(Rectangle<int> componentBounds, Rectangle<int> drawAreaBounds);

  /// Draw this component on the canvas.
  void paint(ChartCanvas canvas, double animationPercent);

  /// Bounding box for drawing this component.
  Rectangle<int> get componentBounds;

  /// Whether or not this component is a series renderer that draws series
  /// data.
  ///
  /// This component may either render into the chart's draw area, or into a
  /// separate area bounded by the component bounds.
  bool get isSeriesRenderer;
}
