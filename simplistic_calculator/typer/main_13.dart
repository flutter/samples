// Copyright 2022 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:window_size/window_size.dart';

void main() {
  if (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) {
    WidgetsFlutterBinding.ensureInitialized();
    setWindowTitle('Simplistic Calculator');
  }

  runApp(
    const ProviderScope(
      child: CalculatorApp(),
    ),
  );
}

@immutable
class CalculatorState {
  const CalculatorState({
    required this.buffer,
    required this.error,
  });

  final String buffer;
  final String error;

  CalculatorState copyWith({
    String? buffer,
    String? error,
  }) =>
      CalculatorState(
        buffer: buffer ?? this.buffer,
        error: error ?? this.error,
      );
}

class CalculatorEngine extends StateNotifier<CalculatorState> {
  CalculatorEngine(CalculatorState state) : super(state);
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.white,
          child: const Center(
            child: Text(
              'Hello GDSC!',
              style: TextStyle(fontSize: 40),
            ),
          ),
        ),
      ),
    );
  }
}
