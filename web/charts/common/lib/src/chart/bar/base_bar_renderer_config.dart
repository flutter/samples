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

import 'package:collection/collection.dart' show ListEquality;

import '../../common/symbol_renderer.dart'
    show SymbolRenderer, RoundedRectSymbolRenderer;
import '../common/chart_canvas.dart' show FillPatternType;
import '../common/series_renderer_config.dart'
    show RendererAttributes, SeriesRendererConfig;
import '../layout/layout_view.dart' show LayoutViewConfig;

/// Shared configuration for bar chart renderers.
///
/// Bar renderers support 4 different modes of rendering multiple series on the
/// chart, configured by the grouped and stacked flags.
/// * grouped - Render bars for each series that shares a domain value
///   side-by-side.
/// * stacked - Render bars for each series that shares a domain value in a
///   stack, ordered in the same order as the series list.
/// * grouped-stacked: Render bars for each series that shares a domain value in
///   a group of bar stacks. Each stack will contain all the series that share a
///   series category.
/// * floating style - When grouped and stacked are both false, all bars that
///   share a domain value will be rendered in the same domain space. Each datum
///   should be configured with a measure offset to position its bar along the
///   measure axis. Bars will freely overlap if their measure values and measure
///   offsets overlap. Note that bars for each series will be rendered in order,
///   such that bars from the last series will be "on top" of bars from previous
///   series.
abstract class BaseBarRendererConfig<D> extends LayoutViewConfig
    implements SeriesRendererConfig<D> {
  final String customRendererId;

  final SymbolRenderer symbolRenderer;

  /// Dash pattern for the stroke line around the edges of the bar.
  final List<int> dashPattern;

  /// Defines the way multiple series of bars are rendered per domain.
  final BarGroupingType groupingType;

  /// The order to paint this renderer on the canvas.
  final int layoutPaintOrder;

  final int minBarLengthPx;

  final FillPatternType fillPattern;

  final double stackHorizontalSeparator;

  /// Stroke width of the target line.
  final double strokeWidthPx;

  /// Sets the series weight pattern. This is a pattern of weights used to
  /// calculate the width of bars within a bar group. If not specified, each bar
  /// in the group will have an equal width.
  ///
  /// The pattern will not repeat. If more series are assigned to the renderer
  /// than there are segments in the weight pattern, an error will be thrown.
  ///
  /// e.g. For the pattern [2, 1], the first bar in a group should be rendered
  /// twice as wide as the second bar.
  ///
  /// If the expected bar width of the chart is 12px, then the first bar will
  /// render at 16px and the second will render at 8px. The default weight
  /// pattern of null means that all bars should be the same width, or 12px in
  /// this case.
  ///
  /// Not used for stacked bars.
  final List<int> weightPattern;

  final rendererAttributes = new RendererAttributes();

  BaseBarRendererConfig(
      {this.customRendererId,
      this.dashPattern,
      this.groupingType = BarGroupingType.grouped,
      this.layoutPaintOrder,
      this.minBarLengthPx = 0,
      this.fillPattern,
      this.stackHorizontalSeparator,
      this.strokeWidthPx = 0.0,
      SymbolRenderer symbolRenderer,
      this.weightPattern})
      : this.symbolRenderer = symbolRenderer ?? new RoundedRectSymbolRenderer();

  /// Whether or not the bars should be organized into groups.
  bool get grouped =>
      groupingType == BarGroupingType.grouped ||
      groupingType == BarGroupingType.groupedStacked;

  /// Whether or not the bars should be organized into stacks.
  bool get stacked =>
      groupingType == BarGroupingType.stacked ||
      groupingType == BarGroupingType.groupedStacked;

  @override
  bool operator ==(other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is BaseBarRendererConfig)) {
      return false;
    }
    return other.customRendererId == customRendererId &&
        other.dashPattern == dashPattern &&
        other.fillPattern == fillPattern &&
        other.groupingType == groupingType &&
        other.minBarLengthPx == minBarLengthPx &&
        other.stackHorizontalSeparator == stackHorizontalSeparator &&
        other.strokeWidthPx == strokeWidthPx &&
        other.symbolRenderer == symbolRenderer &&
        new ListEquality().equals(other.weightPattern, weightPattern);
  }

  int get hashcode {
    var hash = 1;
    hash = hash * 31 + (customRendererId?.hashCode ?? 0);
    hash = hash * 31 + (dashPattern?.hashCode ?? 0);
    hash = hash * 31 + (fillPattern?.hashCode ?? 0);
    hash = hash * 31 + (groupingType?.hashCode ?? 0);
    hash = hash * 31 + (minBarLengthPx?.hashCode ?? 0);
    hash = hash * 31 + (stackHorizontalSeparator?.hashCode ?? 0);
    hash = hash * 31 + (strokeWidthPx?.hashCode ?? 0);
    hash = hash * 31 + (symbolRenderer?.hashCode ?? 0);
    hash = hash * 31 + (weightPattern?.hashCode ?? 0);
    return hash;
  }
}

/// Defines the way multiple series of bars are renderered per domain.
///
/// * [grouped] - Render bars for each series that shares a domain value
///   side-by-side.
/// * [stacked] - Render bars for each series that shares a domain value in a
///   stack, ordered in the same order as the series list.
/// * [groupedStacked]: Render bars for each series that shares a domain value
///   in a group of bar stacks. Each stack will contain all the series that
///   share a series category.
enum BarGroupingType { grouped, groupedStacked, stacked }
