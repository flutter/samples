// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linting_tool/theme/colors.dart';

class AppTheme {
  static ThemeData buildReplyLightTheme(BuildContext context) {
    final base = ThemeData.light();
    return base.copyWith(
      bottomAppBarColor: AppColors.blue700,
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: AppColors.blue700,
        modalBackgroundColor: Colors.white.withOpacity(0.7),
      ),
      navigationRailTheme: NavigationRailThemeData(
        backgroundColor: AppColors.blue700,
        selectedIconTheme: const IconThemeData(
          color: AppColors.orange500,
        ),
        selectedLabelTextStyle:
            GoogleFonts.workSansTextTheme().headline5!.copyWith(
                  color: AppColors.orange500,
                ),
        unselectedIconTheme: const IconThemeData(
          color: AppColors.blue200,
        ),
        unselectedLabelTextStyle:
            GoogleFonts.workSansTextTheme().headline5!.copyWith(
                  color: AppColors.blue200,
                ),
      ),
      canvasColor: AppColors.white50,
      cardColor: AppColors.white50,
      chipTheme: _buildChipTheme(
        AppColors.blue700,
        AppColors.lightChipBackground,
        Brightness.light,
      ),
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.blueGrey,
      ),
      textTheme: _buildReplyLightTextTheme(base.textTheme),
      scaffoldBackgroundColor: AppColors.blue50,
    );
  }

  static ThemeData buildReplyDarkTheme(BuildContext context) {
    final base = ThemeData.dark();
    return base.copyWith(
      bottomAppBarColor: AppColors.darkBottomAppBarBackground,
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: AppColors.darkDrawerBackground,
        modalBackgroundColor: Colors.black.withOpacity(0.7),
      ),
      navigationRailTheme: NavigationRailThemeData(
        backgroundColor: AppColors.darkBottomAppBarBackground,
        selectedIconTheme: const IconThemeData(
          color: AppColors.orange300,
        ),
        selectedLabelTextStyle:
            GoogleFonts.workSansTextTheme().headline5!.copyWith(
                  color: AppColors.orange300,
                ),
        unselectedIconTheme: const IconThemeData(
          color: AppColors.greyLabel,
        ),
        unselectedLabelTextStyle:
            GoogleFonts.workSansTextTheme().headline5!.copyWith(
                  color: AppColors.greyLabel,
                ),
      ),
      canvasColor: AppColors.black900,
      cardColor: AppColors.darkCardBackground,
      chipTheme: _buildChipTheme(
        AppColors.blue200,
        AppColors.darkChipBackground,
        Brightness.dark,
      ),
      colorScheme: const ColorScheme.dark(
        primary: AppColors.blue200,
        primaryVariant: AppColors.blue300,
        secondary: AppColors.orange300,
        secondaryVariant: AppColors.orange300,
        surface: AppColors.black800,
        error: AppColors.red200,
        onPrimary: AppColors.black900,
        onSecondary: AppColors.black900,
        onBackground: AppColors.white50,
        onSurface: AppColors.white50,
        onError: AppColors.black900,
        background: AppColors.black900Alpha087,
      ),
      textTheme: _buildReplyDarkTextTheme(base.textTheme),
      scaffoldBackgroundColor: AppColors.black900,
    );
  }

  static ChipThemeData _buildChipTheme(
    Color primaryColor,
    Color chipBackground,
    Brightness brightness,
  ) {
    return ChipThemeData(
      backgroundColor: primaryColor.withOpacity(0.12),
      disabledColor: primaryColor.withOpacity(0.87),
      selectedColor: primaryColor.withOpacity(0.05),
      secondarySelectedColor: chipBackground,
      padding: const EdgeInsets.all(4),
      shape: const StadiumBorder(),
      labelStyle: GoogleFonts.workSansTextTheme().bodyText2!.copyWith(
            color: brightness == Brightness.dark
                ? AppColors.white50
                : AppColors.black900,
          ),
      secondaryLabelStyle: GoogleFonts.workSansTextTheme().bodyText2!,
      brightness: brightness,
    );
  }

  static TextTheme _buildReplyLightTextTheme(TextTheme base) {
    return base.copyWith(
      headline4: GoogleFonts.workSans(
        fontWeight: FontWeight.w600,
        fontSize: 34,
        letterSpacing: 0.4,
        height: 0.9,
        color: AppColors.black900,
      ),
      headline5: GoogleFonts.workSans(
        fontWeight: FontWeight.bold,
        fontSize: 24,
        letterSpacing: 0.27,
        color: AppColors.black900,
      ),
      headline6: GoogleFonts.workSans(
        fontWeight: FontWeight.w600,
        fontSize: 20,
        letterSpacing: 0.18,
        color: AppColors.black900,
      ),
      subtitle2: GoogleFonts.workSans(
        fontWeight: FontWeight.w600,
        fontSize: 14,
        letterSpacing: -0.04,
        color: AppColors.black900,
      ),
      bodyText1: GoogleFonts.workSans(
        fontWeight: FontWeight.normal,
        fontSize: 18,
        letterSpacing: 0.2,
        color: AppColors.black900,
      ),
      bodyText2: GoogleFonts.workSans(
        fontWeight: FontWeight.normal,
        fontSize: 14,
        letterSpacing: -0.05,
        color: AppColors.black900,
      ),
      caption: GoogleFonts.workSans(
        fontWeight: FontWeight.normal,
        fontSize: 12,
        letterSpacing: 0.2,
        color: AppColors.black900,
      ),
    );
  }

  static TextTheme _buildReplyDarkTextTheme(TextTheme base) {
    return base.copyWith(
      headline4: GoogleFonts.workSans(
        fontWeight: FontWeight.w600,
        fontSize: 34,
        letterSpacing: 0.4,
        height: 0.9,
        color: AppColors.white50,
      ),
      headline5: GoogleFonts.workSans(
        fontWeight: FontWeight.bold,
        fontSize: 24,
        letterSpacing: 0.27,
        color: AppColors.white50,
      ),
      headline6: GoogleFonts.workSans(
        fontWeight: FontWeight.w600,
        fontSize: 20,
        letterSpacing: 0.18,
        color: AppColors.white50,
      ),
      subtitle2: GoogleFonts.workSans(
        fontWeight: FontWeight.w600,
        fontSize: 14,
        letterSpacing: -0.04,
        color: AppColors.white50,
      ),
      bodyText1: GoogleFonts.workSans(
        fontWeight: FontWeight.normal,
        fontSize: 18,
        letterSpacing: 0.2,
        color: AppColors.white50,
      ),
      bodyText2: GoogleFonts.workSans(
        fontWeight: FontWeight.normal,
        fontSize: 14,
        letterSpacing: -0.05,
        color: AppColors.white50,
      ),
      caption: GoogleFonts.workSans(
        fontWeight: FontWeight.normal,
        fontSize: 12,
        letterSpacing: 0.2,
        color: AppColors.white50,
      ),
    );
  }

  static MarkdownStyleSheet buildMarkDownTheme(ThemeData theme) {
    final textTheme = theme.textTheme;
    return MarkdownStyleSheet.largeFromTheme(theme).copyWith(
      strong: textTheme.subtitle2!,
      em: textTheme.bodyText2!.copyWith(
        fontWeight: FontWeight.w900,
        fontStyle: FontStyle.italic,
      ),
      codeblockPadding: const EdgeInsets.all(8),
      codeblockDecoration: BoxDecoration(
        color: Colors.grey.shade100,
      ),
      code: TextStyle(
        backgroundColor: Colors.grey.shade100,
      ),
    );
  }
}
