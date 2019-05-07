// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_web/material.dart';

import '../../gallery/demo.dart';

class SwitchDemo extends StatefulWidget {
  static const routeName = '/material/switch';

  @override
  SwitchDemoState createState() => SwitchDemoState();
}

class SwitchDemoState extends State<SwitchDemo> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return wrapScaffold('Switch Demo', context, _scaffoldKey, _buildContents(),
        SwitchDemo.routeName);
  }

  bool _value = true;

  Widget _buildContents() {
    return Material(
      child: Column(
        children: [
          Switch(
              value: _value,
              onChanged: (bool newValue) {
                setState(() {
                  _value = newValue;
                });
              }),
        ],
      ),
    );
  }
}
