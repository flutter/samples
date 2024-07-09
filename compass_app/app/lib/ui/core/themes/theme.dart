import 'colors.dart';
import '../ui/tag_chip.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: AppColors.lightColorScheme,
    extensions: [
      TagChipTheme(
        chipColor: AppColors.whiteTransparent,
        onChipColor: Colors.white,
      ),
    ],
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: AppColors.darkColorScheme,
    extensions: [
      TagChipTheme(
        chipColor: AppColors.blackTransparent,
        onChipColor: Colors.white,
      ),
    ],
  );
}
