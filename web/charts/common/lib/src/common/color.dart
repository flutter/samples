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

import 'package:meta/meta.dart' show immutable;

@immutable
class Color {
  static const black = const Color(r: 0, g: 0, b: 0);
  static const white = const Color(r: 255, g: 255, b: 255);
  static const transparent = const Color(r: 0, g: 0, b: 0, a: 0);

  static const _darkerPercentOfOrig = 0.7;
  static const _lighterPercentOfOrig = 0.1;

  final int r;
  final int g;
  final int b;
  final int a;

  final Color _darker;
  final Color _lighter;

  const Color(
      {this.r, this.g, this.b, this.a = 255, Color darker, Color lighter})
      : _darker = darker,
        _lighter = lighter;

  Color.fromOther({Color color, Color darker, Color lighter})
      : r = color.r,
        g = color.g,
        b = color.b,
        a = color.a,
        _darker = darker ?? color._darker,
        _lighter = lighter ?? color._lighter;

  /// Construct the color from a hex code string, of the format #RRGGBB.
  factory Color.fromHex({String code}) {
    var str = code.substring(1, 7);
    var bigint = int.parse(str, radix: 16);
    final r = (bigint >> 16) & 255;
    final g = (bigint >> 8) & 255;
    final b = bigint & 255;
    final a = 255;
    return new Color(r: r, g: g, b: b, a: a);
  }

  Color get darker =>
      _darker ??
      new Color(
          r: (r * _darkerPercentOfOrig).round(),
          g: (g * _darkerPercentOfOrig).round(),
          b: (b * _darkerPercentOfOrig).round(),
          a: a);

  Color get lighter =>
      _lighter ??
      new Color(
          r: r + ((255 - r) * _lighterPercentOfOrig).round(),
          g: g + ((255 - g) * _lighterPercentOfOrig).round(),
          b: b + ((255 - b) * _lighterPercentOfOrig).round(),
          a: a);

  @override
  bool operator ==(Object other) =>
      other is Color &&
      other.r == r &&
      other.g == g &&
      other.b == b &&
      other.a == a;

  @override
  int get hashCode {
    var hashcode = r.hashCode;
    hashcode = hashcode * 37 + g.hashCode;
    hashcode = hashcode * 37 + b.hashCode;
    hashcode = hashcode * 37 + a.hashCode;
    return hashcode;
  }

  @override
  String toString() => rgbaHexString;

  /// Converts the character into a #RGBA hex string.
  String get rgbaHexString => '#${_get2CharHex(r)}${_get2CharHex(g)}'
      '${_get2CharHex(b)}${_get2CharHex(a)}';

  /// Converts the character into a #RGB hex string.
  String get hexString {
    // Alpha is not included in the hex string.
    assert(a == 255);
    return '#${_get2CharHex(r)}${_get2CharHex(g)}${_get2CharHex(b)}';
  }

  String _get2CharHex(int num) {
    var str = num.toRadixString(16);
    while (str.length < 2) {
      str = '0' + str;
    }
    return str;
  }
}
