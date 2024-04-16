import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class MarketplaceTheme {
  static ThemeData theme = ThemeData(
    fontFamily: GoogleFonts.lexend().fontFamily,
    textTheme: GoogleFonts.lexendTextTheme().copyWith().apply(
        bodyColor: const Color(0xff000000),
        displayColor: const Color(0xff000000)),
    colorScheme: const ColorScheme.light(
      primary: Color(0xffA2E3F6),
      secondary: Color(0xff4FAD85),
      tertiary: Color(0xffDE7A60),
      scrim: Color(0xffFFABC7),
      surface: Color(0xffFDF7F0),
      onSecondary: Color(0xff000000),
      shadow: Color(0xffAEAEAE),
      onPrimary: Color(0xffFFFFFF),
    ),
    useMaterial3: true,
    canvasColor: Colors.transparent,
    navigationBarTheme: NavigationBarThemeData(
      indicatorColor: const Color(0xffA2E3F6),
      indicatorShape: CircleBorder(
        side: BorderSide.lerp(
            const BorderSide(
              color: Color(0xff000000),
              width: 2,
            ),
            const BorderSide(
              color: Color(0xff000000),
              width: 2,
            ),
            1),
      ),
    ),
  );

  static const Color primary = Color(0xffA2E3F6);
  static const Color scrim = Color(0xffFFABC7);
  static const Color tertiary = Color(0xffDE7A60);
  static const Color secondary = Color(0xff4FAD85);
  static const Color borderColor = Colors.black12;
  static const Color focusedBorderColor = Colors.black45;

  static const double defaultBorderRadius = 16;

  static const double defaultTextSize = 16;

  static const Color defaultTextColor = Colors.black87;

  static TextStyle get heading1 => theme.textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.bold,
        fontSize: 28,
        //height: 36,
        color: theme.colorScheme.onSecondary,
      );

  static TextStyle get heading2 => theme.textTheme.headlineMedium!.copyWith(
        fontWeight: FontWeight.bold,
        fontSize: 24,
        //height: 32,
        color: theme.colorScheme.onSecondary,
      );

  static TextStyle get heading3 => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.bold,
        fontSize: 18,
        //height: 24,
        color: theme.colorScheme.onSecondary,
      );

  static TextStyle get subheading1 => theme.textTheme.bodyLarge!.copyWith(
        fontWeight: FontWeight.normal,
        fontSize: 18,
        //height: 20,
        color: theme.colorScheme.onSecondary,
      );

  static TextStyle get subheading2 => theme.textTheme.bodyMedium!.copyWith(
        fontWeight: FontWeight.normal,
        fontSize: 14,
        //height: 18,
        color: theme.colorScheme.onSecondary,
      );
  static TextStyle get paragraph => theme.textTheme.bodySmall!.copyWith(
        fontWeight: FontWeight.normal,
        fontSize: 14,
        //height: 18,
        color: theme.colorScheme.onSecondary,
      );

  static TextStyle get label => theme.textTheme.labelSmall!.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 11,
        //height: 16,
        color: theme.colorScheme.onSecondary,
      );

  static TextStyle get dossierParagraph => GoogleFonts.anonymousPro().copyWith(
        fontWeight: FontWeight.normal,
        fontSize: 14,
        //height: 18,
        color: theme.colorScheme.onSecondary,
      );

  static TextStyle get dossierSubheading => GoogleFonts.anonymousPro().copyWith(
        fontWeight: FontWeight.normal,
        fontSize: 18,
        //height: 18,
        color: theme.colorScheme.onSecondary,
      );

  static TextStyle get dossierHeading => GoogleFonts.anonymousPro().copyWith(
        fontWeight: FontWeight.bold,
        fontSize: 28,
        //height: 18,
        color: theme.colorScheme.onSecondary,
      );

  static const double _spacingUnit = 8;
  static const double spacing8 = _spacingUnit / 2;
  static const double spacing7 = _spacingUnit;
  static const double spacing6 = _spacingUnit * 1.5;
  static const double spacing5 = _spacingUnit * 2;
  static const double spacing4 = _spacingUnit * 2.5;
  static const double spacing3 = _spacingUnit * 3;
  static const double spacing2 = _spacingUnit * 3.5;
  static const double spacing1 = _spacingUnit * 4;

  static double lineWidth = 1;

  static const Widget verticalSpacer = SizedBox(height: spacing5);
}
