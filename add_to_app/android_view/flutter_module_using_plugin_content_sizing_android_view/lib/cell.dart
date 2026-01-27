// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sensors_plus/sensors_plus.dart';

// This is on alternate entrypoint for this module to display Flutter UI in
// a (multi-)view integration scenario.
void main() {
  runApp(const Cell());
}

class Cell extends StatefulWidget {
  const Cell({super.key});

  @override
  State<StatefulWidget> createState() => _CellState();
}

const String text = '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum facilisis vel quam nec scelerisque. Nullam leo sapien, ornare blandit dui ac, varius condimentum leo.  Vestibulum quis sem vulputate, varius dui nec, malesuada sem. Aliquam tincidunt pretium dolor, quis ullamcorper nunc consequat quis.  Donec at dui in ex pharetra pretium. Quisque molestie massa vel tellus scelerisque feugiat. Ut sed consect etur neque.

''';

class _CellState extends State<Cell> with WidgetsBindingObserver {
  static const double gravity = 9.81;
  static final AccelerometerEvent defaultPosition = AccelerometerEvent(
    0,
    0,
    0,
    DateTime.now(),
  );

  int cellNumber = 0;
  Random? _random;
  AppLifecycleState? appLifecycleState;

  @override
  void initState() {
    const channel = MethodChannel('dev.flutter.example/cell');
    channel.setMethodCallHandler((call) async {
      if (call.method == 'setCellNumber') {
        setState(() {
          cellNumber = call.arguments as int;
          _random = Random(cellNumber);
        });
      }
    });
    // Keep track of what the current platform lifecycle state is.
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    setState(() {
      appLifecycleState = state;
    });
  }

  // Show a random bright color.
  Color randomLightColor() {
    _random ??= Random(cellNumber);

    return Color.fromARGB(
      255,
      _random!.nextInt(50) + 205,
      _random!.nextInt(50) + 205,
      _random!.nextInt(50) + 205,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text(text * ((cellNumber % 4) + 1), 
      textDirection: TextDirection.ltr,
      style: TextStyle(fontSize: 20.0));
  }
}
