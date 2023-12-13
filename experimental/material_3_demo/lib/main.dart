// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'constants.dart';
import 'home.dart';

void main() {
  runApp(
    const App(),
  );
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool useMaterial3 = true;
  bool useThemeConfig = false;
  ThemeMode themeMode = ThemeMode.system;
  ColorSeed colorSelected = ColorSeed.baseColor;
  ColorImageProvider imageSelected = ColorImageProvider.leaves;
  ColorScheme? imageColorScheme = const ColorScheme.light();
  ColorSelectionMethod colorSelectionMethod = ColorSelectionMethod.colorSeed;
  ColorScheme? lightColorScheme;
  ColorScheme? darkColorScheme;

  bool get useLightMode {
    switch (themeMode) {
      case ThemeMode.system:
        return View.of(context).platformDispatcher.platformBrightness ==
            Brightness.light;
      case ThemeMode.light:
        return true;
      case ThemeMode.dark:
        return false;
    }
  }

  void handleBrightnessChange(bool useLightMode) {
    setState(() {
      themeMode = useLightMode ? ThemeMode.light : ThemeMode.dark;
    });
  }

  void handleThemeConfigChange() {
    setState(() {
      useThemeConfig = !useThemeConfig;
    });
  }

  void handleMaterialVersionChange() {
    setState(() {
      useMaterial3 = !useMaterial3;
    });
  }

  void handleColorSelect(int value) {
    clearColorScheme();
    setState(() {
      colorSelectionMethod = ColorSelectionMethod.colorSeed;
      colorSelected = ColorSeed.values[value];
    });
  }

  void handleImageSelect(int value) {
    clearColorScheme();
    final String url = ColorImageProvider.values[value].url;
    ColorScheme.fromImageProvider(provider: NetworkImage(url))
        .then((newScheme) {
      setState(() {
        colorSelectionMethod = ColorSelectionMethod.image;
        imageSelected = ColorImageProvider.values[value];
        imageColorScheme = newScheme;
      });
    });
  }

  void handleColorRoleChange(
    Brightness brightness, {
    Color? primary,
    Color? onPrimary,
    Color? primaryContainer,
    Color? onPrimaryContainer,
    Color? secondary,
    Color? onSecondary,
    Color? secondaryContainer,
    Color? onSecondaryContainer,
    Color? tertiary,
    Color? onTertiary,
    Color? tertiaryContainer,
    Color? onTertiaryContainer,
    Color? error,
    Color? onError,
    Color? errorContainer,
    Color? onErrorContainer,
    Color? background,
    Color? onBackground,
    Color? surface,
    Color? onSurface,
    Color? surfaceVariant,
    Color? onSurfaceVariant,
    Color? outline,
    Color? outlineVariant,
    Color? shadow,
    Color? scrim,
    Color? inverseSurface,
    Color? onInverseSurface,
    Color? inversePrimary,
    Color? surfaceTint,
  }) {
    ColorScheme? copyWith(ColorScheme? colorScheme) {
      return colorScheme?.copyWith(
        primary: primary,
        onPrimary: onPrimary,
        primaryContainer: primaryContainer,
        onPrimaryContainer: onPrimaryContainer,
        secondary: secondary,
        onSecondary: onSecondary,
        secondaryContainer: secondaryContainer,
        onSecondaryContainer: onSecondaryContainer,
        tertiary: tertiary,
        onTertiary: onTertiary,
        tertiaryContainer: tertiaryContainer,
        onTertiaryContainer: onTertiaryContainer,
        error: error,
        onError: onError,
        errorContainer: errorContainer,
        onErrorContainer: onErrorContainer,
        background: background,
        onBackground: onBackground,
        surface: surface,
        onSurface: onSurface,
        surfaceVariant: surfaceVariant,
        onSurfaceVariant: onSurfaceVariant,
        outline: outline,
        outlineVariant: outlineVariant,
        shadow: shadow,
        scrim: scrim,
        inverseSurface: inverseSurface,
        onInverseSurface: onInverseSurface,
        inversePrimary: inversePrimary,
        surfaceTint: surfaceTint,
      );
    }

    setState(() {
      switch (brightness) {
        case Brightness.light:
          lightColorScheme = copyWith(lightColorScheme);
        case Brightness.dark:
          darkColorScheme = copyWith(darkColorScheme);
      }
    });
  }

  void clearColorScheme() {
    lightColorScheme = null;
    darkColorScheme = null;
  }

  @override
  Widget build(BuildContext context) {
    ThemeData lightTheme = ThemeData(
      colorSchemeSeed: colorSelectionMethod == ColorSelectionMethod.colorSeed
          ? colorSelected.color
          : null,
      colorScheme: colorSelectionMethod == ColorSelectionMethod.image
          ? imageColorScheme
          : null,
      useMaterial3: useMaterial3,
      brightness: Brightness.light,
    ).copyWith(
      colorScheme: lightColorScheme,
    );

    ThemeData darkTheme = ThemeData(
      colorSchemeSeed: colorSelectionMethod == ColorSelectionMethod.colorSeed
          ? colorSelected.color
          : imageColorScheme!.primary,
      useMaterial3: useMaterial3,
      brightness: Brightness.dark,
    ).copyWith(
      colorScheme: darkColorScheme,
    );

    lightColorScheme = lightTheme.colorScheme;
    darkColorScheme = darkTheme.colorScheme;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material 3',
      themeMode: themeMode,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: Home(
        useLightMode: useLightMode,
        useMaterial3: useMaterial3,
        useThemeConfig: useThemeConfig,
        colorSelected: colorSelected,
        lightColors: lightTheme.colorScheme,
        darkColors: darkTheme.colorScheme,
        imageSelected: imageSelected,
        handleBrightnessChange: handleBrightnessChange,
        handleThemeConfigChange: handleThemeConfigChange,
        handleMaterialVersionChange: handleMaterialVersionChange,
        handleColorSelect: handleColorSelect,
        handleImageSelect: handleImageSelect,
        handleColorRoleChange: handleColorRoleChange,
        colorSelectionMethod: colorSelectionMethod,
      ),
    );
  }
}
