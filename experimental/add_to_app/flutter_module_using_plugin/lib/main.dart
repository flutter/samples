// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart' as paths;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Module Title',
      routes: {
        '/': (context) => FullScreenView(),
        '/mini': (context) => MiniView(),
      },
    );
  }
}

class FullScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('A Full-screen Flutter View'),
      ),
      body: const MiniView(showExit: true),
    );
  }
}

class MiniView extends StatefulWidget {
  final bool showExit;

  const MiniView({this.showExit = false});

  @override
  _MiniViewState createState() => _MiniViewState();
}

class _MiniViewState extends State<MiniView> {
  int count = 0;

  // Start off with a completed future so the FutureBuilder code below doesn't
  // need to worry about null.
  Future<void> saveFuture = Future.sync((){});

  Future<void> _saveCount() async {
    final dir = await paths.getApplicationDocumentsDirectory();
    final file = File('${dir.path}/count.txt');
    setState(() {
      saveFuture = file.writeAsString('$count\n');
    });
  }

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
                Text(
                  'Taps: $count',
                  style: Theme.of(context).textTheme.headline,
                ),
                SizedBox(height: 16),
                RaisedButton(
                  onPressed: () => setState(() => count++),
                  child: Text('Tap me!'),
                ),
                FutureBuilder(
                  future: saveFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return RaisedButton(
                        onPressed: _saveCount,
                        child: Text('Save count'),
                      );
                    } else {
                      return RaisedButton(
                        onPressed: null,
                        child: Text('Save count'),
                      );
                    }
                  },
                ),
                if (widget.showExit) ...[
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
