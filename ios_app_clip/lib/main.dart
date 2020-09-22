// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:device_info/device_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Demo());
}

// The same content is shown for both the main app target and in the App
// Clip.
class Demo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  String deviceInfo = '';

  @override
  void initState() {
    DeviceInfoPlugin().iosInfo.then((IosDeviceInfo info) {
      setState(() {
        deviceInfo = '${info.name} on ${info.systemName} version '
            '${info.systemVersion}';
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('App Clip'),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(deviceInfo),
              Padding(padding: EdgeInsets.only(top: 18)),
              FlutterLogo(size: 128),
            ],
          ),
        ),
      ),
    );
  }
}
