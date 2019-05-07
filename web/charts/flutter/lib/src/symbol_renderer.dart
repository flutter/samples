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
import 'package:charts_common/common.dart' as common
    show ChartCanvas, Color, SymbolRenderer;
import 'package:flutter_web/widgets.dart';
import 'chart_canvas.dart' show ChartCanvas;
import 'graphics_factory.dart' show GraphicsFactory;

/// Flutter widget responsible for painting a common SymbolRenderer from the
/// chart.
///
/// If you want to customize the symbol, then use [CustomSymbolRenderer].
class SymbolRendererCanvas implements SymbolRendererBuilder {
  final common.SymbolRenderer commonSymbolRenderer;

  SymbolRendererCanvas(this.commonSymbolRenderer);

  @override
  Widget build(BuildContext context,
      {Color color, Size size, bool enabled = true}) {
    if (!enabled) {
      color = color.withOpacity(0.26);
    }

    return new SizedBox.fromSize(
        size: size,
        child: new CustomPaint(
            painter:
                new _SymbolCustomPaint(context, commonSymbolRenderer, color)));
  }
}

/// Convenience class allowing you to pass your Widget builder through the
/// common chart so that it is created for you by the Legend.
///
/// This allows a custom SymbolRenderer in Flutter without having to create
/// a completely custom legend.
abstract class CustomSymbolRenderer extends common.SymbolRenderer
    implements SymbolRendererBuilder {
  /// Must override this method to build the custom Widget with the given color
  /// as
  @override
  Widget build(BuildContext context, {Color color, Size size, bool enabled});

  @override
  void paint(common.ChartCanvas canvas, Rectangle<num> bounds,
      {List<int> dashPattern,
      common.Color fillColor,
      common.Color strokeColor,
      double strokeWidthPx}) {
    // Intentionally ignored (never called).
  }

  @override
  bool shouldRepaint(common.SymbolRenderer oldRenderer) {
    return false; // Repainting is handled directly in Flutter.
  }
}

/// Common interface for [CustomSymbolRenderer] & [SymbolRendererCanvas] for
/// convenience for [LegendEntryLayout].
abstract class SymbolRendererBuilder {
  Widget build(BuildContext context, {Color color, Size size, bool enabled});
}

/// The Widget which fulfills the guts of [SymbolRendererCanvas] actually
/// painting the symbol to a canvas using [CustomPainter].
class _SymbolCustomPaint extends CustomPainter {
  final BuildContext context;
  final common.SymbolRenderer symbolRenderer;
  final Color color;

  _SymbolCustomPaint(this.context, this.symbolRenderer, this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final bounds =
        new Rectangle<num>(0, 0, size.width.toInt(), size.height.toInt());
    final commonColor = new common.Color(
        r: color.red, g: color.green, b: color.blue, a: color.alpha);
    symbolRenderer.paint(
        new ChartCanvas(canvas, GraphicsFactory(context)), bounds,
        fillColor: commonColor, strokeColor: commonColor);
  }

  @override
  bool shouldRepaint(_SymbolCustomPaint oldDelegate) {
    return symbolRenderer.shouldRepaint(oldDelegate.symbolRenderer);
  }
}
