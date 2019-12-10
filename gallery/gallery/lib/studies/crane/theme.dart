// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:gallery/studies/crane/colors.dart';

final ThemeData craneTheme = _buildCraneTheme();

IconThemeData _customIconTheme(IconThemeData original, Color color) {
  return original.copyWith(color: color);
}

ThemeData _buildCraneTheme() {
  final ThemeData base = ThemeData.light();

  return base.copyWith(
    colorScheme: ColorScheme.light().copyWith(
      primary: cranePurple800,
      secondary: craneRed700,
    ),
    accentColor: cranePurple700,
    primaryColor: cranePurple800,
    buttonColor: craneRed700,
    hintColor: craneWhite60,
    indicatorColor: cranePrimaryWhite,
    scaffoldBackgroundColor: cranePrimaryWhite,
    cardColor: cranePrimaryWhite,
    textSelectionColor: cranePurple700,
    errorColor: craneErrorOrange,
    highlightColor: Colors.transparent,
    buttonTheme: ButtonThemeData(
      textTheme: ButtonTextTheme.accent,
    ),
    textTheme: _buildCraneTextTheme(base.textTheme),
    primaryTextTheme: _buildCraneTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildCraneTextTheme(base.accentTextTheme),
    iconTheme: _customIconTheme(base.iconTheme, craneWhite60),
    primaryIconTheme: _customIconTheme(base.iconTheme, cranePrimaryWhite),
  );
}

TextTheme _buildCraneTextTheme(TextTheme base) {
  return base
      .copyWith(
        display4: base.display4.copyWith(
          fontWeight: FontWeight.w300,
          fontSize: 96,
        ),
        display3: base.display3.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 60,
        ),
        display2: base.display2.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 48,
        ),
        display1: base.display1.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 34,
        ),
        headline: base.headline.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 24,
        ),
        title: base.title.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
        subhead: base.subhead.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16,
          letterSpacing: 0.5,
        ),
        subtitle: base.subtitle.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 12,
          color: craneGrey,
        ),
        body2: base.body2.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
        body1: base.body1.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
        button: base.button.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 13,
          letterSpacing: 0.8,
        ),
        caption: base.caption.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 12,
          color: craneGrey,
        ),
        overline: base.overline.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 12,
        ),
      )
      .apply(
        fontFamily: 'Raleway',
      );
}
