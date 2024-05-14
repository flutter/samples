// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:web_startup_analyzer/web_startup_analyzer.dart';

main() async {
  var analyzer = WebStartupAnalyzer(additionalFrameCount: 10);
  print(json.encode(analyzer.startupTiming));
  analyzer.onFirstFrame.addListener(() {
    print(json.encode({'firstFrame': analyzer.onFirstFrame.value}));
  });
  analyzer.onFirstPaint.addListener(() {
    print(json.encode({
      'firstPaint': analyzer.onFirstPaint.value?.$1,
      'firstContentfulPaint': analyzer.onFirstPaint.value?.$2,
    }));
  });
  analyzer.onAdditionalFrames.addListener(() {
    print(json.encode({
      'additionalFrames': analyzer.onAdditionalFrames.value,
    }));
  });
  runApp(
    WebStartupAnalyzerSample(
      analyzer: analyzer,
    ),
  );
}

class WebStartupAnalyzerSample extends StatelessWidget {
  final WebStartupAnalyzer analyzer;
  const WebStartupAnalyzerSample({super.key, required this.analyzer});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter web app timing',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green.shade100),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade50,
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: const EdgeInsets.all(8.0),
          constraints: const BoxConstraints(maxWidth: 400),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: ListenableBuilder(
            listenable: widget.analyzer.onChange,
            builder: (BuildContext context, child) {
              return ListView(
                shrinkWrap: true,
                children: [
                  TimingWidget(
                    name: 'DCL',
                    timingMs: widget.analyzer.domContentLoaded,
                  ),
                  TimingWidget(
                    name: 'Load entrypoint',
                    timingMs: widget.analyzer.loadEntrypoint,
                  ),
                  TimingWidget(
                    name: 'Initialize engine',
                    timingMs: widget.analyzer.initializeEngine,
                  ),
                  TimingWidget(
                    name: 'Run app',
                    timingMs: widget.analyzer.appRunnerRunApp,
                  ),
                  if (widget.analyzer.firstFrame != null)
                    TimingWidget(
                      name: 'First frame',
                      timingMs: widget.analyzer.firstFrame!,
                    ),
                  if (widget.analyzer.firstPaint != null)
                    TimingWidget(
                        name: 'First paint',
                        timingMs: widget.analyzer.firstPaint!),
                  if (widget.analyzer.firstContentfulPaint != null)
                    TimingWidget(
                        name: 'First contentful paint',
                        timingMs: widget.analyzer.firstContentfulPaint!),
                  if (widget.analyzer.additionalFrames != null) ...[
                    for (var i in widget.analyzer.additionalFrames!)
                      TimingWidget(name: 'Frame', timingMs: i.toDouble()),
                  ] else
                    TextButton(
                      child: const Text('Trigger frames'),
                      onPressed: () {},
                    ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class TimingWidget extends StatelessWidget {
  final String name;
  final double timingMs;

  const TimingWidget({
    super.key,
    required this.name,
    required this.timingMs,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name,
        style: const TextStyle(fontSize: 18),
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Text(
        '${timingMs.truncate()}ms',
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}
