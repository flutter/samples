// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp(Colors.blue));

@pragma('vm:entry-point')
void topMain() => runApp(MyApp(Colors.green));

@pragma('vm:entry-point')
void bottomMain() => runApp(MyApp(Colors.purple));

class MyApp extends StatelessWidget {
  MyApp(this.color);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: this.color,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  MethodChannel _channel;

  @override
  void initState() {
    super.initState();
    _channel = MethodChannel('multiple-flutters');
    _channel.setMethodCallHandler((MethodCall call) async {
      if (call.method == "setCount") {
        // A notification that the host platform's data model has been updated.
        setState(() {
          _counter = call.arguments as int;
        });
      } else {
        throw Exception('not implemented ${call.method}');
      }
    });
  }

  void _incrementCounter() {
    // Mutations to the data model are forwarded to the host platform.
    _channel.invokeMethod("incrementCount", _counter);
  }

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
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            TextButton(
              onPressed: _incrementCounter,
              child: Text('Add'),
            ),
            TextButton(
              onPressed: () {
                _channel.invokeMethod("next", _counter);
              },
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
