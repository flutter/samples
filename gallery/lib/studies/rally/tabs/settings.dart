// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:gallery/layout/adaptive.dart';
import 'package:gallery/studies/rally/data.dart';
import 'package:gallery/studies/rally/login.dart';

class SettingsView extends StatefulWidget {
  @override
  _SettingsViewState createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    final items = DummyDataService.getSettingsTitles(context)
        .map((title) => _SettingsItem(title))
        .toList();
    return Container(
      padding: EdgeInsets.only(top: isDisplayDesktop(context) ? 24 : 0),
      child: ListView(
        shrinkWrap: true,
        children: items,
      ),
    );
  }
}

class _SettingsItem extends StatelessWidget {
  const _SettingsItem(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      textColor: Colors.white,
      child: Container(
        alignment: AlignmentDirectional.centerStart,
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
        child: Text(title),
      ),
      onPressed: () {
        Navigator.push<void>(
          context,
          MaterialPageRoute<void>(builder: (context) => LoginPage()),
        );
      },
    );
  }
}
