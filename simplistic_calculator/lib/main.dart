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

@immutable
class Display {
  const Display({
    required this.buffer,
    required this.calcHistory,
    required this.mode,
    required this.error,
  });

  final String buffer;
  final List<String> calcHistory;
  final CalculatorEngineMode mode;
  final String error;

  Display copyWith({
    String? buffer,
    List<String>? calcHistory,
    CalculatorEngineMode? mode,
    String? error,
  }) =>
      Display(
        buffer: buffer ?? this.buffer,
        calcHistory: calcHistory ?? this.calcHistory,
        mode: mode ?? this.mode,
        error: error ?? this.error,
      );
}

enum CalculatorEngineMode { input, result }

class CalculatorEngine extends StateNotifier<Display> {
  CalculatorEngine()
      : super(
          const Display(
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
        if (result.ceil() == result) {
          state = state.copyWith(
            buffer: result.toInt().toString(),
            mode: CalculatorEngineMode.result,
          );
        } else {
          state = state.copyWith(
            buffer: result.toString(),
            mode: CalculatorEngineMode.result,
          );
        }
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

final displayProvider =
    StateNotifierProvider<CalculatorEngine, Display>((_) => CalculatorEngine());

void main() {
  setupWindow();
  runApp(
    const ProviderScope(
      child: CalculatorApp(),
    ),
  );
}

const double kWindowWidth = 600;
const double kWindowHeight = 900;

void setupWindow() {
  if (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) {
    WidgetsFlutterBinding.ensureInitialized();
    setWindowTitle('Simplistic Calculator');
    setWindowMinSize(const Size(kWindowWidth, kWindowHeight));
    getCurrentScreen().then((screen) {
      setWindowFrame(
        const Rect.fromLTWH(
          300,
          300,
          kWindowHeight,
          kWindowWidth,
        ),
      );
    });
  }
}

class CalculatorApp extends ConsumerWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Display display = ref.watch(displayProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.white,
          child: SafeArea(
            child: LayoutGrid(
              areas: '''
              display display display display
              clear   bkspc   lparen  rparen
              sqrt    pow     abs     sgn
              ceil    floor   e       ln
              sin     cos     tan     fact
              arcsin  arccos  arctan  mod
              seven   eight   nine    divide
              four    five    six     multiply
              one     two     three   minus
              zero    point   equals  plus
              ''',
              columnSizes: [1.fr, 1.fr, 1.fr, 1.fr],
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
                      child: display.error.isEmpty
                          ? AutoSizeText(
                              display.buffer,
                              textAlign: TextAlign.end,
                              style: const TextStyle(
                                fontSize: 80,
                                color: Colors.black,
                              ),
                              maxLines: 2,
                            )
                          : AutoSizeText(
                              display.error,
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
                NamedAreaGridPlacement(
                  areaName: 'clear',
                  child: CalcButton(
                    op: (engine) => engine.clear(),
                    label: 'AC',
                  ),
                ),
                NamedAreaGridPlacement(
                  areaName: 'bkspc',
                  child: CalcButton(
                    op: (engine) => engine.backspace(),
                    label: '⌫',
                  ),
                ),
                NamedAreaGridPlacement(
                  areaName: 'lparen',
                  child: CalcButton(
                    op: (engine) => engine.addToBuffer('('),
                    label: '(',
                  ),
                ),
                NamedAreaGridPlacement(
                  areaName: 'rparen',
                  child: CalcButton(
                    op: (engine) => engine.addToBuffer(')'),
                    label: ')',
                  ),
                ),
                NamedAreaGridPlacement(
                  areaName: 'sqrt',
                  child: CalcButton(
                    op: (engine) => engine.addToBuffer('sqrt('),
                    label: '√',
                  ),
                ),
                NamedAreaGridPlacement(
                  areaName: 'pow',
                  child: CalcButton(
                    op: (engine) => engine.addToBuffer('^'),
                    label: '^',
                  ),
                ),
                NamedAreaGridPlacement(
                  areaName: 'abs',
                  child: CalcButton(
                    op: (engine) => engine.addToBuffer('abs('),
                    label: 'Abs',
                  ),
                ),
                NamedAreaGridPlacement(
                  areaName: 'sgn',
                  child: CalcButton(
                    op: (engine) => engine.addToBuffer('sgn('),
                    label: 'Sgn',
                  ),
                ),
                NamedAreaGridPlacement(
                  areaName: 'ceil',
                  child: CalcButton(
                    op: (engine) => engine.addToBuffer('ceil('),
                    label: 'Ceil',
                  ),
                ),
                NamedAreaGridPlacement(
                  areaName: 'floor',
                  child: CalcButton(
                    op: (engine) => engine.addToBuffer('floor('),
                    label: 'Floor',
                  ),
                ),
                NamedAreaGridPlacement(
                  areaName: 'e',
                  child: CalcButton(
                    op: (engine) => engine.addToBuffer('e('),
                    label: 'e',
                  ),
                ),
                NamedAreaGridPlacement(
                  areaName: 'ln',
                  child: CalcButton(
                    op: (engine) => engine.addToBuffer('ln('),
                    label: 'ln',
                  ),
                ),
                NamedAreaGridPlacement(
                  areaName: 'sin',
                  child: CalcButton(
                    op: (engine) => engine.addToBuffer('sin('),
                    label: 'Sin',
                  ),
                ),
                NamedAreaGridPlacement(
                  areaName: 'cos',
                  child: CalcButton(
                    op: (engine) => engine.addToBuffer('cos('),
                    label: 'Cos',
                  ),
                ),
                NamedAreaGridPlacement(
                  areaName: 'tan',
                  child: CalcButton(
                    op: (engine) => engine.addToBuffer('tan('),
                    label: 'Tan',
                  ),
                ),
                NamedAreaGridPlacement(
                  areaName: 'fact',
                  child: CalcButton(
                    op: (engine) => engine.addToBuffer('!'),
                    label: '!',
                  ),
                ),
                NamedAreaGridPlacement(
                  areaName: 'arcsin',
                  child: CalcButton(
                    op: (engine) => engine.addToBuffer('arcsin('),
                    label: 'Arc Sin',
                  ),
                ),
                NamedAreaGridPlacement(
                  areaName: 'arccos',
                  child: CalcButton(
                    op: (engine) => engine.addToBuffer('arccos('),
                    label: 'Arc Cos',
                  ),
                ),
                NamedAreaGridPlacement(
                  areaName: 'arctan',
                  child: CalcButton(
                    op: (engine) => engine.addToBuffer('arctan('),
                    label: 'Arc Tan',
                  ),
                ),
                NamedAreaGridPlacement(
                  areaName: 'mod',
                  child: CalcButton(
                    op: (engine) => engine.addToBuffer('%'),
                    label: 'Mod',
                  ),
                ),
                NamedAreaGridPlacement(
                  areaName: 'seven',
                  child: CalcButton(
                    op: (engine) => engine.addToBuffer('7'),
                    label: '7',
                  ),
                ),
                NamedAreaGridPlacement(
                  areaName: 'eight',
                  child: CalcButton(
                    op: (engine) => engine.addToBuffer('8'),
                    label: '8',
                  ),
                ),
                NamedAreaGridPlacement(
                  areaName: 'nine',
                  child: CalcButton(
                    op: (engine) => engine.addToBuffer('9'),
                    label: '9',
                  ),
                ),
                NamedAreaGridPlacement(
                  areaName: 'four',
                  child: CalcButton(
                    op: (engine) => engine.addToBuffer('4'),
                    label: '4',
                  ),
                ),
                NamedAreaGridPlacement(
                  areaName: 'five',
                  child: CalcButton(
                    op: (engine) => engine.addToBuffer('5'),
                    label: '5',
                  ),
                ),
                NamedAreaGridPlacement(
                  areaName: 'six',
                  child: CalcButton(
                    op: (engine) => engine.addToBuffer('6'),
                    label: '6',
                  ),
                ),
                NamedAreaGridPlacement(
                  areaName: 'one',
                  child: CalcButton(
                    op: (engine) => engine.addToBuffer('1'),
                    label: '1',
                  ),
                ),
                NamedAreaGridPlacement(
                  areaName: 'two',
                  child: CalcButton(
                    op: (engine) => engine.addToBuffer('2'),
                    label: '2',
                  ),
                ),
                NamedAreaGridPlacement(
                  areaName: 'three',
                  child: CalcButton(
                    op: (engine) => engine.addToBuffer('3'),
                    label: '3',
                  ),
                ),
                NamedAreaGridPlacement(
                  areaName: 'zero',
                  child: CalcButton(
                    op: (engine) => engine.addToBuffer('0'),
                    label: '0',
                  ),
                ),
                NamedAreaGridPlacement(
                  areaName: 'point',
                  child: CalcButton(
                    op: (engine) => engine.addToBuffer('.'),
                    label: '.',
                  ),
                ),
                NamedAreaGridPlacement(
                  areaName: 'equals',
                  child: const CalcEqualsButton(),
                ),
                NamedAreaGridPlacement(
                  areaName: 'plus',
                  child: CalcButton(
                    op: (engine) => engine.addToBuffer(
                      '+',
                      continueWithResult: true,
                    ),
                    label: '+',
                  ),
                ),
                NamedAreaGridPlacement(
                  areaName: 'minus',
                  child: CalcButton(
                    op: (engine) => engine.addToBuffer(
                      '-',
                      continueWithResult: true,
                    ),
                    label: '-',
                  ),
                ),
                NamedAreaGridPlacement(
                  areaName: 'multiply',
                  child: CalcButton(
                    op: (engine) => engine.addToBuffer(
                      '*',
                      continueWithResult: true,
                    ),
                    label: '*',
                  ),
                ),
                NamedAreaGridPlacement(
                  areaName: 'divide',
                  child: CalcButton(
                    op: (engine) => engine.addToBuffer(
                      '/',
                      continueWithResult: true,
                    ),
                    label: '/',
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

class CalcEqualsButton extends ConsumerWidget {
  const CalcEqualsButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox.expand(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () => ref.read(displayProvider.notifier).evaluate(),
          child: const AutoSizeText(
            '=',
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

typedef _CalculatorEngineCallback = void Function(CalculatorEngine engine);

class CalcButton extends ConsumerWidget {
  const CalcButton({
    Key? key,
    required this.op,
    required this.label,
  }) : super(key: key);

  final _CalculatorEngineCallback op;
  final String label;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox.expand(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: OutlinedButton(
          onPressed: () => op(ref.read(displayProvider.notifier)),
          child: AutoSizeText(
            label,
            style: const TextStyle(fontSize: 40, color: Colors.black54),
          ),
        ),
      ),
    );
  }
}
