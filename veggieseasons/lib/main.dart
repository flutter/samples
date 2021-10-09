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
    const RootRestorationScope(
      restorationId: 'root',
      child: VeggieApp(),
    ),
  );
}

class VeggieApp extends StatefulWidget {
  const VeggieApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _VeggieAppState();
}

class _VeggieAppState extends State<VeggieApp> with RestorationMixin {
  final _RestorableAppState _appState = _RestorableAppState();

  @override
  String get restorationId => 'wrapper';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_appState, 'state');
  }

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
          value: _appState.value,
        ),
        ChangeNotifierProvider(
          create: (_) => Preferences()..load(),
        ),
      ],
      child: CupertinoApp(
        theme: Styles.veggieThemeData,
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(restorationId: 'home'),
        restorationScopeId: 'app',
      ),
    );
  }
}

class _RestorableAppState extends RestorableListenable<AppState> {
  @override
  AppState createDefaultValue() {
    return AppState();
  }

  @override
  AppState fromPrimitives(Object? data) {
    final appState = AppState();
    final favorites = (data as List<dynamic>).cast<int>();
    for (var id in favorites) {
      appState.setFavorite(id, true);
    }
    return appState;
  }

  @override
  Object toPrimitives() {
    return value.favoriteVeggies.map((veggie) => veggie.id).toList();
  }
}
