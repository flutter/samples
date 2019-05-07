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
    show GraphicsFactory, LineStyle, TextElement, TextStyle;
import 'package:flutter_web/widgets.dart' show BuildContext, MediaQuery;
import 'line_style.dart' show LineStyle;
import 'text_element.dart' show TextElement;
import 'text_style.dart' show TextStyle;

class GraphicsFactory implements common.GraphicsFactory {
  final double textScaleFactor;

  GraphicsFactory(BuildContext context,
      {GraphicsFactoryHelper helper = const GraphicsFactoryHelper()})
      : textScaleFactor = helper.getTextScaleFactorOf(context);

  /// Returns a [TextStyle] object.
  @override
  common.TextStyle createTextPaint() => new TextStyle();

  /// Returns a text element from [text] and [style].
  @override
  common.TextElement createTextElement(String text) {
    return new TextElement(text, textScaleFactor: textScaleFactor);
  }

  @override
  common.LineStyle createLinePaint() => new LineStyle();
}

/// Wraps the MediaQuery function to allow for testing.
class GraphicsFactoryHelper {
  const GraphicsFactoryHelper();

  double getTextScaleFactorOf(BuildContext context) =>
      MediaQuery.textScaleFactorOf(context);
}
