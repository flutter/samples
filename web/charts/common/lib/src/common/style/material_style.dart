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

import '../../chart/cartesian/axis/spec/axis_spec.dart' show LineStyleSpec;
import '../color.dart' show Color;
import '../graphics_factory.dart' show GraphicsFactory;
import '../line_style.dart' show LineStyle;
import '../material_palette.dart' show MaterialPalette;
import '../palette.dart' show Palette;
import 'style.dart' show Style;

class MaterialStyle implements Style {
  const MaterialStyle();

  @override
  Color get black => MaterialPalette.black;

  @override
  Color get transparent => MaterialPalette.transparent;

  @override
  Color get white => MaterialPalette.white;

  @override
  List<Palette> getOrderedPalettes(int count) =>
      MaterialPalette.getOrderedPalettes(count);

  @override
  LineStyle createAxisLineStyle(
      GraphicsFactory graphicsFactory, LineStyleSpec spec) {
    return graphicsFactory.createLinePaint()
      ..color = spec?.color ?? MaterialPalette.gray.shadeDefault
      ..dashPattern = spec?.dashPattern
      ..strokeWidth = spec?.thickness ?? 1;
  }

  @override
  LineStyle createTickLineStyle(
      GraphicsFactory graphicsFactory, LineStyleSpec spec) {
    return graphicsFactory.createLinePaint()
      ..color = spec?.color ?? MaterialPalette.gray.shadeDefault
      ..dashPattern = spec?.dashPattern
      ..strokeWidth = spec?.thickness ?? 1;
  }

  @override
  int get tickLength => 3;

  @override
  Color get tickColor => MaterialPalette.gray.shade800;

  @override
  LineStyle createGridlineStyle(
      GraphicsFactory graphicsFactory, LineStyleSpec spec) {
    return graphicsFactory.createLinePaint()
      ..color = spec?.color ?? MaterialPalette.gray.shade300
      ..dashPattern = spec?.dashPattern
      ..strokeWidth = spec?.thickness ?? 1;
  }

  @override
  Color get arcLabelOutsideLeaderLine => MaterialPalette.gray.shade600;

  @override
  Color get legendEntryTextColor => MaterialPalette.gray.shade800;

  @override
  Color get legendTitleTextColor => MaterialPalette.gray.shade800;

  @override
  Color get linePointHighlighterColor => MaterialPalette.gray.shade600;

  @override
  Color get noDataColor => MaterialPalette.gray.shade200;

  @override
  Color get rangeAnnotationColor => MaterialPalette.gray.shade100;

  @override
  Color get sliderFillColor => MaterialPalette.white;

  @override
  Color get sliderStrokeColor => MaterialPalette.gray.shade600;

  @override
  Color get chartBackgroundColor => MaterialPalette.white;
}
