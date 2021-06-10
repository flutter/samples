// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sensors/sensors.dart';

// This is on alternate entrypoint for this module to display Flutter UI in
// a (multi-)view integration scenario.
void main() {
  runApp(const Cell());
}

class Cell extends StatefulWidget {
  const Cell({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CellState();
}

class _CellState extends State<Cell> with WidgetsBindingObserver {
  static const double gravity = 9.81;
  static final AccelerometerEvent defaultPosition = AccelerometerEvent(0, 0, 0);

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
    WidgetsBinding.instance!.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
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

    return Color.fromARGB(255, _random!.nextInt(50) + 205,
        _random!.nextInt(50) + 205, _random!.nextInt(50) + 205);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // The Flutter cells will be noticeably different (due to background color
      // and the Flutter logo). The banner breaks immersion.
      debugShowCheckedModeBanner: false,
      home: Container(
        color: Colors.white,
        child: Builder(
          builder: (context) {
            return Card(
              // Mimic the platform Material look.
              margin: const EdgeInsets.symmetric(horizontal: 36, vertical: 24),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 16,
              color: randomLightColor(),
              child: Stack(
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          // Show a number provided by the platform based on
                          // the cell's index.
                          cellNumber.toString(),
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 42,
                    top: 0,
                    bottom: 0,
                    child: Opacity(
                      opacity: 0.2,
                      child: StreamBuilder<AccelerometerEvent>(
                        // Don't continuously rebuild for nothing when the
                        // cell isn't visible.
                        stream: appLifecycleState == AppLifecycleState.resumed
                            ? accelerometerEvents
                            : Stream.value(defaultPosition),
                        initialData: defaultPosition,
                        builder: (context, snapshot) {
                          return Transform(
                              // Figure out the phone's orientation relative
                              // to gravity's direction. Ignore the z vector.
                              transform: Matrix4.rotationX(
                                  snapshot.data!.y / gravity * pi / 2)
                                ..multiply(Matrix4.rotationY(
                                    snapshot.data!.x / gravity * pi / 2)),
                              alignment: Alignment.center,
                              child: const FlutterLogo(size: 72));
                        },
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
