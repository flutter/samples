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

import 'package:charts_common/common.dart' as common;
import 'package:charts_flutter/src/util/color.dart';
import 'package:flutter_web/widgets.dart';
import 'package:flutter_web/material.dart'
    show GestureDetector, GestureTapUpCallback, TapUpDetails, Theme;

import '../../symbol_renderer.dart';
import 'legend.dart' show TappableLegend;

/// Strategy for building one widget from one [common.LegendEntry].
abstract class LegendEntryLayout {
  Widget build(BuildContext context, common.LegendEntry legendEntry,
      TappableLegend legend, bool isHidden,
      {bool showMeasures});
}

/// Builds one legend entry as a row with symbol and label from the series.
///
/// If directionality from the chart context indicates RTL, the symbol is placed
/// to the right of the text instead of the left of the text.
class SimpleLegendEntryLayout implements LegendEntryLayout {
  const SimpleLegendEntryLayout();

  Widget createSymbol(BuildContext context, common.LegendEntry legendEntry,
      TappableLegend legend, bool isHidden) {
    // TODO: Consider allowing scaling the size for the symbol.
    // A custom symbol renderer can ignore this size and use their own.
    final materialSymbolSize = new Size(12.0, 12.0);

    final entryColor = legendEntry.color;
    var color = ColorUtil.toDartColor(entryColor);

    // Get the SymbolRendererBuilder wrapping a common.SymbolRenderer if needed.
    final SymbolRendererBuilder symbolRendererBuilder =
        legendEntry.symbolRenderer is SymbolRendererBuilder
            ? legendEntry.symbolRenderer
            : new SymbolRendererCanvas(legendEntry.symbolRenderer);

    return new GestureDetector(
        child: symbolRendererBuilder.build(
          context,
          size: materialSymbolSize,
          color: color,
          enabled: !isHidden,
        ),
        onTapUp: makeTapUpCallback(context, legendEntry, legend));
  }

  Widget createLabel(BuildContext context, common.LegendEntry legendEntry,
      TappableLegend legend, bool isHidden) {
    TextStyle style =
        _convertTextStyle(isHidden, context, legendEntry.textStyle);

    return new GestureDetector(
        child: new Text(legendEntry.label, style: style),
        onTapUp: makeTapUpCallback(context, legendEntry, legend));
  }

  Widget createMeasureValue(BuildContext context,
      common.LegendEntry legendEntry, TappableLegend legend, bool isHidden) {
    return new GestureDetector(
        child: new Text(legendEntry.formattedValue),
        onTapUp: makeTapUpCallback(context, legendEntry, legend));
  }

  @override
  Widget build(BuildContext context, common.LegendEntry legendEntry,
      TappableLegend legend, bool isHidden,
      {bool showMeasures}) {
    final rowChildren = <Widget>[];

    // TODO: Allow setting to configure the padding.
    final padding = new EdgeInsets.only(right: 8.0); // Material default.
    final symbol = createSymbol(context, legendEntry, legend, isHidden);
    final label = createLabel(context, legendEntry, legend, isHidden);

    final measure = showMeasures
        ? createMeasureValue(context, legendEntry, legend, isHidden)
        : null;

    rowChildren.add(symbol);
    rowChildren.add(new Container(padding: padding));
    rowChildren.add(label);
    if (measure != null) {
      rowChildren.add(new Container(padding: padding));
      rowChildren.add(measure);
    }

    // Row automatically reverses the content if Directionality is rtl.
    return new Row(children: rowChildren);
  }

  GestureTapUpCallback makeTapUpCallback(BuildContext context,
      common.LegendEntry legendEntry, TappableLegend legend) {
    return (TapUpDetails d) {
      legend.onLegendEntryTapUp(legendEntry);
    };
  }

  bool operator ==(Object other) => other is SimpleLegendEntryLayout;

  int get hashCode {
    return this.runtimeType.hashCode;
  }

  /// Convert the charts common TextStlyeSpec into a standard TextStyle, while
  /// reducing the color opacity to 26% if the entry is hidden.
  ///
  /// For non-specified values, override the hidden text color to use the body 1
  /// theme, but allow other properties of [Text] to be inherited.
  TextStyle _convertTextStyle(
      bool isHidden, BuildContext context, common.TextStyleSpec textStyle) {
    Color color = textStyle?.color != null
        ? ColorUtil.toDartColor(textStyle.color)
        : null;
    if (isHidden) {
      // Use a default color for hidden legend entries if none is provided.
      color ??= Theme.of(context).textTheme.body1.color;
      color = color.withOpacity(0.26);
    }

    return new TextStyle(
        inherit: true,
        fontFamily: textStyle?.fontFamily,
        fontSize:
            textStyle?.fontSize != null ? textStyle.fontSize.toDouble() : null,
        color: color);
  }
}
