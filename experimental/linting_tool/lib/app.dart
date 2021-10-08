// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:linting_tool/model/profiles_store.dart';
import 'package:linting_tool/model/rules_store.dart';
import 'package:linting_tool/routes.dart' as routes;
import 'package:linting_tool/theme/app_theme.dart';
import 'package:linting_tool/widgets/adaptive_nav.dart';
import 'package:provider/provider.dart';

final client = http.Client();

class LintingTool extends StatefulWidget {
  const LintingTool({Key? key}) : super(key: key);

  static const String homeRoute = routes.homeRoute;

  @override
  _LintingToolState createState() => _LintingToolState();
}

class _LintingToolState extends State<LintingTool> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<RuleStore>(
          create: (context) => RuleStore(client),
        ),
        ChangeNotifierProvider<ProfilesStore>(
          create: (context) => ProfilesStore(client),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Linting Tool',
        theme: AppTheme.buildReplyLightTheme(context),
        darkTheme: AppTheme.buildReplyDarkTheme(context),
        themeMode: ThemeMode.light,
        initialRoute: LintingTool.homeRoute,
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case LintingTool.homeRoute:
              return MaterialPageRoute<void>(
                builder: (context) => const AdaptiveNav(),
                settings: settings,
              );
          }
          return null;
        },
      ),
    );
  }
}
