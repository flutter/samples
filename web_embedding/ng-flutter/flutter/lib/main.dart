import 'dart:js_interop' show createJSInteropWrapper;

import 'package:flutter/material.dart';

import 'pages/counter.dart';
import 'pages/dash.dart';
import 'pages/text.dart';

import 'src/js_interop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ValueNotifier<DemoScreen> _screen =
      ValueNotifier<DemoScreen>(DemoScreen.counter);
  final ValueNotifier<int> _counter = ValueNotifier<int>(0);
  final ValueNotifier<String> _text = ValueNotifier<String>('');

  late final DemoAppStateManager _state = DemoAppStateManager(
    screen: _screen,
    counter: _counter,
    text: _text,
  );

  @override
  void initState() {
    super.initState();
    final export = createJSInteropWrapper(_state);

    // Emit this through the root object of the flutter app :)
    broadcastAppEvent('flutter-initialized', export);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Element embedding',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: ValueListenableBuilder<DemoScreen>(
        valueListenable: _screen,
        builder: (context, value, child) => demoScreenRouter(value),
      ),
    );
  }

  Widget demoScreenRouter(DemoScreen which) => switch (which) {
        DemoScreen.counter => CounterDemo(counter: _counter),
        DemoScreen.text => TextFieldDemo(text: _text),
        DemoScreen.dash => DashDemo(text: _text)
      };
}
