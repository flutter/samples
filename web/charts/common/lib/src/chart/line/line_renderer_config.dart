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

import '../../common/symbol_renderer.dart';
import '../common/series_renderer_config.dart'
    show RendererAttributes, SeriesRendererConfig;
import '../layout/layout_view.dart' show LayoutViewConfig, LayoutViewPaintOrder;
import 'line_renderer.dart' show LineRenderer;

/// Configuration for a line renderer.
class LineRendererConfig<D> extends LayoutViewConfig
    implements SeriesRendererConfig<D> {
  final String customRendererId;

  final SymbolRenderer symbolRenderer;

  final rendererAttributes = RendererAttributes();

  /// Radius of points on the line, if [includePoints] is enabled.
  final double radiusPx;

  /// Whether or not series should be rendered in a stack.
  ///
  /// This is typically enabled when including area skirts.
  final bool stacked;

  /// Stroke width of the line.
  final double strokeWidthPx;

  /// Dash pattern for the line.
  final List<int> dashPattern;

  /// Configures whether a line representing the data will be drawn.
  final bool includeLine;

  /// Configures whether points representing the data will be drawn.
  final bool includePoints;

  /// Configures whether an area skirt representing the data will be drawn.
  ///
  /// An area skirt will be drawn from the line for each series, down to the
  /// domain axis. It will be layered underneath the primary line on the chart.
  ///
  /// The area skirt color will be a semi-transparent version of the series
  /// color, using [areaOpacity] as the opacity.
  ///
  /// When stacking is enabled, the bottom of each area skirt will instead be
  /// the previous line in the stack. The bottom area will be drawn down to the
  /// domain axis.
  final bool includeArea;

  /// The order to paint this renderer on the canvas.
  final int layoutPaintOrder;

  /// Configures the opacity of the area skirt on the chart.
  final double areaOpacity;

  /// Whether lines should have round end caps, or square if false.
  final bool roundEndCaps;

  LineRendererConfig(
      {this.customRendererId,
      this.radiusPx = 3.5,
      this.stacked = false,
      this.strokeWidthPx = 2.0,
      this.dashPattern,
      this.includeLine = true,
      this.includePoints = false,
      this.includeArea = false,
      this.layoutPaintOrder = LayoutViewPaintOrder.line,
      this.areaOpacity = 0.1,
      this.roundEndCaps = false,
      SymbolRenderer symbolRenderer})
      : this.symbolRenderer = symbolRenderer ?? LineSymbolRenderer();

  @override
  LineRenderer<D> build() {
    return LineRenderer<D>(config: this, rendererId: customRendererId);
  }
}
