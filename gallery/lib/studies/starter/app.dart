// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:gallery/data/gallery_options.dart';
import 'package:gallery/l10n/gallery_localizations.dart';
import 'package:gallery/layout/focus_traversal_policy.dart';
import 'package:gallery/pages/home.dart' as home;
import 'package:gallery/studies/starter/home.dart';

const _primaryColor = Color(0xFF6200EE);

class StarterApp extends StatefulWidget {
  const StarterApp({Key key, this.navigatorKey}) : super(key: key);

  final GlobalKey<NavigatorState> navigatorKey;

  @override
  _StarterAppState createState() => _StarterAppState();
}

class _StarterAppState extends State<StarterApp> {
  FocusNode firstFocusNode;
  FocusNode lastFocusNode;

  @override
  void initState() {
    super.initState();
    firstFocusNode = FocusNode();
    lastFocusNode = FocusNode();
  }

  @override
  void dispose() {
    firstFocusNode.dispose();
    lastFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final backButtonFocusNode =
        home.InheritedFocusNodes.of(context).backButtonFocusNode;

    return MaterialApp(
      navigatorKey: widget.navigatorKey,
      title: GalleryLocalizations.of(context).starterAppTitle,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: GalleryLocalizations.localizationsDelegates,
      supportedLocales: GalleryLocalizations.supportedLocales,
      locale: GalleryOptions.of(context).locale,
      home: FocusTraversalGroup(
        policy: EdgeChildrenFocusTraversalPolicy(
          firstFocusNodeOutsideScope: backButtonFocusNode,
          lastFocusNodeOutsideScope: backButtonFocusNode,
          firstFocusNodeInsideScope: firstFocusNode,
          lastFocusNodeInsideScope: lastFocusNode,
        ),
        child: ApplyTextOptions(
          child: HomePage(
            firstFocusNode: firstFocusNode,
            lastFocusNode: lastFocusNode,
          ),
        ),
      ),
      theme: ThemeData(
        primaryColor: _primaryColor,
        highlightColor: Colors.transparent,
        colorScheme: ColorScheme(
          primary: _primaryColor,
          primaryVariant: const Color(0xFF3700B3),
          secondary: const Color(0xFF03DAC6),
          secondaryVariant: const Color(0xFF018786),
          background: Colors.white,
          surface: Colors.white,
          onBackground: Colors.black,
          error: const Color(0xFFB00020),
          onError: Colors.white,
          onPrimary: Colors.white,
          onSecondary: Colors.black,
          onSurface: Colors.black,
          brightness: Brightness.light,
        ),
        dividerTheme: DividerThemeData(
          thickness: 1,
          color: const Color(0xFFE5E5E5),
        ),
        platform: GalleryOptions.of(context).platform,
      ),
    );
  }
}
