// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:platform_channels/src/counter_method_channel.dart';

/// The widget demonstrates how to use [MethodChannel] to invoke platform methods.
/// It has two [ElevatedButton]s to increment and decrement the value of
/// [count], and a [Text] widget to display its value.
class MethodChannelDemo extends StatefulWidget {
  const MethodChannelDemo({Key? key}) : super(key: key);

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Value of count is $count',
            style: Theme.of(context).textTheme.headline5,
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Whenever users press the ElevatedButton, it invokes
              // Counter.increment method to increment the value of count.
              ElevatedButton.icon(
                onPressed: () async {
                  try {
                    final value = await Counter.increment(counterValue: count);
                    setState(() => count = value);
                  } catch (error) {
                    showErrorMessage(
                      context,
                      (error as PlatformException).message!,
                    );
                  }
                },
                icon: const Icon(Icons.add),
                label: const Text('Increment'),
              ),

              // Whenever users press the ElevatedButton, it invokes
              // Counter.decrement method to decrement the value of count.
              ElevatedButton.icon(
                onPressed: () async {
                  try {
                    final value = await Counter.decrement(counterValue: count);
                    setState(() => count = value);
                  } catch (error) {
                    showErrorMessage(
                      context,
                      (error as PlatformException).message!,
                    );
                  }
                },
                icon: const Icon(Icons.remove),
                label: const Text('Decrement'),
              )
            ],
          )
        ],
      ),
    );
  }

  void showErrorMessage(BuildContext context, String errorMessage) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(errorMessage),
      ),
    );
  }
}
