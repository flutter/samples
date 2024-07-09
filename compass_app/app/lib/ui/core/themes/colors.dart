import 'package:flutter/material.dart';

class AppColors {
  static const black1 = Color(0xFF101010);
  static const white1 = Color(0xFFFFF7FA);
  static const grey1 = Color(0xFFF2F2F2);
  static const grey2 = Color(0xFF4D4D4D);
  static const whiteTransparent =
      Color(0x4DFFFFFF); // Figma rgba(255, 255, 255, 0.3)
  static const blackTransparent =
      Color(0x4D000000); // Figma rgba(255, 255, 255, 0.3)

  static const lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.black1,
    onPrimary: AppColors.white1,
    secondary: AppColors.black1,
    onSecondary: AppColors.white1,
    surface: Colors.white,
    onSurface: AppColors.black1,
    error: Colors.red,
    onError: Colors.white,
  );

  static const darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.white1,
    onPrimary: AppColors.black1,
    secondary: AppColors.white1,
    onSecondary: AppColors.black1,
    surface: AppColors.black1,
    onSurface: Colors.white,
    error: Colors.red,
    onError: Colors.white,
  );
}
