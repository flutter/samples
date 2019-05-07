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

import 'package:flutter_web_ui/ui.dart' show hashValues;
import 'package:charts_common/common.dart' as common show Color, TextStyle;

class TextStyle implements common.TextStyle {
  int fontSize;
  String fontFamily;
  common.Color color;

  @override
  bool operator ==(Object other) =>
      other is TextStyle &&
      fontSize == other.fontSize &&
      fontFamily == other.fontFamily &&
      color == other.color;

  @override
  int get hashCode => hashValues(fontSize, fontFamily, color);
}
