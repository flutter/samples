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

import 'dart:math' show pi;

import '../../common/color.dart' show Color;
import '../../common/style/style_factory.dart' show StyleFactory;
import '../../common/symbol_renderer.dart';
import '../common/series_renderer_config.dart'
    show RendererAttributes, SeriesRendererConfig;
import '../layout/layout_view.dart' show LayoutViewConfig, LayoutViewPaintOrder;
import 'arc_renderer.dart' show ArcRenderer;
import 'arc_renderer_decorator.dart' show ArcRendererDecorator;

/// Configuration for an [ArcRenderer].
class ArcRendererConfig<D> extends LayoutViewConfig
    implements SeriesRendererConfig<D> {
  final String customRendererId;

  /// List of decorators applied to rendered arcs.
  final List<ArcRendererDecorator> arcRendererDecorators;

  final SymbolRenderer symbolRenderer;

  final rendererAttributes = new RendererAttributes();

  /// Total arc length, in radians.
  ///
  /// The default arcLength is 2π.
  final double arcLength;

  /// If set, configures the arcWidth to be a percentage of the radius.
  final double arcRatio;

  /// Fixed width of the arc within the radius.
  ///
  /// If arcRatio is set, this value will be ignored.
  final int arcWidth;

  /// The order to paint this renderer on the canvas.
  final int layoutPaintOrder;

  /// Minimum radius in pixels of the hole in a donut chart for center content
  /// to appear.
  final int minHoleWidthForCenterContent;

  /// Start angle for pie slices, in radians.
  ///
  /// Angles are defined from the positive x axis in Cartesian space. The
  /// default startAngle is -π/2.
  final double startAngle;

  /// Stroke width of the border of the arcs.
  final double strokeWidthPx;

  /// Stroke color of the border of the arcs.
  final Color stroke;

  /// Color of the "no data" state for the chart, used when an empty series is
  /// drawn.
  final Color noDataColor;

  ArcRendererConfig(
      {this.customRendererId,
      this.arcLength = 2 * pi,
      this.arcRendererDecorators = const [],
      this.arcRatio,
      this.arcWidth,
      this.layoutPaintOrder = LayoutViewPaintOrder.arc,
      this.minHoleWidthForCenterContent = 30,
      this.startAngle = -pi / 2,
      this.strokeWidthPx = 2.0,
      SymbolRenderer symbolRenderer})
      : this.noDataColor = StyleFactory.style.noDataColor,
        this.stroke = StyleFactory.style.white,
        this.symbolRenderer = symbolRenderer ?? new CircleSymbolRenderer();

  @override
  ArcRenderer<D> build() {
    return new ArcRenderer<D>(config: this, rendererId: customRendererId);
  }
}
