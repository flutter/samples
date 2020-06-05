// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:platform_channels/src/counter_method_channel.dart';

/// The widget demonstrates how to use [MethodChannel] to invoke platform methods.
/// It has two [RaisedButton]s to increment and decrement the value of
/// [count], and a [Text] widget to display its value.
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
      body: Builder(
        builder: (context) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Value of count is $count',
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Whenever users press the RaisedButton, it invokes
                  // Counter.increment method to increment the value of count.
                  RaisedButton.icon(
                    onPressed: () async {
                      try {
                        final value =
                            await Counter.increment(counterValue: count);
                        setState(() => count = value);
                      } catch (error) {
                        showErrorMessage(
                          context,
                          error.message as String,
                        );
                      }
                    },
                    icon: Icon(Icons.add),
                    label: Text('Increment'),
                  ),

                  // Whenever users press the RaisedButton, it invokes
                  // Counter.decrement method to decrement the value of count.
                  RaisedButton.icon(
                    onPressed: () async {
                      try {
                        final value =
                            await Counter.decrement(counterValue: count);
                        setState(() => count = value);
                      } catch (error) {
                        showErrorMessage(
                          context,
                          error.message as String,
                        );
                      }
                    },
                    icon: Icon(Icons.remove),
                    label: Text('Decrement'),
                  )
                ],
              )
            ],
          );
        },
      ),
    );
  }

  void showErrorMessage(BuildContext context, String errorMessage) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(errorMessage),
    ));
  }
}
