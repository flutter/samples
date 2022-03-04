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
    required this.mode,
    required this.error,
  });

  final String buffer;
  final CalculatorEngineMode mode;
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

enum CalculatorEngineMode { input, result }

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
    this.type = CalcButtonType.outlined,
  });

  final String areaName;
  final String label;
  final CalculatorEngineCallback op;
  final CalcButtonType type;
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
  ButtonDefinition(
    areaName: 'one',
    op: (engine) => engine.addToBuffer('1'),
    label: '1',
  ),
  ButtonDefinition(
    areaName: 'two',
    op: (engine) => engine.addToBuffer('2'),
    label: '2',
  ),
  ButtonDefinition(
    areaName: 'three',
    op: (engine) => engine.addToBuffer('3'),
    label: '3',
  ),
  ButtonDefinition(
    areaName: 'zero',
    op: (engine) => engine.addToBuffer('0'),
    label: '0',
  ),
  ButtonDefinition(
    areaName: 'point',
    op: (engine) => engine.addToBuffer('.'),
    label: '.',
  ),
  ButtonDefinition(
    areaName: 'equals',
    op: (engine) {},
    label: '=',
    type: CalcButtonType.elevated,
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
              ...buttonDefinitions.map(
                (definition) => NamedAreaGridPlacement(
                  areaName: definition.areaName,
                  child: CalcButton(
                    label: definition.label,
                    op: definition.op,
                    type: definition.type,
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
enum CalcButtonType { outlined, elevated }

class CalcButton extends ConsumerWidget {
  const CalcButton({
    Key? key,
    required this.op,
    required this.label,
    required this.type,
  }) : super(key: key);

  final CalculatorEngineCallback op;
  final String label;
  final CalcButtonType type;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final buttonConstructor = type == CalcButtonType.elevated
        ? ElevatedButton.new
        : OutlinedButton.new;

    return SizedBox.expand(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: buttonConstructor(
          onPressed: () => op(ref.read(calculatorStateProvider.notifier)),
          child: Text(
            label,
            style: const TextStyle(fontSize: 40, color: Colors.black54),
          ),
        ),
      ),
    );
  }
}
