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

import 'line_style.dart' show LineStyle;
import 'text_element.dart' show TextElement;
import 'text_style.dart' show TextStyle;

/// Interface to native platform graphics functions.
abstract class GraphicsFactory {
  LineStyle createLinePaint();

  /// Returns a [TextStyle] object.
  TextStyle createTextPaint();

  /// Returns a text element from [text] and [style].
  TextElement createTextElement(String text);
}
