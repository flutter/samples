// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:veggieseasons/data/veggie.dart';

abstract class Styles {
  static const baseTextStyle = TextStyle(
    color: Color.fromRGBO(10, 10, 8, 1.0),
    fontFamily: 'NotoSans',
    fontSize: 16.0,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const headlineText = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.8),
    fontFamily: 'NotoSans',
    fontSize: 32.0,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const subheadText = TextStyle(
    color: Color.fromRGBO(240, 240, 240, 1.0),
    fontFamily: 'NotoSans',
    fontSize: 30.0,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const bodyText = TextStyle(
    color: Color.fromRGBO(240, 240, 240, 1.0),
    fontFamily: 'NotoSans',
    fontSize: 14.0,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const minorText = TextStyle(
    color: Color.fromRGBO(128, 128, 128, 1.0),
    fontFamily: 'NotoSans',
    fontSize: 16.0,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const headlineName = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.9),
    fontFamily: 'NotoSans',
    fontSize: 24.0,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const headlineDescription = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.8),
    fontFamily: 'NotoSans',
    fontSize: 16.0,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const seasonText = TextStyle(
    color: Color.fromRGBO(255, 255, 255, 0.9),
    fontFamily: 'NotoSans',
    fontSize: 24.0,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const appBackground = Color(0xffd0d0d0);

  static const scaffoldBackground = Color(0xfff0f0f0);

  static const buttonColor = Color(0xff007aff);

  static const searchBackground = Color(0xffe0e0e0);

  static const TextStyle searchText = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 1.0),
    fontFamily: 'NotoSans',
    fontSize: 14.0,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const Color searchCursorColor = Color.fromRGBO(0, 122, 255, 1.0);

  static const Color searchIconColor = Color.fromRGBO(128, 128, 128, 1.0);

  static const seasonColors = <Season, Color>{
    Season.winter: Color(0xff336dcc),
    Season.spring: Color(0xff2fa02b),
    Season.summer: Color(0xff287213),
    Season.autumn: Color(0xff724913),
  };

  static const seasonBorder = const Border(
    top: BorderSide(color: Color(0xff606060)),
    left: BorderSide(color: Color(0xff606060)),
    bottom: BorderSide(color: Color(0xff606060)),
    right: BorderSide(color: Color(0xff606060)),
  );

  static const uncheckedIcon = IconData(
    0xf372,
    fontFamily: CupertinoIcons.iconFont,
    fontPackage: CupertinoIcons.iconFontPackage,
  );

  static const checkedIcon = IconData(
    0xf373,
    fontFamily: CupertinoIcons.iconFont,
    fontPackage: CupertinoIcons.iconFontPackage,
  );
}
