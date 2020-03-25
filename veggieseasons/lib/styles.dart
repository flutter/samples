// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:veggieseasons/data/veggie.dart';

abstract class Styles {
  static TextStyle headlineText(CupertinoThemeData themeData) => TextStyle(
        color: themeData.textTheme.textStyle.color,
        fontFamily: 'NotoSans',
        fontSize: 32,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.bold,
      );

  static const minorText = TextStyle(
    color: Color.fromRGBO(128, 128, 128, 1),
    fontFamily: 'NotoSans',
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static TextStyle headlineName(CupertinoThemeData themeData) => TextStyle(
        color: themeData.textTheme.textStyle.color,
        fontFamily: 'NotoSans',
        fontSize: 24,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.bold,
      );

  static TextStyle headlineDescription(CupertinoThemeData themeData) =>
      TextStyle(
        color: themeData.textTheme.textStyle.color,
        fontFamily: 'NotoSans',
        fontSize: 16,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.normal,
      );

  static const cardTitleText = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.9),
    fontFamily: 'NotoSans',
    fontSize: 32,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const cardCategoryText = TextStyle(
    color: Color.fromRGBO(255, 255, 255, 0.9),
    fontFamily: 'NotoSans',
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const cardDescriptionText = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.9),
    fontFamily: 'NotoSans',
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static TextStyle detailsTitleText(CupertinoThemeData themeData) => TextStyle(
        color: themeData.textTheme.textStyle.color,
        fontFamily: 'NotoSans',
        fontSize: 30,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.bold,
      );

  static TextStyle detailsPreferredCategoryText(CupertinoThemeData themeData) =>
      TextStyle(
        color: themeData.textTheme.textStyle.color,
        fontFamily: 'NotoSans',
        fontSize: 16,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.bold,
      );

  static TextStyle detailsCategoryText(CupertinoThemeData themeData) =>
      TextStyle(
        color: themeData.textTheme.textStyle.color,
        fontFamily: 'NotoSans',
        fontSize: 16,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.normal,
      );

  static TextStyle detailsDescriptionText(CupertinoThemeData themeData) =>
      TextStyle(
        color: themeData.textTheme.textStyle.color,
        fontFamily: 'NotoSans',
        fontSize: 16,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.normal,
      );

  static const detailsBoldDescriptionText = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.9),
    fontFamily: 'NotoSans',
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const detailsServingHeaderText = TextStyle(
    color: Color.fromRGBO(176, 176, 176, 1),
    fontFamily: 'NotoSans',
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static TextStyle detailsServingLabelText(CupertinoThemeData themeData) =>
      TextStyle(
        color: themeData.textTheme.textStyle.color,
        fontFamily: 'NotoSans',
        fontSize: 16,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.bold,
      );

  static TextStyle detailsServingValueText(CupertinoThemeData themeData) =>
      TextStyle(
        color: themeData.textTheme.textStyle.color,
        fontFamily: 'NotoSans',
        fontSize: 16,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.normal,
      );

  static TextStyle detailsServingNoteText(CupertinoThemeData themeData) =>
      TextStyle(
        color: themeData.textTheme.textStyle.color,
        fontFamily: 'NotoSans',
        fontSize: 16,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.normal,
      );

  static TextStyle triviaFinishedTitleText(CupertinoThemeData themeData) =>
      TextStyle(
        color: themeData.textTheme.textStyle.color,
        fontFamily: 'NotoSans',
        fontSize: 32,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.normal,
      );

  static TextStyle triviaFinishedText(CupertinoThemeData themeData) =>
      TextStyle(
        color: themeData.textTheme.textStyle.color,
        fontFamily: 'NotoSans',
        fontSize: 16,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.normal,
      );

  static TextStyle triviaFinishedBigText(CupertinoThemeData themeData) =>
      TextStyle(
        color: themeData.textTheme.textStyle.color,
        fontFamily: 'NotoSans',
        fontSize: 48,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.normal,
      );

  static const appBackground = Color(0xffd0d0d0);

  static Color scaffoldBackground(Brightness brightness) =>
      brightness == Brightness.light
          ? CupertinoColors.lightBackgroundGray
          : null;

  static Color searchBackground(CupertinoThemeData themeData) =>
      themeData.barBackgroundColor;

  static const frostedBackground = Color(0xccf8f8f8);

  static const closeButtonUnpressed = Color(0xff101010);

  static const closeButtonPressed = Color(0xff808080);

  static TextStyle searchText(CupertinoThemeData themeData) => TextStyle(
        color: themeData.textTheme.textStyle.color,
        fontFamily: 'NotoSans',
        fontSize: 14,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.normal,
      );

  static TextStyle settingsItemText(CupertinoThemeData themeData) =>
      themeData.textTheme.textStyle;

  static TextStyle settingsItemSubtitleText(CupertinoThemeData themeData) =>
      TextStyle(
        fontSize: 12,
        letterSpacing: -0.2,
        color: themeData.textTheme.textStyle.color,
      );

  static const Color searchCursorColor = Color.fromRGBO(0, 122, 255, 1);

  static const Color searchIconColor = Color.fromRGBO(128, 128, 128, 1);

  static const seasonColors = <Season, Color>{
    Season.winter: Color(0xff336dcc),
    Season.spring: Color(0xff2fa02b),
    Season.summer: Color(0xff287213),
    Season.autumn: Color(0xff724913),
  };

  // While handy, some of the Font Awesome icons sometimes bleed over their
  // allotted bounds. This padding is used to adjust for that.
  static const seasonIconPadding = {
    Season.winter: EdgeInsets.only(right: 0),
    Season.spring: EdgeInsets.only(right: 4),
    Season.summer: EdgeInsets.only(right: 6),
    Season.autumn: EdgeInsets.only(right: 0),
  };

  static const seasonIconData = {
    Season.winter: FontAwesomeIcons.snowflake,
    Season.spring: FontAwesomeIcons.leaf,
    Season.summer: FontAwesomeIcons.umbrellaBeach,
    Season.autumn: FontAwesomeIcons.canadianMapleLeaf,
  };

  static const seasonBorder = Border(
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

  static Color settingsItemColor(Brightness brightness) =>
      brightness == Brightness.light
          ? CupertinoColors.tertiarySystemBackground
          : CupertinoColors.darkBackgroundGray;

  static Color settingsLineation(Brightness brightness) =>
      brightness == Brightness.light ? Color(0xffbcbbc1) : Color(0xFF4C4B4B);

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

  static const servingInfoBorderColor = Color(0xffb0b0b0);

  static const ColorFilter desaturatedColorFilter =
      // 222222 is a random color that has low color saturation.
      ColorFilter.mode(Color(0xFF222222), BlendMode.saturation);
}
