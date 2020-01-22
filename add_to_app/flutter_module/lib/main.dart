// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

/// The entrypoint for the flutter module.
void main() {
  // This call ensures the Flutter binding has been set up before creating the
  // MethodChannel-based model.
  WidgetsFlutterBinding.ensureInitialized();

  final model = CounterModel();

  runApp(
    ChangeNotifierProvider.value(
      value: model,
      child: MyApp(),
    ),
  );
}

/// A simple model that uses a [MethodChannel] as the source of truth for the
/// state of a counter.
///
/// Rather than storing app state data within the Flutter module itself (where
/// the native portions of the app can't access it), this module passes messages
/// back to the containing app whenever it needs to increment or retrieve the
/// value of the counter.
class CounterModel extends ChangeNotifier {
  CounterModel() {
    _channel.setMethodCallHandler(_handleMessage);
    _channel.invokeMethod('requestCounter');
  }

  final _channel = MethodChannel('dev.flutter.example/counter');

  int _count = 0;

  int get count => _count;

  void increment() {
    _channel.invokeMethod('incrementCounter');
  }

  Future<dynamic> _handleMessage(MethodCall call) async {
    if (call.method == 'reportCounter') {
      _count = call.arguments as int;
      notifyListeners();
    }
  }
}

/// The "app" displayed by this module.
///
/// It offers two routes, one suitable for displaying as a full screen and
/// another designed to be part of a larger UI.class MyApp extends StatelessWidget {
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Module Title',
      routes: {
        '/': (context) => FullScreenView(),
        '/mini': (context) => Contents(),
      },
    );
  }
}

/// Wraps [Contents] in a Material [Scaffold] so it looks correct when displayed
/// full-screen.
class FullScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Full-screen Flutter'),
      ),
      body: const Contents(showExit: true),
    );
  }
}

/// The actual content displayed by the module.
///
/// This widget displays info about the state of a counter and how much room (in
/// logical pixels) it's been given. It also offers buttons to increment the
/// counter and (optionally) close the Flutter view.
class Contents extends StatelessWidget {
  final bool showExit;

  const Contents({this.showExit = false});

  @override
  Widget build(BuildContext context) {
    final mediaInfo = MediaQuery.of(context);

    return SizedBox.expand(
      child: Stack(
        children: [
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
            ),
          ),
          Positioned.fill(
            child: Opacity(
              opacity: .25,
              child: FittedBox(
                fit: BoxFit.cover,
                child: FlutterLogo(),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Window is ${mediaInfo.size.width.toStringAsFixed(1)} x '
                  '${mediaInfo.size.height.toStringAsFixed(1)}',
                  style: Theme.of(context).textTheme.headline,
                ),
                SizedBox(height: 16),
                Consumer<CounterModel>(
                  builder: (context, model, child) {
                    return Text(
                      'Taps: ${model.count}',
                      style: Theme.of(context).textTheme.headline,
                    );
                  },
                ),
                SizedBox(height: 16),
                Consumer<CounterModel>(
                  builder: (context, model, child) {
                    return RaisedButton(
                      onPressed: () => model.increment(),
                      child: Text('Tap me!'),
                    );
                  },
                ),
                if (showExit) ...[
                  SizedBox(height: 16),
                  RaisedButton(
                    onPressed: () => SystemNavigator.pop(),
                    child: Text('Exit this screen'),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
