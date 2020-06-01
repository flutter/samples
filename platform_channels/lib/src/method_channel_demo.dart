// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:platform_channels/src/counter_method_channel.dart';

/// The widget demonstrates how to use [MethodChannel] to invoke platform methods.
/// It has two [FloatingActionButton]s and a [Text] widget to display the value of
/// [count].
class MethodChannelDemo extends StatefulWidget {
  @override
  _MethodChannelDemoState createState() => _MethodChannelDemoState();
}

class _MethodChannelDemoState extends State<MethodChannelDemo> {
  int count;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    count = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('MethodChannel Demo'),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: 'addition',
            child: Icon(Icons.add),

            // Whenever users presses the FloatingActionButton, it invokes
            // Counter.increment method to increment the value of count.
            onPressed: () {
              Counter.increment(counterValue: count).then((value) {
                // When the value is null, it indicates there was some error
                // while invoking the method call. When value is null, call the
                // showErrorMessage otherwise set the value of count.
                value == null
                    ? showErrorMessage()
                    : setState(() => count = value);
              });
            },
          ),
          SizedBox(
            width: 8,
          ),
          FloatingActionButton(
            heroTag: 'subtract',
            child: Icon(Icons.remove),

            // Whenever users presses the FloatingActionButton, it invokes
            // Counter.decrement method to decrement the value of count.
            onPressed: () {
              Counter.decrement(counterValue: count).then((value) {
                value == null
                    ? showErrorMessage()
                    : setState(() => count = value);
              });
            },
          ),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          'Value of count is $count',
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
    );
  }

  void showErrorMessage() {
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text('Something went wrong'),
    ));
  }
}
