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

import 'text_measurement.dart' show TextMeasurement;
import 'text_style.dart' show TextStyle;

/// Interface for accessing text measurement and painter.
abstract class TextElement {
  /// The [TextStyle] of this [TextElement].
  TextStyle get textStyle;

  set textStyle(TextStyle value);

  /// The max width of this [TextElement] during measure and layout.
  ///
  /// If the text exceeds maxWidth, the [maxWidthStrategy] is used.
  int get maxWidth;

  set maxWidth(int value);

  /// The strategy to use if this [TextElement] exceeds the [maxWidth].
  MaxWidthStrategy get maxWidthStrategy;

  set maxWidthStrategy(MaxWidthStrategy maxWidthStrategy);

  /// The opacity of this element, in addition to the alpha set on the color
  /// of this element.
  set opacity(double opacity);

  // The text of this [TextElement].
  String get text;

  /// The [TextMeasurement] of this [TextElement] as an approximate of what
  /// is actually printed.
  ///
  /// Will return the [maxWidth] if set and the actual text width is larger.
  TextMeasurement get measurement;

  /// The direction to render the text relative to the coordinate.
  TextDirection get textDirection;
  set textDirection(TextDirection direction);

  /// Return true if settings are all the same.
  ///
  /// Purposely excludes measurement because the measurement will request the
  /// native [TextElement] to layout, which is expensive. We want to avoid the
  /// layout by comparing with another [TextElement] to see if they have the
  /// same settings.
  static bool elementSettingsSame(TextElement a, TextElement b) {
    return a.textStyle == b.textStyle &&
        a.maxWidth == b.maxWidth &&
        a.maxWidthStrategy == b.maxWidthStrategy &&
        a.text == b.text &&
        a.textDirection == b.textDirection;
  }
}

enum TextDirection {
  ltr,
  rtl,
  center,
}

/// The strategy to use if a [TextElement] exceeds the [maxWidth].
enum MaxWidthStrategy {
  truncate,
  ellipsize,
}
