// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:web_startup_analyzer/web_startup_analyzer.dart';

main() async {
  var analyzer = WebStartupAnalyzer(additionalFrameCount: 10);
  var startupMetrics = analyzer.captureStartupMetrics();
  print(json.encode(startupMetrics));

  analyzer.captureFlutterFrameData().then((frameData) {
    print(json.encode(frameData));
  });

  runApp(WebStartupAnalyzerApp(
    analyzer: analyzer,
  ));
}

class WebStartupAnalyzerApp extends StatelessWidget {
  final WebStartupAnalyzer analyzer;
  const WebStartupAnalyzerApp({super.key, required this.analyzer});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter web app timing',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: WebStartupAnalyzerScreen(analyzer: analyzer),
    );
  }
}

class WebStartupAnalyzerScreen extends StatefulWidget {
  final WebStartupAnalyzer analyzer;

  const WebStartupAnalyzerScreen({super.key, required this.analyzer});

  @override
  State<WebStartupAnalyzerScreen> createState() =>
      _WebStartupAnalyzerScreenState();
}

class _WebStartupAnalyzerScreenState extends State<WebStartupAnalyzerScreen> {
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
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
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
