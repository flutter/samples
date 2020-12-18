// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart' show DeviceOrientation, SystemChrome;
import 'package:provider/provider.dart';
import 'package:veggieseasons/data/app_state.dart';
import 'package:veggieseasons/data/preferences.dart';
import 'package:veggieseasons/screens/home.dart';
import 'package:veggieseasons/styles.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(
    RootRestorationScope(
      restorationId: 'root',
      child: VeggieApp(),
    ),
  );
}

class VeggieApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _VeggieAppState();
}

class _VeggieAppState extends State<VeggieApp> {
  final _appState = AppState();

  @override
  void dispose() {
    _appState.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: _appState,
        ),
        ChangeNotifierProvider(
          create: (_) => Preferences()..load(),
        ),
      ],
      child: CupertinoApp(
        theme: Styles.veggieThemeData,
        debugShowCheckedModeBanner: false,
        home: HomeScreen(restorationId: 'home'),
        restorationScopeId: 'app',
      ),
    );
  }
}
