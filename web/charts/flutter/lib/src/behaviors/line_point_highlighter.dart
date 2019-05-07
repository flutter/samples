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
import 'package:charts_common/common.dart' as common
    show
        LinePointHighlighter,
        LinePointHighlighterFollowLineType,
        SelectionModelType,
        SymbolRenderer;
import 'package:flutter_web/widgets.dart' show hashValues;
import 'package:meta/meta.dart' show immutable;

import 'chart_behavior.dart' show ChartBehavior, GestureType;

/// Chart behavior that monitors the specified [SelectionModel] and darkens the
/// color for selected data.
///
/// This is typically used for bars and pies to highlight segments.
///
/// It is used in combination with SelectNearest to update the selection model
/// and expand selection out to the domain value.
@immutable
class LinePointHighlighter extends ChartBehavior<common.LinePointHighlighter> {
  final desiredGestures = new Set<GestureType>();

  final common.SelectionModelType selectionModelType;

  /// Default radius of the dots if the series has no radius mapping function.
  ///
  /// When no radius mapping function is provided, this value will be used as
  /// is. [radiusPaddingPx] will not be added to [defaultRadiusPx].
  final double defaultRadiusPx;

  /// Additional radius value added to the radius of the selected data.
  ///
  /// This value is only used when the series has a radius mapping function
  /// defined.
  final double radiusPaddingPx;

  final common.LinePointHighlighterFollowLineType showHorizontalFollowLine;

  final common.LinePointHighlighterFollowLineType showVerticalFollowLine;

  /// The dash pattern to be used for drawing the line.
  ///
  /// To disable dash pattern (to draw a solid line), pass in an empty list.
  /// This is because if dashPattern is null or not set, it defaults to [1,3].
  final List<int> dashPattern;

  /// Whether or not follow lines should be drawn across the entire chart draw
  /// area, or just from the axis to the point.
  ///
  /// When disabled, measure follow lines will be drawn from the primary measure
  /// axis to the point. In RTL mode, this means from the right-hand axis. In
  /// LTR mode, from the left-hand axis.
  final bool drawFollowLinesAcrossChart;

  /// Renderer used to draw the highlighted points.
  final common.SymbolRenderer symbolRenderer;

  LinePointHighlighter(
      {this.selectionModelType,
      this.defaultRadiusPx,
      this.radiusPaddingPx,
      this.showHorizontalFollowLine,
      this.showVerticalFollowLine,
      this.dashPattern,
      this.drawFollowLinesAcrossChart,
      this.symbolRenderer});

  @override
  common.LinePointHighlighter<D> createCommonBehavior<D>() =>
      new common.LinePointHighlighter<D>(
        selectionModelType: selectionModelType,
        defaultRadiusPx: defaultRadiusPx,
        radiusPaddingPx: radiusPaddingPx,
        showHorizontalFollowLine: showHorizontalFollowLine,
        showVerticalFollowLine: showVerticalFollowLine,
        dashPattern: dashPattern,
        drawFollowLinesAcrossChart: drawFollowLinesAcrossChart,
        symbolRenderer: symbolRenderer,
      );

  @override
  void updateCommonBehavior(common.LinePointHighlighter commonBehavior) {}

  @override
  String get role => 'LinePointHighlighter-${selectionModelType.toString()}';

  @override
  bool operator ==(Object o) {
    return o is LinePointHighlighter &&
        defaultRadiusPx == o.defaultRadiusPx &&
        radiusPaddingPx == o.radiusPaddingPx &&
        showHorizontalFollowLine == o.showHorizontalFollowLine &&
        showVerticalFollowLine == o.showVerticalFollowLine &&
        selectionModelType == o.selectionModelType &&
        new ListEquality().equals(dashPattern, o.dashPattern) &&
        drawFollowLinesAcrossChart == o.drawFollowLinesAcrossChart;
  }

  @override
  int get hashCode {
    return hashValues(
      selectionModelType,
      defaultRadiusPx,
      radiusPaddingPx,
      showHorizontalFollowLine,
      showVerticalFollowLine,
      dashPattern,
      drawFollowLinesAcrossChart,
    );
  }
}
