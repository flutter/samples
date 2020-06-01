// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:platform_channels/src/method_channel_demo.dart';

void main() {
  runApp(PlatformChannelSample());
}

class PlatformChannelSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/methodChannelDemo': (context) => MethodChannelDemo(),
      },
      title: 'Platform Channel Sample',
      home: HomePage(),
    );
  }
}

// List of all the demos with their titles and routes.
final demoList = [
  {
    'demoTitle': 'MethodChannel Demo',
    'demoRoute': '/methodChannelDemo',
  }
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Platform Channel Sample'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: demoList
              .map((demo) => DemoTile(
                    demoTitle: demo['demoTitle'],
                    demoRoute: demo['demoRoute'],
                  ))
              .toList(),
        ),
      ),
    );
  }
}

/// This widget is responsible to display the [ListTile] on HomePage.
class DemoTile extends StatelessWidget {
  final String demoTitle;

  final String demoRoute;

  DemoTile({Key key, this.demoTitle, this.demoRoute});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(demoTitle),
      onTap: () {
        Navigator.pushNamed(context, demoRoute);
      },
    );
  }
}
