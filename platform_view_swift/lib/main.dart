// Copyright 2018, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const PlatformView());
}

class PlatformView extends StatelessWidget {
  const PlatformView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Platform View',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const MethodChannel _methodChannel =
      MethodChannel('dev.flutter.sample/platform_view_swift');

  int _counter = 0;

  Future<void> _launchPlatformCount() async {
    final platformCounter =
        await _methodChannel.invokeMethod<int>('switchView', _counter);
    setState(() => _counter = platformCounter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Button tapped $_counter time${_counter == 1 ? '' : 's'}.',
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  const SizedBox(height: 18),
                  ElevatedButton(
                    child: const Text('Continue in iOS view'),
                    onPressed: _launchPlatformCount,
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 15, left: 5),
            child: Row(
              children: [
                const FlutterLogo(),
                Text(
                  'Flutter',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _counter++),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
