// Copyright 2022 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
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
  CalculatorEngine()
      : super(
          const CalculatorState(
            buffer: '0',
            error: '',
          ),
        );

  void addToBuffer(String str) {
    state = state.copyWith(
      buffer: state.buffer + str,
      error: '',
    );
  }
}

final calculatorStateProvider =
    StateNotifierProvider<CalculatorEngine, CalculatorState>(
        (_) => CalculatorEngine());

class ButtonDefinition {
  const ButtonDefinition({
    required this.areaName,
    required this.label,
    required this.op,
  });

  final String areaName;
  final String label;
  final CalculatorEngineCallback op;
}

final buttonDefinitions = <ButtonDefinition>[
  ButtonDefinition(
    areaName: 'seven',
    op: (engine) => engine.addToBuffer('7'),
    label: '7',
  ),
  ButtonDefinition(
    areaName: 'eight',
    op: (engine) => engine.addToBuffer('8'),
    label: '8',
  ),
  ButtonDefinition(
    areaName: 'nine',
    op: (engine) => engine.addToBuffer('9'),
    label: '9',
  ),
  ButtonDefinition(
    areaName: 'four',
    op: (engine) => engine.addToBuffer('4'),
    label: '4',
  ),
  ButtonDefinition(
    areaName: 'five',
    op: (engine) => engine.addToBuffer('5'),
    label: '5',
  ),
  ButtonDefinition(
    areaName: 'six',
    op: (engine) => engine.addToBuffer('6'),
    label: '6',
  ),
];

class CalculatorApp extends ConsumerWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(calculatorStateProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.white,
          child: LayoutGrid(
            areas: '''
              display display display
              seven   eight   nine
              four    five    six 
              one     two     three
              zero    point   equals
              ''',
            columnSizes: [1.fr, 1.fr, 1.fr],
            rowSizes: [
              1.fr,
              1.fr,
              1.fr,
              1.fr,
              1.fr,
            ],
            children: [
              NamedAreaGridPlacement(
                areaName: 'display',
                child: SizedBox.expand(
                  child: Text(
                    state.buffer,
                    textAlign: TextAlign.end,
                    style: const TextStyle(fontSize: 80),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

typedef CalculatorEngineCallback = void Function(CalculatorEngine engine);

class CalcButton extends ConsumerWidget {
  const CalcButton({
    Key? key,
    required this.op,
    required this.label,
  }) : super(key: key);

  final CalculatorEngineCallback op;
  final String label;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OutlinedButton(
      onPressed: () => op(ref.read(calculatorStateProvider.notifier)),
      child: Text(label),
    );
  }
}
