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

import '../../common/color.dart' show Color;
import '../../common/style/style_factory.dart' show StyleFactory;
import '../../common/symbol_renderer.dart';
import '../common/chart_canvas.dart' show FillPatternType;
import '../layout/layout_view.dart' show LayoutViewPaintOrder;
import 'bar_label_decorator.dart' show BarLabelDecorator;
import 'bar_lane_renderer.dart' show BarLaneRenderer;
import 'bar_renderer_config.dart' show BarRendererConfig, CornerStrategy;
import 'bar_renderer_decorator.dart' show BarRendererDecorator;
import 'base_bar_renderer_config.dart' show BarGroupingType;

/// Configuration for a bar lane renderer.
class BarLaneRendererConfig extends BarRendererConfig<String> {
  /// The color of background bars.
  final Color backgroundBarColor;

  /// Label text to draw on a merged empty lane.
  ///
  /// This will only be drawn if all of the measures for a domain are null, and
  /// [mergeEmptyLanes] is enabled.
  ///
  /// The renderer must be configured with a [BarLabelDecorator] for this label
  /// to be drawn.
  final String emptyLaneLabel;

  /// Whether or not all lanes for a given domain value should be merged into
  /// one wide lane if all measure values for said domain are null.
  final bool mergeEmptyLanes;

  BarLaneRendererConfig({
    String customRendererId,
    CornerStrategy cornerStrategy,
    this.emptyLaneLabel = 'No data',
    FillPatternType fillPattern,
    BarGroupingType groupingType,
    int layoutPaintOrder = LayoutViewPaintOrder.bar,
    this.mergeEmptyLanes = false,
    int minBarLengthPx = 0,
    double stackHorizontalSeparator,
    double strokeWidthPx = 0.0,
    BarRendererDecorator barRendererDecorator,
    SymbolRenderer symbolRenderer,
    Color backgroundBarColor,
    List<int> weightPattern,
  })  : backgroundBarColor =
            backgroundBarColor ?? StyleFactory.style.noDataColor,
        super(
          barRendererDecorator: barRendererDecorator,
          cornerStrategy: cornerStrategy,
          customRendererId: customRendererId,
          groupingType: groupingType ?? BarGroupingType.grouped,
          layoutPaintOrder: layoutPaintOrder,
          minBarLengthPx: minBarLengthPx,
          fillPattern: fillPattern,
          stackHorizontalSeparator: stackHorizontalSeparator,
          strokeWidthPx: strokeWidthPx,
          symbolRenderer: symbolRenderer,
          weightPattern: weightPattern,
        );

  @override
  BarLaneRenderer<String> build() {
    return new BarLaneRenderer<String>(
        config: this, rendererId: customRendererId);
  }

  @override
  bool operator ==(other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is BarLaneRendererConfig)) {
      return false;
    }
    return other.backgroundBarColor == backgroundBarColor &&
        other.emptyLaneLabel == emptyLaneLabel &&
        other.mergeEmptyLanes == mergeEmptyLanes &&
        super == (other);
  }

  @override
  int get hashCode {
    var hash = super.hashCode;
    hash = hash * 31 + (backgroundBarColor?.hashCode ?? 0);
    hash = hash * 31 + (emptyLaneLabel?.hashCode ?? 0);
    hash = hash * 31 + (mergeEmptyLanes?.hashCode ?? 0);
    return hash;
  }
}
