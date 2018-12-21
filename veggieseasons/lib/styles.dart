// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:veggieseasons/data/veggie.dart';

abstract class Styles {
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

  static const activeSeasonText = TextStyle(
    color: Color.fromRGBO(255, 255, 255, 0.9),
    fontFamily: 'NotoSans',
    fontSize: 24.0,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const inactiveSeasonText = TextStyle(
    color: Color.fromRGBO(80, 80, 80, 0.9),
    fontFamily: 'NotoSans',
    fontSize: 24.0,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const cardTitleText = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.9),
    fontFamily: 'NotoSans',
    fontSize: 32.0,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const cardCategoryText = TextStyle(
    color: Color.fromRGBO(255, 255, 255, 0.9),
    fontFamily: 'NotoSans',
    fontSize: 16.0,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const cardDescriptionText = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.9),
    fontFamily: 'NotoSans',
    fontSize: 16.0,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const appBackground = Color(0xffd0d0d0);

  static const scaffoldBackground = Color(0xfff0f0f0);

  static const searchBackground = Color(0xffe0e0e0);

  static const frostedBackground = Color(0xccf8f8f8);

  static const closeButtonUnpressed = Color(0xff101010);

  static const closeButtonPressed = Color(0xff808080);

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

  static const transparentColor = Color(0x00000000);

  static const shadowColor = Color(0xa0000000);

  static const shadowGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [transparentColor, shadowColor],
  );

  static const Color settingsMediumGray = Color(0xffc7c7c7);

  static const Color settingsItemPressed = Color(0xffd9d9d9);

  static const Color settingsLineation = Color(0xffbcbbc1);

  static const Color settingsBackground = Color(0xffefeff4);

  static const Color settingsGroupSubtitle = Color(0xff777777);

  static const Color iconBlue = Color(0xff0000ff);

  static const Color iconGold = Color(0xffdba800);

  static const preferenceIcon = IconData(
    0xf443,
    fontFamily: CupertinoIcons.iconFont,
    fontPackage: CupertinoIcons.iconFontPackage,
  );

  static const calorieIcon = IconData(
    0xf3bb,
    fontFamily: CupertinoIcons.iconFont,
    fontPackage: CupertinoIcons.iconFontPackage,
  );

  static const checkIcon = IconData(
    0xf383,
    fontFamily: CupertinoIcons.iconFont,
    fontPackage: CupertinoIcons.iconFontPackage,
  );
}
