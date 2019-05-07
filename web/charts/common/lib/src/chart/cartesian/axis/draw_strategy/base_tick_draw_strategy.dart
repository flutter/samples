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

import 'package:meta/meta.dart' show immutable, protected, required;

import '../../../../common/graphics_factory.dart' show GraphicsFactory;
import '../../../../common/line_style.dart' show LineStyle;
import '../../../../common/style/style_factory.dart' show StyleFactory;
import '../../../../common/text_element.dart' show TextDirection;
import '../../../../common/text_style.dart' show TextStyle;
import '../../../common/chart_canvas.dart' show ChartCanvas;
import '../../../common/chart_context.dart' show ChartContext;
import '../../../layout/layout_view.dart' show ViewMeasuredSizes;
import '../axis.dart' show AxisOrientation;
import '../collision_report.dart' show CollisionReport;
import '../spec/axis_spec.dart'
    show
        TextStyleSpec,
        TickLabelAnchor,
        TickLabelJustification,
        LineStyleSpec,
        RenderSpec;
import '../tick.dart' show Tick;
import 'tick_draw_strategy.dart' show TickDrawStrategy;

@immutable
abstract class BaseRenderSpec<D> implements RenderSpec<D> {
  final TextStyleSpec labelStyle;
  final TickLabelAnchor labelAnchor;
  final TickLabelJustification labelJustification;

  final int labelOffsetFromAxisPx;

  /// Absolute distance from the tick to the text if using start/end
  final int labelOffsetFromTickPx;

  final int minimumPaddingBetweenLabelsPx;

  final LineStyleSpec axisLineStyle;

  const BaseRenderSpec({
    this.labelStyle,
    this.labelAnchor,
    this.labelJustification,
    this.labelOffsetFromAxisPx,
    this.labelOffsetFromTickPx,
    this.minimumPaddingBetweenLabelsPx,
    this.axisLineStyle,
  });

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is BaseRenderSpec &&
            labelStyle == other.labelStyle &&
            labelAnchor == other.labelAnchor &&
            labelJustification == other.labelJustification &&
            labelOffsetFromTickPx == other.labelOffsetFromTickPx &&
            labelOffsetFromAxisPx == other.labelOffsetFromAxisPx &&
            minimumPaddingBetweenLabelsPx ==
                other.minimumPaddingBetweenLabelsPx &&
            axisLineStyle == other.axisLineStyle);
  }

  @override
  int get hashCode {
    int hashcode = labelStyle?.hashCode ?? 0;
    hashcode = (hashcode * 37) + labelAnchor?.hashCode ?? 0;
    hashcode = (hashcode * 37) + labelJustification?.hashCode ?? 0;
    hashcode = (hashcode * 37) + labelOffsetFromTickPx?.hashCode ?? 0;
    hashcode = (hashcode * 37) + labelOffsetFromAxisPx?.hashCode ?? 0;
    hashcode = (hashcode * 37) + minimumPaddingBetweenLabelsPx?.hashCode ?? 0;
    hashcode = (hashcode * 37) + axisLineStyle?.hashCode ?? 0;
    return hashcode;
  }
}

/// Base strategy that draws tick labels and checks for label collisions.
abstract class BaseTickDrawStrategy<D> implements TickDrawStrategy<D> {
  final ChartContext chartContext;

  LineStyle axisLineStyle;
  TextStyle labelStyle;
  TickLabelAnchor tickLabelAnchor;
  TickLabelJustification tickLabelJustification;
  int labelOffsetFromAxisPx;
  int labelOffsetFromTickPx;

  int minimumPaddingBetweenLabelsPx;

  BaseTickDrawStrategy(this.chartContext, GraphicsFactory graphicsFactory,
      {TextStyleSpec labelStyleSpec,
      LineStyleSpec axisLineStyleSpec,
      TickLabelAnchor labelAnchor,
      TickLabelJustification labelJustification,
      int labelOffsetFromAxisPx,
      int labelOffsetFromTickPx,
      int minimumPaddingBetweenLabelsPx}) {
    labelStyle = (graphicsFactory.createTextPaint()
      ..color = labelStyleSpec?.color ?? StyleFactory.style.tickColor
      ..fontFamily = labelStyleSpec?.fontFamily
      ..fontSize = labelStyleSpec?.fontSize ?? 12);

    axisLineStyle = graphicsFactory.createLinePaint()
      ..color = axisLineStyleSpec?.color ?? labelStyle.color
      ..dashPattern = axisLineStyleSpec?.dashPattern
      ..strokeWidth = axisLineStyleSpec?.thickness ?? 1;

    tickLabelAnchor = labelAnchor ?? TickLabelAnchor.centered;
    tickLabelJustification =
        labelJustification ?? TickLabelJustification.inside;
    this.labelOffsetFromAxisPx = labelOffsetFromAxisPx ?? 5;
    this.labelOffsetFromTickPx = labelOffsetFromTickPx ?? 5;
    this.minimumPaddingBetweenLabelsPx = minimumPaddingBetweenLabelsPx ?? 50;
  }

  @override
  void decorateTicks(List<Tick<D>> ticks) {
    for (Tick<D> tick in ticks) {
      // If no style at all, set the default style.
      if (tick.textElement.textStyle == null) {
        tick.textElement.textStyle = labelStyle;
      } else {
        //Fill in whatever is missing
        tick.textElement.textStyle.color ??= labelStyle.color;
        tick.textElement.textStyle.fontFamily ??= labelStyle.fontFamily;
        tick.textElement.textStyle.fontSize ??= labelStyle.fontSize;
      }
    }
  }

  @override
  CollisionReport collides(List<Tick<D>> ticks, AxisOrientation orientation) {
    // If there are no ticks, they do not collide.
    if (ticks == null) {
      return new CollisionReport(
          ticksCollide: false, ticks: ticks, alternateTicksUsed: false);
    }

    final vertical = orientation == AxisOrientation.left ||
        orientation == AxisOrientation.right;

    // First sort ticks by smallest locationPx first (NOT sorted by value).
    // This allows us to only check if a tick collides with the previous tick.
    ticks.sort((a, b) {
      if (a.locationPx < b.locationPx) {
        return -1;
      } else if (a.locationPx > b.locationPx) {
        return 1;
      } else {
        return 0;
      }
    });

    double previousEnd = double.negativeInfinity;
    bool collides = false;

    for (final tick in ticks) {
      final tickSize = tick.textElement.measurement;

      if (vertical) {
        final adjustedHeight =
            tickSize.verticalSliceWidth + minimumPaddingBetweenLabelsPx;

        if (tickLabelAnchor == TickLabelAnchor.inside) {
          if (identical(tick, ticks.first)) {
            // Top most tick draws down from the location
            collides = false;
            previousEnd = tick.locationPx + adjustedHeight;
          } else if (identical(tick, ticks.last)) {
            // Bottom most tick draws up from the location
            collides = previousEnd > tick.locationPx - adjustedHeight;
            previousEnd = tick.locationPx;
          } else {
            // All other ticks is centered.
            final halfHeight = adjustedHeight / 2;
            collides = previousEnd > tick.locationPx - halfHeight;
            previousEnd = tick.locationPx + halfHeight;
          }
        } else {
          collides = previousEnd > tick.locationPx;
          previousEnd = tick.locationPx + adjustedHeight;
        }
      } else {
        // Use the text direction the ticks specified, unless the label anchor
        // is set to [TickLabelAnchor.inside]. When 'inside' is set, the text
        // direction is normalized such that the left most tick is drawn ltr,
        // the last tick is drawn rtl, and all other ticks are in the center.
        // This is not set until it is painted, so collision check needs to get
        // the value also.
        final textDirection = _normalizeHorizontalAnchor(
            tickLabelAnchor,
            chartContext.isRtl,
            identical(tick, ticks.first),
            identical(tick, ticks.last));
        final adjustedWidth =
            tickSize.horizontalSliceWidth + minimumPaddingBetweenLabelsPx;
        switch (textDirection) {
          case TextDirection.ltr:
            collides = previousEnd > tick.locationPx;
            previousEnd = tick.locationPx + adjustedWidth;
            break;
          case TextDirection.rtl:
            collides = previousEnd > (tick.locationPx - adjustedWidth);
            previousEnd = tick.locationPx;
            break;
          case TextDirection.center:
            final halfWidth = adjustedWidth / 2;
            collides = previousEnd > tick.locationPx - halfWidth;
            previousEnd = tick.locationPx + halfWidth;

            break;
        }
      }

      if (collides) {
        return new CollisionReport(
            ticksCollide: true, ticks: ticks, alternateTicksUsed: false);
      }
    }

    return new CollisionReport(
        ticksCollide: false, ticks: ticks, alternateTicksUsed: false);
  }

  @override
  ViewMeasuredSizes measureVerticallyDrawnTicks(
      List<Tick<D>> ticks, int maxWidth, int maxHeight) {
    // TODO: Add spacing to account for the distance between the
    // text and the axis baseline (even if it isn't drawn).
    final maxHorizontalSliceWidth = ticks
        .fold(
            0.0,
            (double prevMax, tick) => max(
                prevMax,
                tick.textElement.measurement.horizontalSliceWidth +
                    labelOffsetFromAxisPx))
        .round();

    return new ViewMeasuredSizes(
        preferredWidth: maxHorizontalSliceWidth, preferredHeight: maxHeight);
  }

  @override
  ViewMeasuredSizes measureHorizontallyDrawnTicks(
      List<Tick<D>> ticks, int maxWidth, int maxHeight) {
    final maxVerticalSliceWidth = ticks
        .fold(
            0.0,
            (double prevMax, tick) =>
                max(prevMax, tick.textElement.measurement.verticalSliceWidth))
        .round();

    return new ViewMeasuredSizes(
        preferredWidth: maxWidth,
        preferredHeight: maxVerticalSliceWidth + labelOffsetFromAxisPx);
  }

  @override
  void drawAxisLine(ChartCanvas canvas, AxisOrientation orientation,
      Rectangle<int> axisBounds) {
    Point<num> start;
    Point<num> end;

    switch (orientation) {
      case AxisOrientation.top:
        start = axisBounds.bottomLeft;
        end = axisBounds.bottomRight;
        break;
      case AxisOrientation.bottom:
        start = axisBounds.topLeft;
        end = axisBounds.topRight;
        break;
      case AxisOrientation.right:
        start = axisBounds.topLeft;
        end = axisBounds.bottomLeft;
        break;
      case AxisOrientation.left:
        start = axisBounds.topRight;
        end = axisBounds.bottomRight;
        break;
    }

    canvas.drawLine(
      points: [start, end],
      fill: axisLineStyle.color,
      stroke: axisLineStyle.color,
      strokeWidthPx: axisLineStyle.strokeWidth.toDouble(),
      dashPattern: axisLineStyle.dashPattern,
    );
  }

  @protected
  void drawLabel(ChartCanvas canvas, Tick<D> tick,
      {@required AxisOrientation orientation,
      @required Rectangle<int> axisBounds,
      @required Rectangle<int> drawAreaBounds,
      @required bool isFirst,
      @required bool isLast}) {
    final locationPx = tick.locationPx;
    final measurement = tick.textElement.measurement;
    final isRtl = chartContext.isRtl;

    int x = 0;
    int y = 0;

    final labelOffsetPx = tick.labelOffsetPx ?? 0;

    if (orientation == AxisOrientation.bottom ||
        orientation == AxisOrientation.top) {
      y = orientation == AxisOrientation.bottom
          ? axisBounds.top + labelOffsetFromAxisPx
          : axisBounds.bottom -
              measurement.verticalSliceWidth.toInt() -
              labelOffsetFromAxisPx;

      final direction =
          _normalizeHorizontalAnchor(tickLabelAnchor, isRtl, isFirst, isLast);
      tick.textElement.textDirection = direction;

      switch (direction) {
        case TextDirection.rtl:
          x = (locationPx + labelOffsetFromTickPx + labelOffsetPx).toInt();
          break;
        case TextDirection.ltr:
          x = (locationPx - labelOffsetFromTickPx - labelOffsetPx).toInt();
          break;
        case TextDirection.center:
        default:
          x = (locationPx - labelOffsetPx).toInt();
          break;
      }
    } else {
      if (orientation == AxisOrientation.left) {
        if (tickLabelJustification == TickLabelJustification.inside) {
          x = axisBounds.right - labelOffsetFromAxisPx;
          tick.textElement.textDirection = TextDirection.rtl;
        } else {
          x = axisBounds.left + labelOffsetFromAxisPx;
          tick.textElement.textDirection = TextDirection.ltr;
        }
      } else {
        // orientation == right
        if (tickLabelJustification == TickLabelJustification.inside) {
          x = axisBounds.left + labelOffsetFromAxisPx;
          tick.textElement.textDirection = TextDirection.ltr;
        } else {
          x = axisBounds.right - labelOffsetFromAxisPx;
          tick.textElement.textDirection = TextDirection.rtl;
        }
      }

      switch (_normalizeVerticalAnchor(tickLabelAnchor, isFirst, isLast)) {
        case _PixelVerticalDirection.over:
          y = (locationPx -
                  measurement.verticalSliceWidth -
                  labelOffsetFromTickPx -
                  labelOffsetPx)
              .toInt();
          break;
        case _PixelVerticalDirection.under:
          y = (locationPx + labelOffsetFromTickPx + labelOffsetPx).toInt();
          break;
        case _PixelVerticalDirection.center:
        default:
          y = (locationPx - measurement.verticalSliceWidth / 2 + labelOffsetPx)
              .toInt();
          break;
      }
    }

    canvas.drawText(tick.textElement, x, y);
  }

  TextDirection _normalizeHorizontalAnchor(
      TickLabelAnchor anchor, bool isRtl, bool isFirst, bool isLast) {
    switch (anchor) {
      case TickLabelAnchor.before:
        return isRtl ? TextDirection.ltr : TextDirection.rtl;
      case TickLabelAnchor.after:
        return isRtl ? TextDirection.rtl : TextDirection.ltr;
      case TickLabelAnchor.inside:
        if (isFirst) {
          return TextDirection.ltr;
        }
        if (isLast) {
          return TextDirection.rtl;
        }
        return TextDirection.center;
      case TickLabelAnchor.centered:
      default:
        return TextDirection.center;
    }
  }

  _PixelVerticalDirection _normalizeVerticalAnchor(
      TickLabelAnchor anchor, bool isFirst, bool isLast) {
    switch (anchor) {
      case TickLabelAnchor.before:
        return _PixelVerticalDirection.under;
      case TickLabelAnchor.after:
        return _PixelVerticalDirection.over;
      case TickLabelAnchor.inside:
        if (isFirst) {
          return _PixelVerticalDirection.over;
        }
        if (isLast) {
          return _PixelVerticalDirection.under;
        }
        return _PixelVerticalDirection.center;
      case TickLabelAnchor.centered:
      default:
        return _PixelVerticalDirection.center;
    }
  }
}

enum _PixelVerticalDirection {
  over,
  center,
  under,
}
