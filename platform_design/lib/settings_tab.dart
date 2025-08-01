// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets.dart';

class SettingsTab extends StatefulWidget {
  static const title = 'Settings';
  static const androidIcon = Icon(Icons.settings);
  static const iosIcon = Icon(CupertinoIcons.gear);

  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  var switch1 = false;
  var switch2 = true;
  var switch3 = true;
  var switch4 = true;
  var switch5 = true;
  var switch6 = false;
  var switch7 = true;

  Widget _buildList() {
    return ListView(
      children: [
        const Padding(padding: EdgeInsets.only(top: 24)),
        ListTile(
          title: const Text('Send me marketing emails'),
          // The Material switch has a platform adaptive constructor.
          trailing: Switch.adaptive(
            value: switch1,
            onChanged: (value) => setState(() => switch1 = value),
          ),
        ),
        ListTile(
          title: const Text('Enable notifications'),
          trailing: Switch.adaptive(
            value: switch2,
            onChanged: (value) => setState(() => switch2 = value),
          ),
        ),
        ListTile(
          title: const Text('Remind me to rate this app'),
          trailing: Switch.adaptive(
            value: switch3,
            onChanged: (value) => setState(() => switch3 = value),
          ),
        ),
        ListTile(
          title: const Text('Background song refresh'),
          trailing: Switch.adaptive(
            value: switch4,
            onChanged: (value) => setState(() => switch4 = value),
          ),
        ),
        ListTile(
          title: const Text('Recommend me songs based on my location'),
          trailing: Switch.adaptive(
            value: switch5,
            onChanged: (value) => setState(() => switch5 = value),
          ),
        ),
        ListTile(
          title: const Text('Auto-transition playback to cast devices'),
          trailing: Switch.adaptive(
            value: switch6,
            onChanged: (value) => setState(() => switch6 = value),
          ),
        ),
        ListTile(
          title: const Text('Find friends from my contact list'),
          trailing: Switch.adaptive(
            value: switch7,
            onChanged: (value) => setState(() => switch7 = value),
          ),
        ),
      ],
    );
  }

  // ===========================================================================
  // Non-shared code below because this tab uses different scaffolds.
  // ===========================================================================

  Widget _buildAndroid(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(SettingsTab.title)),
      body: _buildList(),
    );
  }

  Widget _buildIos(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(),
      child: _buildList(),
    );
  }

  @override
  Widget build(context) {
    return PlatformWidget(
      androidBuilder: _buildAndroid,
      iosBuilder: _buildIos,
    );
  }
}
