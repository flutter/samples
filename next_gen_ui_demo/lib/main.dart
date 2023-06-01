// Copyright 2023 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:window_size/window_size.dart';

import 'assets.dart';
import 'title_screen/title_screen.dart';
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

List<
    TitleScreenBase Function(
        {required void Function(Color) callback, Key? key})> steps = [
  title_screen_1a.TitleScreen.new,
  title_screen_1b.TitleScreen.new,
  title_screen_2a.TitleScreen.new,
  title_screen_2c.TitleScreen.new,
  title_screen_3a.TitleScreen.new,
  title_screen_3b.TitleScreen.new,
  title_screen_3c.TitleScreen.new,
  title_screen_4a.TitleScreen.new,
  title_screen_4b.TitleScreen.new,
  title_screen_4c.TitleScreen.new,
  title_screen_4d.TitleScreen.new,
  title_screen_4e.TitleScreen.new,
  title_screen_5a.TitleScreen.new,
  title_screen_5b.TitleScreen.new,
  title_screen_6.TitleScreen.new,
];

typedef ColorCallback = void Function(Color colorSchemeSeed);

class _NextGenAppState extends State<NextGenApp> {
  int _step = 0;
  int get step => _step;
  set step(int i) {
    _step = switch (i) {
      (int a) when a < 0 => 0,
      (int a) when a >= steps.length => steps.length - 1,
      _ => i,
    };
    debugPrint('Step ${step + 1} of ${steps.length}');
  }

  Color? colorSchemeSeed;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
        colorSchemeSeed: colorSchemeSeed,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Step ${step + 1} of ${steps.length}',
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: colorSchemeSeed),
          ),
          backgroundColor: Colors.black38,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (step > 0) ...[
              FloatingActionButton(
                child: const Icon(Icons.first_page),
                onPressed: () {
                  setState(() {
                    step = 0;
                  });
                },
              ),
              const Gap(24),
              FloatingActionButton(
                child: const Icon(Icons.arrow_back),
                onPressed: () {
                  setState(() {
                    step--;
                  });
                },
              ),
            ],
            if (step > 0 && step + 1 < steps.length) const Gap(24),
            if (step + 1 < steps.length) ...[
              FloatingActionButton(
                child: const Icon(Icons.arrow_forward),
                onPressed: () {
                  setState(() {
                    step++;
                  });
                },
              ),
              const Gap(24),
              FloatingActionButton(
                child: const Icon(Icons.last_page),
                onPressed: () {
                  setState(() {
                    step = steps.length - 1;
                  });
                },
              ),
            ],
          ],
        ),
        backgroundColor: Colors.black,
        body: steps[step](
          callback: (color) {
            setState(() {
              colorSchemeSeed = color;
            });
          },
        ),
      ),
    );
  }
}
