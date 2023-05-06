// Copyright 2023 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'package:window_size/window_size.dart';

import 'assets.dart';
import 'title_screen_1a/title_screen.dart' as title_screen_1a;
import 'title_screen_1b/title_screen.dart' as title_screen_1b;
import 'title_screen_2a/title_screen.dart' as title_screen_2a;
import 'title_screen_2c/title_screen.dart' as title_screen_2c;
import 'title_screen_3a/title_screen.dart' as title_screen_3a;
import 'title_screen_3b/title_screen.dart' as title_screen_3b;
import 'title_screen_3c/title_screen.dart' as title_screen_3c;
import 'title_screen_4a/title_screen.dart' as title_screen_4a;
import 'title_screen_4b/title_screen.dart' as title_screen_4b;
import 'title_screen_4c/title_screen.dart' as title_screen_4c;
import 'title_screen_4d/title_screen.dart' as title_screen_4d;
import 'title_screen_4e/title_screen.dart' as title_screen_4e;
import 'title_screen_5a/title_screen.dart' as title_screen_5a;
import 'title_screen_5b/title_screen.dart' as title_screen_5b;
import 'title_screen_6/title_screen.dart' as title_screen_6;

void main() {
  if (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) {
    WidgetsFlutterBinding.ensureInitialized();
    setWindowMinSize(const Size(800, 500));
  }
  Animate.restartOnHotReload = true;
  runApp(
    FutureProvider<Shaders?>(
      create: (context) => loadShaders(),
      initialData: null,
      child: const NextGenApp(),
    ),
  );
}

class NextGenApp extends StatefulWidget {
  const NextGenApp({super.key});

  @override
  State<NextGenApp> createState() => _NextGenAppState();
}

List<Widget> steps = [
  const title_screen_1a.TitleScreen(),
  const title_screen_1b.TitleScreen(),
  const title_screen_2a.TitleScreen(),
  const title_screen_2c.TitleScreen(),
  const title_screen_3a.TitleScreen(),
  const title_screen_3b.TitleScreen(),
  const title_screen_3c.TitleScreen(),
  const title_screen_4a.TitleScreen(),
  const title_screen_4b.TitleScreen(),
  const title_screen_4c.TitleScreen(),
  const title_screen_4d.TitleScreen(),
  const title_screen_4e.TitleScreen(),
  const title_screen_5a.TitleScreen(),
  const title_screen_5b.TitleScreen(),
  const title_screen_6.TitleScreen(),
];

class _NextGenAppState extends State<NextGenApp> {
  int step = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.arrow_forward),
          onPressed: () {
            setState(() {
              step++;
              if (step >= steps.length) {
                step = 0;
              }
            });
          },
        ),
        backgroundColor: Colors.black,
        body: steps[step],
      ),
    );
  }
}
