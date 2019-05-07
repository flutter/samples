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

import 'color.dart' show Color;
import 'palette.dart' show Palette;

/// A canonical palette of colors from material.io.
///
/// @link https://material.io/guidelines/style/color.html#color-color-palette
class MaterialPalette {
  static const black = const Color(r: 0, g: 0, b: 0);
  static const transparent = const Color(r: 0, g: 0, b: 0, a: 0);
  static const white = const Color(r: 255, g: 255, b: 255);

  static Palette get blue => const MaterialBlue();
  static Palette get red => const MaterialRed();
  static Palette get yellow => const MaterialYellow();
  static Palette get green => const MaterialGreen();
  static Palette get purple => const MaterialPurple();
  static Palette get cyan => const MaterialCyan();
  static Palette get deepOrange => const MaterialDeepOrange();
  static Palette get lime => const MaterialLime();
  static Palette get indigo => const MaterialIndigo();
  static Palette get pink => const MaterialPink();
  static Palette get teal => const MaterialTeal();
  static MaterialGray get gray => const MaterialGray();

  static List<Palette> getOrderedPalettes(int count) {
    final orderedPalettes = <Palette>[];
    if (orderedPalettes.length < count) {
      orderedPalettes.add(blue);
    }
    if (orderedPalettes.length < count) {
      orderedPalettes.add(red);
    }
    if (orderedPalettes.length < count) {
      orderedPalettes.add(yellow);
    }
    if (orderedPalettes.length < count) {
      orderedPalettes.add(green);
    }
    if (orderedPalettes.length < count) {
      orderedPalettes.add(purple);
    }
    if (orderedPalettes.length < count) {
      orderedPalettes.add(cyan);
    }
    if (orderedPalettes.length < count) {
      orderedPalettes.add(deepOrange);
    }
    if (orderedPalettes.length < count) {
      orderedPalettes.add(lime);
    }
    if (orderedPalettes.length < count) {
      orderedPalettes.add(indigo);
    }
    if (orderedPalettes.length < count) {
      orderedPalettes.add(pink);
    }
    if (orderedPalettes.length < count) {
      orderedPalettes.add(teal);
    }
    return orderedPalettes;
  }
}

class MaterialBlue extends Palette {
  static const _shade200 = const Color(r: 0x90, g: 0xCA, b: 0xF9); //#90CAF9
  static const _shade500 = const Color(
      r: 0x21, g: 0x96, b: 0xF3, darker: _shade700, lighter: _shade200);
  static const _shade700 = const Color(r: 0x19, g: 0x76, b: 0xD2); //#1976D2

  const MaterialBlue();

  @override
  Color get shadeDefault => _shade500;
}

class MaterialRed extends Palette {
  static const _shade200 = const Color(r: 0xEF, g: 0x9A, b: 0x9A); //#EF9A9A
  static const _shade700 = const Color(r: 0xD3, g: 0x2F, b: 0x2F); //#D32F2F
  static const _shade500 = const Color(
      r: 0xF4, g: 0x43, b: 0x36, darker: _shade700, lighter: _shade200);

  const MaterialRed();

  @override
  Color get shadeDefault => _shade500;
}

class MaterialYellow extends Palette {
  static const _shade200 = const Color(r: 0xFF, g: 0xF5, b: 0x9D); //#FFF59D
  static const _shade700 = const Color(r: 0xFB, g: 0xC0, b: 0x2D); //#FBC02D
  static const _shade500 = const Color(
      r: 0xFF, g: 0xEB, b: 0x3B, darker: _shade700, lighter: _shade200);

  const MaterialYellow();

  @override
  Color get shadeDefault => _shade500;
}

class MaterialGreen extends Palette {
  static const _shade200 = const Color(r: 0xA5, g: 0xD6, b: 0xA7); //#A5D6A7
  static const _shade700 = const Color(r: 0x38, g: 0x8E, b: 0x3C); //#388E3C;
  static const _shade500 = const Color(
      r: 0x4C, g: 0xAF, b: 0x50, darker: _shade700, lighter: _shade200);

  const MaterialGreen();

  @override
  Color get shadeDefault => _shade500;
}

class MaterialPurple extends Palette {
  static const _shade200 = const Color(r: 0xCE, g: 0x93, b: 0xD8); //#CE93D8
  static const _shade700 = const Color(r: 0x7B, g: 0x1F, b: 0xA2); //#7B1FA2
  static const _shade500 = const Color(
      r: 0x9C, g: 0x27, b: 0xB0, darker: _shade700, lighter: _shade200);

  const MaterialPurple();

  @override
  Color get shadeDefault => _shade500;
}

class MaterialCyan extends Palette {
  static const _shade200 = const Color(r: 0x80, g: 0xDE, b: 0xEA); //#80DEEA
  static const _shade700 = const Color(r: 0x00, g: 0x97, b: 0xA7); //#0097A7
  static const _shade500 = const Color(
      r: 0x00, g: 0xBC, b: 0xD4, darker: _shade700, lighter: _shade200);

  const MaterialCyan();

  @override
  Color get shadeDefault => _shade500;
}

class MaterialDeepOrange extends Palette {
  static const _shade200 = const Color(r: 0xFF, g: 0xAB, b: 0x91); //#FFAB91
  static const _shade700 = const Color(r: 0xE6, g: 0x4A, b: 0x19); //#E64A19
  static const _shade500 = const Color(
      r: 0xFF, g: 0x57, b: 0x22, darker: _shade700, lighter: _shade200);

  const MaterialDeepOrange();

  @override
  Color get shadeDefault => _shade500;
}

class MaterialLime extends Palette {
  static const _shade200 = const Color(r: 0xE6, g: 0xEE, b: 0x9C); //#E6EE9C
  static const _shade700 = const Color(r: 0xAF, g: 0xB4, b: 0x2B); //#AFB42B
  static const _shade500 = const Color(
      r: 0xCD, g: 0xDC, b: 0x39, darker: _shade700, lighter: _shade200);

  const MaterialLime();

  @override
  Color get shadeDefault => _shade500;
}

class MaterialIndigo extends Palette {
  static const _shade200 = const Color(r: 0x9F, g: 0xA8, b: 0xDA); //#9FA8DA
  static const _shade700 = const Color(r: 0x30, g: 0x3F, b: 0x9F); //#303F9F
  static const _shade500 = const Color(
      r: 0x3F, g: 0x51, b: 0xB5, darker: _shade700, lighter: _shade200);

  const MaterialIndigo();

  @override
  Color get shadeDefault => _shade500;
}

class MaterialPink extends Palette {
  static const _shade200 = const Color(r: 0xF4, g: 0x8F, b: 0xB1); //#F48FB1
  static const _shade700 = const Color(r: 0xC2, g: 0x18, b: 0x5B); //#C2185B
  static const _shade500 = const Color(
      r: 0xE9, g: 0x1E, b: 0x63, darker: _shade700, lighter: _shade200);

  const MaterialPink();

  @override
  Color get shadeDefault => _shade500;
}

class MaterialTeal extends Palette {
  static const _shade200 = const Color(r: 0x80, g: 0xCB, b: 0xC4); //#80CBC4
  static const _shade700 = const Color(r: 0x00, g: 0x79, b: 0x6B); //#00796B
  static const _shade500 = const Color(
      r: 0x00, g: 0x96, b: 0x88, darker: _shade700, lighter: _shade200);

  const MaterialTeal();

  @override
  Color get shadeDefault => _shade500;
}

class MaterialGray extends Palette {
  static const _shade200 = const Color(r: 0xEE, g: 0xEE, b: 0xEE); //#EEEEEE
  static const _shade700 = const Color(r: 0x61, g: 0x61, b: 0x61); //#616161
  static const _shade500 = const Color(
      r: 0x9E, g: 0x9E, b: 0x9E, darker: _shade700, lighter: _shade200);

  const MaterialGray();

  @override
  Color get shadeDefault => _shade500;

  Color get shade50 => const Color(r: 0xFA, g: 0xFA, b: 0xFA); //#FAFAFA
  Color get shade100 => const Color(r: 0xF5, g: 0xF5, b: 0xF5); //#F5F5F5
  Color get shade200 => _shade200;
  Color get shade300 => const Color(r: 0xE0, g: 0xE0, b: 0xE0); //#E0E0E0
  Color get shade400 => const Color(r: 0xBD, g: 0xBD, b: 0xBD); //#BDBDBD
  Color get shade500 => _shade500;
  Color get shade600 => const Color(r: 0x75, g: 0x75, b: 0x75); //#757575
  Color get shade700 => _shade700;
  Color get shade800 => const Color(r: 0x42, g: 0x42, b: 0x42); //#424242
  Color get shade900 => const Color(r: 0x21, g: 0x21, b: 0xA1); //#212121
}
