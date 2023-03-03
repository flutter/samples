// Copyright 2022, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

/// A palette of colors to be used in the game.
///
/// The reason we're not going with something like Material Design's
/// `Theme` is simply that this is simpler to work with and yet gives
/// us everything we need for a game.
///
/// Games generally have more radical color palettes than apps. For example,
/// every level of a game can have radically different colors.
/// At the same time, games rarely support dark mode.
///
/// Colors here are implemented as getters so that hot reloading works.
/// In practice, we could just as easily implement the colors
/// as `static const`. But this way the palette is more malleable:
/// we could allow players to customize colors, for example,
/// or even get the colors from the network.
class Palette {
  Color get pen => const Color(0xff1d75fb);
  Color get grassGreen => const Color(0xff189c38);
  Color get redCardRed => const Color(0xFFd10841);
  Color get darkGrey => const Color(0xff333333);
  Color get grey => const Color(0xff474747);
  Color get backgroundMain => const Color(0xffffbd27);
  Color get backgroundLevelSelection => const Color(0xffd9d9d9);
  Color get backgroundPlaySession => const Color(0xffffbd27);
  Color get background4 => const Color(0xff189c38);
  Color get backgroundSettings => const Color(0xffff1b52);
  Color get trueWhite => const Color(0xffffffff);
}
