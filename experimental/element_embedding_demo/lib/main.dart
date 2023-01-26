// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:js/js.dart' as js;
import 'package:js/js_util.dart' as js_util;

void main() {
  runApp(const MyApp());
}

enum DemoScreen { counter, textField, custom }

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

@js.JSExport()
class _MyAppState extends State<MyApp> {
  final _streamController = StreamController<void>.broadcast();
  DemoScreen _currentDemoScreen = DemoScreen.counter;
  int _counterScreenCount = 0;

  @override
  void initState() {
    super.initState();
    final export = js_util.createDartExport(this);
    js_util.setProperty(js_util.globalThis, '_appState', export);
    js_util.callMethod<void>(js_util.globalThis, '_stateSet', []);
  }

  @override
  void dispose() {
    _streamController.close();
    super.dispose();
  }

  @js.JSExport()
  void increment() {
    if (_currentDemoScreen == DemoScreen.counter) {
      setState(() {
        _counterScreenCount++;
        _streamController.add(null);
      });
    }
  }

  @js.JSExport()
  void addHandler(void Function() handler) {
    _streamController.stream.listen((event) {
      handler();
    });
  }

  @js.JSExport()
  int get count => _counterScreenCount;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Element embedding',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: demoScreenRouter(_currentDemoScreen),
    );
  }

  Widget demoScreenRouter(DemoScreen which) {
    switch (which) {
      case DemoScreen.counter:
        return CounterDemo(
          title: 'Counter',
          numToDisplay: _counterScreenCount,
          incrementHandler: increment,
        );
      case DemoScreen.textField:
        return const TextFieldDemo(title: 'Note to Self');
      case DemoScreen.custom:
        return const CustomDemo(title: 'Character Counter');
    }
  }

  @js.JSExport()
  void changeDemoScreenTo(String screenString) {
    setState(() {
      switch (screenString) {
        case 'counter':
          _currentDemoScreen = DemoScreen.counter;
          break;
        case 'textField':
          _currentDemoScreen = DemoScreen.textField;
          break;
        case 'custom':
          _currentDemoScreen = DemoScreen.custom;
          break;
        default:
          _currentDemoScreen = DemoScreen.counter;
          break;
      }
    });
  }
}

class CounterDemo extends StatefulWidget {
  final String title;
  final int numToDisplay;
  final VoidCallback incrementHandler;

  const CounterDemo({
    super.key,
    required this.title,
    required this.numToDisplay,
    required this.incrementHandler,
  });

  @override
  State<CounterDemo> createState() => _CounterDemoState();
}

class _CounterDemoState extends State<CounterDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${widget.numToDisplay}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: widget.incrementHandler,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class TextFieldDemo extends StatelessWidget {
  const TextFieldDemo({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(14.0),
          child: TextField(
            maxLines: null,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              // hintText: 'Text goes here!',
            ),
          ),
        ),
      ),
    );
  }
}

class CustomDemo extends StatefulWidget {
  final String title;

  const CustomDemo({super.key, required this.title});

  @override
  State<CustomDemo> createState() => _CustomDemoState();
}

class _CustomDemoState extends State<CustomDemo> {
  final double textFieldHeight = 80;
  final Color colorPrimary = const Color(0xff027dfd);
  // const Color(0xffd43324);
  // const Color(0xff6200ee);
  // const Color.fromARGB(255, 255, 82, 44);
  final TextEditingController _textController = TextEditingController();
  late FocusNode textFocusNode;

  int totalCharCount = 0;

  @override
  void initState() {
    super.initState();
    textFocusNode = FocusNode();
    textFocusNode.requestFocus();
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height - textFieldHeight,
        flexibleSpace: Container(
          color: colorPrimary,
          height: MediaQuery.of(context).size.height - textFieldHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'COUNT WITH DASH!',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              const SizedBox(
                height: 26,
              ),
              Container(
                width: 98,
                height: 98,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.white),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Container(
                    width: 90,
                    height: 90,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/dash.png'),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                totalCharCount.toString(),
                style: const TextStyle(color: Colors.white, fontSize: 52),
              ),
              // const Text(
              //   'characters typed',
              //   style: TextStyle(color: Colors.white, fontSize: 14),
              // ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: textFieldHeight,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 18, right: 18),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _textController,
                        focusNode: textFocusNode,
                        onSubmitted: (value) {
                          textFocusNode.requestFocus();
                        },
                        onChanged: (value) {
                          handleChange();
                        },
                        maxLines: 1,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Center(
                      child: Container(
                        width: 42,
                        height: 42,
                        decoration: BoxDecoration(
                          color: colorPrimary,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.refresh),
                          color: Colors.white,
                          onPressed: () {
                            handleClear();
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void handleChange() {
    setState(() {
      totalCharCount = _textController.value.text.toString().length;
    });
  }

  void handleClear() {
    setState(() {
      _textController.clear();
      totalCharCount = 0;
    });
    textFocusNode.requestFocus();
  }
}
