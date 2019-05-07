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

import 'material_style.dart' show MaterialStyle;
import 'style.dart' show Style;

class StyleFactory {
  static final StyleFactory _styleFactory = new StyleFactory._internal();

  Style _style = const MaterialStyle();

  /// The [Style] that is used for all the charts in this application.
  static Style get style => _styleFactory._style;

  static set style(Style value) {
    _styleFactory._style = value;
  }

  StyleFactory._internal();
}
