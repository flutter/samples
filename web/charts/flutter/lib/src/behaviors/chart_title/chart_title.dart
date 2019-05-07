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

import 'package:charts_common/common.dart' as common
    show
        BehaviorPosition,
        ChartTitle,
        ChartTitleDirection,
        MaxWidthStrategy,
        OutsideJustification,
        TextStyleSpec;
import 'package:flutter_web/widgets.dart' show hashValues;
import 'package:meta/meta.dart' show immutable;

import '../chart_behavior.dart' show ChartBehavior, GestureType;

/// Chart behavior that adds a ChartTitle widget to a chart.
@immutable
class ChartTitle extends ChartBehavior<common.ChartTitle> {
  final desiredGestures = new Set<GestureType>();

  final common.BehaviorPosition behaviorPosition;

  /// Minimum size of the legend component. Optional.
  ///
  /// If the legend is positioned in the top or bottom margin, then this
  /// configures the legend's height. If positioned in the start or end
  /// position, this configures the legend's width.
  final int layoutMinSize;

  /// Preferred size of the legend component. Defaults to 0.
  ///
  /// If the legend is positioned in the top or bottom margin, then this
  /// configures the legend's height. If positioned in the start or end
  /// position, this configures the legend's width.
  final int layoutPreferredSize;

  /// Strategy for handling title text that is too large to fit. Defaults to
  /// truncating the text with ellipses.
  final common.MaxWidthStrategy maxWidthStrategy;

  /// Primary text for the title.
  final String title;

  /// Direction of the chart title text.
  ///
  /// This defaults to horizontal for a title in the top or bottom
  /// [behaviorPosition], or vertical for start or end [behaviorPosition].
  final common.ChartTitleDirection titleDirection;

  /// Justification of the title text if it is positioned outside of the draw
  /// area.
  final common.OutsideJustification titleOutsideJustification;

  /// Space between the title and sub-title text, if defined.
  ///
  /// This padding is not used if no sub-title is provided.
  final int titlePadding;

  /// Style of the [title] text.
  final common.TextStyleSpec titleStyleSpec;

  /// Secondary text for the sub-title.
  ///
  /// [subTitle] is rendered on a second line below the [title], and may be
  /// styled differently.
  final String subTitle;

  /// Style of the [subTitle] text.
  final common.TextStyleSpec subTitleStyleSpec;

  /// Space between the "inside" of the chart, and the title behavior itself.
  ///
  /// This padding is applied to all the edge of the title that is in the
  /// direction of the draw area. For a top positioned title, this is applied
  /// to the bottom edge. [outerPadding] is applied to the top, left, and right
  /// edges.
  ///
  /// If a sub-title is defined, this is the space between the sub-title text
  /// and the inside of the chart. Otherwise, it is the space between the title
  /// text and the inside of chart.
  final int innerPadding;

  /// Space between the "outside" of the chart, and the title behavior itself.
  ///
  /// This padding is applied to all 3 edges of the title that are not in the
  /// direction of the draw area. For a top positioned title, this is applied
  /// to the top, left, and right edges. [innerPadding] is applied to the
  /// bottom edge.
  final int outerPadding;

  /// Constructs a [ChartTitle].
  ///
  /// [title] primary text for the title.
  ///
  /// [behaviorPosition] layout position for the title. Defaults to the top of
  /// the chart.
  ///
  /// [innerPadding] space between the "inside" of the chart, and the title
  /// behavior itself.
  ///
  /// [maxWidthStrategy] strategy for handling title text that is too large to
  /// fit. Defaults to  truncating the text with ellipses.
  ///
  /// [titleDirection] direction of the chart title text.
  ///
  /// [titleOutsideJustification] Justification of the title text if it is
  /// positioned outside of the draw. Defaults to the middle of the margin area.
  ///
  /// [titlePadding] space between the title and sub-title text, if defined.
  ///
  /// [titleStyleSpec] style of the [title] text.
  ///
  /// [subTitle] secondary text for the sub-title. Optional.
  ///
  /// [subTitleStyleSpec] style of the [subTitle] text.
  ChartTitle(this.title,
      {this.behaviorPosition,
      this.innerPadding,
      this.layoutMinSize,
      this.layoutPreferredSize,
      this.outerPadding,
      this.maxWidthStrategy,
      this.titleDirection,
      this.titleOutsideJustification,
      this.titlePadding,
      this.titleStyleSpec,
      this.subTitle,
      this.subTitleStyleSpec});

  @override
  common.ChartTitle<D> createCommonBehavior<D>() =>
      new common.ChartTitle<D>(title,
          behaviorPosition: behaviorPosition,
          innerPadding: innerPadding,
          layoutMinSize: layoutMinSize,
          layoutPreferredSize: layoutPreferredSize,
          outerPadding: outerPadding,
          maxWidthStrategy: maxWidthStrategy,
          titleDirection: titleDirection,
          titleOutsideJustification: titleOutsideJustification,
          titlePadding: titlePadding,
          titleStyleSpec: titleStyleSpec,
          subTitle: subTitle,
          subTitleStyleSpec: subTitleStyleSpec);

  @override
  void updateCommonBehavior(common.ChartTitle commonBehavior) {}

  @override
  String get role => 'ChartTitle-${behaviorPosition.toString()}';

  @override
  bool operator ==(Object o) {
    return o is ChartTitle &&
        behaviorPosition == o.behaviorPosition &&
        layoutMinSize == o.layoutMinSize &&
        layoutPreferredSize == o.layoutPreferredSize &&
        maxWidthStrategy == o.maxWidthStrategy &&
        title == o.title &&
        titleDirection == o.titleDirection &&
        titleOutsideJustification == o.titleOutsideJustification &&
        titleStyleSpec == o.titleStyleSpec &&
        subTitle == o.subTitle &&
        subTitleStyleSpec == o.subTitleStyleSpec &&
        innerPadding == o.innerPadding &&
        titlePadding == o.titlePadding &&
        outerPadding == o.outerPadding;
  }

  @override
  int get hashCode {
    return hashValues(
        behaviorPosition,
        layoutMinSize,
        layoutPreferredSize,
        maxWidthStrategy,
        title,
        titleDirection,
        titleOutsideJustification,
        titleStyleSpec,
        subTitle,
        subTitleStyleSpec,
        innerPadding,
        titlePadding,
        outerPadding);
  }
}
