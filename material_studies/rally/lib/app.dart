import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'colors.dart';
import 'package:rally/home.dart';
import 'package:rally/login.dart';

/// The RallyApp is a MaterialApp with a theme and 2 routes.
///
/// The home route is the main page with tabs for sub pages.
/// The login route is the initial route.
class RallyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rally Proto',
      theme: _buildRallyTheme(),
      home: HomePage(),
      initialRoute: '/login',
      routes: {'/login': (BuildContext context) => LoginPage()},
    );
  }

  ThemeData _buildRallyTheme() {
    final ThemeData base = ThemeData.dark();
    return ThemeData(
      scaffoldBackgroundColor: RallyColors.primaryBackground,
      primaryColor: RallyColors.primaryBackground,
      textTheme: _buildRallyTextTheme(base.textTheme),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle:
        TextStyle(color: RallyColors.gray, fontWeight: FontWeight.w500),
        filled: true,
        fillColor: RallyColors.inputBackground,
        focusedBorder: InputBorder.none,
      ),
    );
  }

  TextTheme _buildRallyTextTheme(TextTheme base) {
    return base
        .copyWith(
        body1: base.body1.copyWith(
          fontFamily: "Roboto Condensed",
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
        ),
        headline: base.body2.copyWith(
          fontFamily: "Eczar",
          fontSize: 40.0,
          fontWeight: FontWeight.w600,
          letterSpacing: 1.4,
        ),
        body2: base.body2.copyWith(
          fontFamily: "Eczar",
          fontSize: 40.0,
          fontWeight: FontWeight.w400,
          letterSpacing: 1.4,
        ),
        button: base.button.copyWith(
          fontFamily: "Roboto Condensed",
          fontWeight: FontWeight.w700,
          letterSpacing: 2.8,
        ))
        .apply(
      displayColor: Colors.white,
      bodyColor: Colors.white,
    );
  }
}
