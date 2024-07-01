import 'package:compass_app/common/themes/colors.dart';
import 'package:compass_app/common/themes/text_styles.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.black1,
      onPrimary: AppColors.white1,
      secondary: AppColors.black1,
      onSecondary: AppColors.white1,
      surface: Colors.white,
      onSurface: AppColors.black1,
      error: Colors.red,
      onError: Colors.white,
    ),
  );
}
