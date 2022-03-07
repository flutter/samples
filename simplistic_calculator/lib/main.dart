// Copyright 2022 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:window_size/window_size.dart';

void main() {
  if (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) {
    WidgetsFlutterBinding.ensureInitialized();
    setWindowTitle('Simplistic Calculator');
    setWindowMinSize(const Size(600, 500));
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
    required this.calcHistory,
    required this.mode,
    required this.error,
  });

  final String buffer;
  final List<String> calcHistory;
  final CalculatorEngineMode mode;
  final String error;

  CalculatorState copyWith({
    String? buffer,
    List<String>? calcHistory,
    CalculatorEngineMode? mode,
    String? error,
  }) =>
      CalculatorState(
        buffer: buffer ?? this.buffer,
        calcHistory: calcHistory ?? this.calcHistory,
        mode: mode ?? this.mode,
        error: error ?? this.error,
      );
}

enum CalculatorEngineMode { input, result }

class CalculatorEngine extends StateNotifier<CalculatorState> {
  CalculatorEngine()
      : super(
          const CalculatorState(
            buffer: '0',
            calcHistory: [],
            mode: CalculatorEngineMode.result,
            error: '',
          ),
        );

  void addToBuffer(String str, {bool continueWithResult = false}) {
    if (state.mode == CalculatorEngineMode.result) {
      state = state.copyWith(
        buffer: (continueWithResult ? state.buffer : '') + str,
        mode: CalculatorEngineMode.input,
        error: '',
      );
    } else {
      state = state.copyWith(
        buffer: state.buffer + str,
        error: '',
      );
    }
  }

  void backspace() {
    final charList = Characters(state.buffer).toList();
    if (charList.isNotEmpty) {
      charList.length = charList.length - 1;
    }
    state = state.copyWith(buffer: charList.join());
  }

  void clear() {
    state = state.copyWith(buffer: '');
  }

  void evaluate() {
    try {
      final parser = Parser();
      final cm = ContextModel();
      final exp = parser.parse(state.buffer);
      final result = exp.evaluate(EvaluationType.REAL, cm) as double;

      if (result.isInfinite) {
        state = state.copyWith(
          error: 'Result is Infinite',
          buffer: '',
          mode: CalculatorEngineMode.result,
        );
      } else if (result.isNaN) {
        state = state.copyWith(
          error: 'Result is Not a Number',
          buffer: '',
          mode: CalculatorEngineMode.result,
        );
      } else {
        final resultStr = result.ceil() == result
            ? result.toInt().toString()
            : result.toString();
        state = state.copyWith(
            buffer: resultStr,
            mode: CalculatorEngineMode.result,
            calcHistory: [
              '${state.buffer} = $resultStr',
              ...state.calcHistory,
            ]);
      }
    } catch (err) {
      state = state.copyWith(
        error: err.toString(),
        buffer: '',
        mode: CalculatorEngineMode.result,
      );
    }
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
    areaName: 'clear',
    op: (engine) => engine.clear(),
    label: 'AC',
  ),
  ButtonDefinition(
    areaName: 'bkspc',
    op: (engine) => engine.backspace(),
    label: '⌫',
  ),
  ButtonDefinition(
    areaName: 'lparen',
    op: (engine) => engine.addToBuffer('('),
    label: '(',
  ),
  ButtonDefinition(
    areaName: 'rparen',
    op: (engine) => engine.addToBuffer(')'),
    label: ')',
  ),
  ButtonDefinition(
    areaName: 'sqrt',
    op: (engine) => engine.addToBuffer('sqrt('),
    label: '√',
  ),
  ButtonDefinition(
    areaName: 'pow',
    op: (engine) => engine.addToBuffer('^'),
    label: '^',
  ),
  ButtonDefinition(
    areaName: 'abs',
    op: (engine) => engine.addToBuffer('abs('),
    label: 'Abs',
  ),
  ButtonDefinition(
    areaName: 'sgn',
    op: (engine) => engine.addToBuffer('sgn('),
    label: 'Sgn',
  ),
  ButtonDefinition(
    areaName: 'ceil',
    op: (engine) => engine.addToBuffer('ceil('),
    label: 'Ceil',
  ),
  ButtonDefinition(
    areaName: 'floor',
    op: (engine) => engine.addToBuffer('floor('),
    label: 'Floor',
  ),
  ButtonDefinition(
    areaName: 'e',
    op: (engine) => engine.addToBuffer('e('),
    label: 'e',
  ),
  ButtonDefinition(
    areaName: 'ln',
    op: (engine) => engine.addToBuffer('ln('),
    label: 'ln',
  ),
  ButtonDefinition(
    areaName: 'sin',
    op: (engine) => engine.addToBuffer('sin('),
    label: 'Sin',
  ),
  ButtonDefinition(
    areaName: 'cos',
    op: (engine) => engine.addToBuffer('cos('),
    label: 'Cos',
  ),
  ButtonDefinition(
    areaName: 'tan',
    op: (engine) => engine.addToBuffer('tan('),
    label: 'Tan',
  ),
  ButtonDefinition(
    areaName: 'fact',
    op: (engine) => engine.addToBuffer('!'),
    label: '!',
  ),
  ButtonDefinition(
    areaName: 'arcsin',
    op: (engine) => engine.addToBuffer('arcsin('),
    label: 'Arc Sin',
  ),
  ButtonDefinition(
    areaName: 'arccos',
    op: (engine) => engine.addToBuffer('arccos('),
    label: 'Arc Cos',
  ),
  ButtonDefinition(
    areaName: 'arctan',
    op: (engine) => engine.addToBuffer('arctan('),
    label: 'Arc Tan',
  ),
  ButtonDefinition(
    areaName: 'mod',
    op: (engine) => engine.addToBuffer('%'),
    label: 'Mod',
  ),
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
    op: (engine) => engine.evaluate(),
    label: '=',
    type: CalcButtonType.elevated,
  ),
  ButtonDefinition(
    areaName: 'plus',
    op: (engine) => engine.addToBuffer('+', continueWithResult: true),
    label: '+',
  ),
  ButtonDefinition(
    areaName: 'minus',
    op: (engine) => engine.addToBuffer('-', continueWithResult: true),
    label: '-',
  ),
  ButtonDefinition(
    areaName: 'multiply',
    op: (engine) => engine.addToBuffer('*', continueWithResult: true),
    label: '*',
  ),
  ButtonDefinition(
    areaName: 'divide',
    op: (engine) => engine.addToBuffer('/', continueWithResult: true),
    label: '/',
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
          child: SafeArea(
            child: LayoutGrid(
              areas: '''
              display display display display  history
              clear   bkspc   lparen  rparen   history
              sqrt    pow     abs     sgn      history
              ceil    floor   e       ln       history
              sin     cos     tan     fact     history
              arcsin  arccos  arctan  mod      history
              seven   eight   nine    divide   history
              four    five    six     multiply history
              one     two     three   minus    history
              zero    point   equals  plus     history
              ''',
              columnSizes: [1.fr, 1.fr, 1.fr, 1.fr, 2.fr],
              rowSizes: [
                2.fr,
                1.fr,
                1.fr,
                1.fr,
                1.fr,
                1.fr,
                2.fr,
                2.fr,
                2.fr,
                2.fr
              ],
              children: [
                NamedAreaGridPlacement(
                  areaName: 'display',
                  child: SizedBox.expand(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      child: state.error.isEmpty
                          ? AutoSizeText(
                              state.buffer,
                              textAlign: TextAlign.end,
                              style: const TextStyle(
                                fontSize: 80,
                                color: Colors.black,
                              ),
                              maxLines: 2,
                            )
                          : AutoSizeText(
                              state.error,
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                fontSize: 80,
                                color: Colors.red,
                              ),
                              maxLines: 2,
                            ),
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
                NamedAreaGridPlacement(
                  areaName: 'history',
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: ListView(
                      children: [
                        const ListTile(
                          title: Text(
                            'History',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ...state.calcHistory.map(
                          (result) => ListTile(
                            title: Text(result),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
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
        padding: const EdgeInsets.all(4),
        child: buttonConstructor(
          onPressed: () => op(ref.read(calculatorStateProvider.notifier)),
          child: AutoSizeText(
            label,
            style: const TextStyle(fontSize: 40, color: Colors.black54),
          ),
        ),
      ),
    );
  }
}
