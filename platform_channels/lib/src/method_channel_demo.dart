// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:platform_channels/src/counter_method_channel.dart';

/// The widget demonstrates how to use [MethodChannel] to invoke platform methods.
/// It has two [FloatingActionButton]s to increment and decrement the value of
/// [count], and a [Text] widget to display the value it.
class MethodChannelDemo extends StatefulWidget {
  @override
  _MethodChannelDemoState createState() => _MethodChannelDemoState();
}

class _MethodChannelDemoState extends State<MethodChannelDemo> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MethodChannel Demo'),
      ),
      floatingActionButton: Builder(
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FloatingActionButton(
                heroTag: 'addition',
                child: Icon(Icons.add),

                // Whenever users presses the FloatingActionButton, it invokes
                // Counter.increment method to increment the value of count.
                onPressed: () {
                  Counter.increment(counterValue: count).then((value) {
                    setState(() => count = value);
                  }).catchError((dynamic error) {
                    showErrorMessage(
                      context,
                      error.message as String,
                    );
                  });
                },
              ),
              SizedBox(
                height: 16,
              ),
              FloatingActionButton(
                heroTag: 'subtract',
                child: Icon(Icons.remove),

                // Whenever users presses the FloatingActionButton, it invokes
                // Counter.decrement method to decrement the value of count.
                onPressed: () {
                  Counter.decrement(counterValue: count).then((value) {
                    setState(() => count = value);
                  }).catchError((dynamic error) {
                    showErrorMessage(
                      context,
                      error.message as String,
                    );
                  });
                },
              ),
            ],
          );
        },
      ),
      body: Center(
        child: Text(
          'Value of count is $count',
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
    );
  }

  void showErrorMessage(BuildContext context, String errorMessage) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(errorMessage),
    ));
  }
}
