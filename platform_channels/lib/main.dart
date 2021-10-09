// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:platform_channels/src/add_pet_details.dart';
import 'package:platform_channels/src/event_channel_demo.dart';
import 'package:platform_channels/src/method_channel_demo.dart';
import 'package:platform_channels/src/pet_list_screen.dart';
import 'package:platform_channels/src/platform_image_demo.dart';

void main() {
  runApp(const PlatformChannelSample());
}

class PlatformChannelSample extends StatelessWidget {
  const PlatformChannelSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/methodChannelDemo': (context) => const MethodChannelDemo(),
        '/eventChannelDemo': (context) => const EventChannelDemo(),
        '/platformImageDemo': (context) => const PlatformImageDemo(),
        '/petListScreen': (context) => const PetListScreen(),
        '/addPetDetails': (context) => const AddPetDetails(),
      },
      title: 'Platform Channel Sample',
      theme: ThemeData(
        snackBarTheme: SnackBarThemeData(
          backgroundColor: Colors.blue[500],
        ),
      ),
      home: const HomePage(),
    );
  }
}

class DemoInfo {
  final String demoTitle;
  final String demoRoute;

  DemoInfo(this.demoTitle, this.demoRoute);
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
  ),
  DemoInfo(
    'BasicMessageChannel Demo',
    '/petListScreen',
  )
];

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Platform Channel Sample'),
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

  const DemoTile(this.demoInfo, {Key? key}) : super(key: key);

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
