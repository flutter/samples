// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';

import 'config/dependencies.dart';
import 'data/services/shared_preferences_service.dart';
import 'main.dart';

/// Development config entry point.
/// Launch with `flutter run --target lib/main_development.dart`.
/// Uses local data.
Future<void> main() async { 
  WidgetsFlutterBinding.ensureInitialized();

  Logger.root.level = Level.ALL;
  final sharedPrefsService = await SharedPreferencesService.create();

  runApp(
    MultiProvider(
      providers: [
        Provider.value(value: sharedPrefsService),
        ...providersRemote, 
      ],
      child: const MainApp(),
    ),
  );
}