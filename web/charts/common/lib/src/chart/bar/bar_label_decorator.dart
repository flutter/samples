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

import 'package:meta/meta.dart' show required;

import '../../common/color.dart' show Color;
import '../../common/graphics_factory.dart' show GraphicsFactory;
import '../../common/text_element.dart' show TextDirection;
import '../../common/text_style.dart' show TextStyle;
import '../../data/series.dart' show AccessorFn;
import '../cartesian/axis/spec/axis_spec.dart' show TextStyleSpec;
import '../common/chart_canvas.dart' show ChartCanvas;
import 'bar_renderer.dart' show ImmutableBarRendererElement;
import 'bar_renderer_decorator.dart' show BarRendererDecorator;

class BarLabelDecorator<D> extends BarRendererDecorator<D> {
  // Default configuration
  static const _defaultLabelPosition = BarLabelPosition.auto;
  static const _defaultLabelPadding = 5;
  static const _defaultLabelAnchor = BarLabelAnchor.start;
  static final _defaultInsideLabelStyle =
      new TextStyleSpec(fontSize: 12, color: Color.white);
  static final _defaultOutsideLabelStyle =
      new TextStyleSpec(fontSize: 12, color: Color.black);

  /// Configures [TextStyleSpec] for labels placed inside the bars.
  final TextStyleSpec insideLabelStyleSpec;

  /// Configures [TextStyleSpec] for labels placed outside the bars.
  final TextStyleSpec outsideLabelStyleSpec;

  /// Configures where to place the label relative to the bars.
  final BarLabelPosition labelPosition;

  /// For labels drawn inside the bar, configures label anchor position.
  final BarLabelAnchor labelAnchor;

  /// Space before and after the label text.
  final int labelPadding;

  BarLabelDecorator(
      {TextStyleSpec insideLabelStyleSpec,
      TextStyleSpec outsideLabelStyleSpec,
      this.labelPosition = _defaultLabelPosition,
      this.labelPadding = _defaultLabelPadding,
      this.labelAnchor = _defaultLabelAnchor})
      : insideLabelStyleSpec = insideLabelStyleSpec ?? _defaultInsideLabelStyle,
        outsideLabelStyleSpec =
            outsideLabelStyleSpec ?? _defaultOutsideLabelStyle;

  @override
  void decorate(Iterable<ImmutableBarRendererElement<D>> barElements,
      ChartCanvas canvas, GraphicsFactory graphicsFactory,
      {@required Rectangle drawBounds,
      @required double animationPercent,
      @required bool renderingVertically,
      bool rtl = false}) {
    // TODO: Decorator not yet available for vertical charts.
    assert(renderingVertically == false);

    // Only decorate the bars when animation is at 100%.
    if (animationPercent != 1.0) {
      return;
    }

    // Create [TextStyle] from [TextStyleSpec] to be used by all the elements.
    // The [GraphicsFactory] is needed so it can't be created earlier.
    final insideLabelStyle =
        _getTextStyle(graphicsFactory, insideLabelStyleSpec);
    final outsideLabelStyle =
        _getTextStyle(graphicsFactory, outsideLabelStyleSpec);

    for (var element in barElements) {
      final labelFn = element.series.labelAccessorFn;
      final datumIndex = element.index;
      final label = (labelFn != null) ? labelFn(datumIndex) : null;

      // If there are custom styles, use that instead of the default or the
      // style defined for the entire decorator.
      final datumInsideLabelStyle = _getDatumStyle(
          element.series.insideLabelStyleAccessorFn,
          datumIndex,
          graphicsFactory,
          defaultStyle: insideLabelStyle);
      final datumOutsideLabelStyle = _getDatumStyle(
          element.series.outsideLabelStyleAccessorFn,
          datumIndex,
          graphicsFactory,
          defaultStyle: outsideLabelStyle);

      // Skip calculation and drawing for this element if no label.
      if (label == null || label.isEmpty) {
        continue;
      }

      final bounds = element.bounds;

      // Get space available inside and outside the bar.
      final totalPadding = labelPadding * 2;
      final insideBarWidth = bounds.width - totalPadding;
      final outsideBarWidth = drawBounds.width - bounds.width - totalPadding;

      final labelElement = graphicsFactory.createTextElement(label);
      var calculatedLabelPosition = labelPosition;
      if (calculatedLabelPosition == BarLabelPosition.auto) {
        // For auto, first try to fit the text inside the bar.
        labelElement.textStyle = datumInsideLabelStyle;

        // A label fits if the space inside the bar is >= outside bar or if the
        // length of the text fits and the space. This is because if the bar has
        // more space than the outside, it makes more sense to place the label
        // inside the bar, even if the entire label does not fit.
        calculatedLabelPosition = (insideBarWidth >= outsideBarWidth ||
                labelElement.measurement.horizontalSliceWidth < insideBarWidth)
            ? BarLabelPosition.inside
            : BarLabelPosition.outside;
      }

      // Set the max width and text style.
      if (calculatedLabelPosition == BarLabelPosition.inside) {
        labelElement.textStyle = datumInsideLabelStyle;
        labelElement.maxWidth = insideBarWidth;
      } else {
        // calculatedLabelPosition == LabelPosition.outside
        labelElement.textStyle = datumOutsideLabelStyle;
        labelElement.maxWidth = outsideBarWidth;
      }

      // Only calculate and draw label if there's actually space for the label.
      if (labelElement.maxWidth > 0) {
        // Calculate the start position of label based on [labelAnchor].
        int labelX;
        if (calculatedLabelPosition == BarLabelPosition.inside) {
          switch (labelAnchor) {
            case BarLabelAnchor.middle:
              labelX = (bounds.left +
                      bounds.width / 2 -
                      labelElement.measurement.horizontalSliceWidth / 2)
                  .round();
              labelElement.textDirection =
                  rtl ? TextDirection.rtl : TextDirection.ltr;
              break;

            case BarLabelAnchor.end:
            case BarLabelAnchor.start:
              final alignLeft = rtl
                  ? (labelAnchor == BarLabelAnchor.end)
                  : (labelAnchor == BarLabelAnchor.start);

              if (alignLeft) {
                labelX = bounds.left + labelPadding;
                labelElement.textDirection = TextDirection.ltr;
              } else {
                labelX = bounds.right - labelPadding;
                labelElement.textDirection = TextDirection.rtl;
              }
              break;
          }
        } else {
          // calculatedLabelPosition == LabelPosition.outside
          labelX = bounds.right + labelPadding;
          labelElement.textDirection = TextDirection.ltr;
        }

        // Center the label inside the bar.
        final labelY = (bounds.top +
                (bounds.bottom - bounds.top) / 2 -
                labelElement.measurement.verticalSliceWidth / 2)
            .round();

        canvas.drawText(labelElement, labelX, labelY);
      }
    }
  }

  // Helper function that converts [TextStyleSpec] to [TextStyle].
  TextStyle _getTextStyle(
      GraphicsFactory graphicsFactory, TextStyleSpec labelSpec) {
    return graphicsFactory.createTextPaint()
      ..color = labelSpec?.color ?? Color.black
      ..fontFamily = labelSpec?.fontFamily
      ..fontSize = labelSpec?.fontSize ?? 12;
  }

  /// Helper function to get datum specific style
  TextStyle _getDatumStyle(AccessorFn<TextStyleSpec> labelFn, int datumIndex,
      GraphicsFactory graphicsFactory,
      {TextStyle defaultStyle}) {
    final styleSpec = (labelFn != null) ? labelFn(datumIndex) : null;
    return (styleSpec != null)
        ? _getTextStyle(graphicsFactory, styleSpec)
        : defaultStyle;
  }
}

/// Configures where to place the label relative to the bars.
enum BarLabelPosition {
  /// Automatically try to place the label inside the bar first and place it on
  /// the outside of the space available outside the bar is greater than space
  /// available inside the bar.
  auto,

  /// Always place label on the outside.
  outside,

  /// Always place label on the inside.
  inside,
}

/// Configures where to anchor the label for labels drawn inside the bars.
enum BarLabelAnchor {
  /// Anchor to the measure start.
  start,

  /// Anchor to the middle of the measure range.
  middle,

  /// Anchor to the measure end.
  end,
}
