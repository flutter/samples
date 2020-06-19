// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:platform_channels/src/event_channel_demo.dart';
import 'package:platform_channels/src/method_channel_demo.dart';
import 'package:platform_channels/src/platform_image_demo.dart';

void main() {
  runApp(PlatformChannelSample());
}

class PlatformChannelSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/methodChannelDemo': (context) => MethodChannelDemo(),
        '/eventChannelDemo': (context) => EventChannelDemo(),
        '/platformImageDemo': (context) => PlatformImageDemo(),
      },
      title: 'Platform Channel Sample',
      home: HomePage(),
    );
  }
}

class DemoInfo {
  final String demoTitle;
  final String demoRoute;

  DemoInfo(this.demoTitle, this.demoRoute)
      : assert(demoTitle != null),
        assert(demoRoute != null);
}

List<DemoInfo> demoList = [
  DemoInfo(
    'MethodChannel Demo',
    '/methodChannelDemo',
  ),
  DemoInfo(
    'EventChannel Demo',
    '/eventChannelDemo',
  ),
  DemoInfo(
    'Platform Image Demo',
    '/platformImageDemo',
  )
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Platform Channel Sample'),
      ),
      body: ListView(
        children: demoList.map((demoInfo) => DemoTile(demoInfo)).toList(),
      ),
    );
  }
}

/// This widget is responsible for displaying the [ListTile] on [HomePage].
class DemoTile extends StatelessWidget {
  final DemoInfo demoInfo;

  DemoTile(this.demoInfo);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(demoInfo.demoTitle),
      onTap: () {
        Navigator.pushNamed(context, demoInfo.demoRoute);
      },
    );
  }
}
