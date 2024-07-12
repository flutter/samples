import 'colors.dart';
import '../ui/tag_chip.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static const _textTheme = TextTheme(
    titleMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
    ),
  );

  static const _inputDecorationTheme = InputDecorationTheme(
    hintStyle: TextStyle(
      // grey3 works for both light and dark themes
      color: AppColors.grey3,
      fontSize: 18.0,
      fontWeight: FontWeight.w400,
    ),
  );

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: AppColors.lightColorScheme,
    textTheme: _textTheme,
    inputDecorationTheme: _inputDecorationTheme,
    extensions: [
      TagChipTheme(
        chipColor: AppColors.whiteTransparent,
        onChipColor: Colors.white,
      ),
    ],
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: AppColors.darkColorScheme,
    textTheme: _textTheme,
    inputDecorationTheme: _inputDecorationTheme,
    extensions: [
      TagChipTheme(
        chipColor: AppColors.blackTransparent,
        onChipColor: Colors.white,
      ),
    ],
  );
}
