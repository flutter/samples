// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:veggieseasons/styles.dart';

import 'settings_item.dart';

// The widgets in this file present a group of Cupertino-style settings items to
// the user. In the future, the Cupertino package in the Flutter SDK will
// include dedicated widgets for this purpose, but for now they're done here.
//
// See https://github.com/flutter/flutter/projects/29 for more info.

class SettingsGroupHeader extends StatelessWidget {
  const SettingsGroupHeader(this.title, {Key? key}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
        bottom: 6,
      ),
      child: Text(
        title.toUpperCase(),
        style: Styles.settingsGroupHeaderText(CupertinoTheme.of(context)),
      ),
    );
  }
}

class SettingsGroupFooter extends StatelessWidget {
  const SettingsGroupFooter(this.title, {Key? key}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
        top: 7.5,
      ),
      child: Text(title,
          style: Styles.settingsGroupFooterText(CupertinoTheme.of(context))),
    );
  }
}

class SettingsGroup extends StatelessWidget {
  SettingsGroup({
    required this.items,
    this.header,
    this.footer,
    Key? key,
  })  : assert(items.isNotEmpty),
        super(key: key);

  final List<SettingsItem> items;
  final Widget? header;
  final Widget? footer;
  @override
  Widget build(BuildContext context) {
    var brightness = CupertinoTheme.brightnessOf(context);
    final dividedItems = <Widget>[items[0]];
    for (var i = 1; i < items.length; i++) {
      dividedItems.add(Container(
        color: Styles.settingsLineation(brightness),
        height: 0.3,
      ));
      dividedItems.add(items[i]);
    }

    return Padding(
      padding: EdgeInsets.only(
        top: header == null ? 35 : 22,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (header != null) header!,
          Container(
            decoration: BoxDecoration(
              color: CupertinoColors.white,
              border: Border(
                top: BorderSide(
                  color: Styles.settingsLineation(brightness),
                  width: 0,
                ),
                bottom: BorderSide(
                  color: Styles.settingsLineation(brightness),
                  width: 0,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: dividedItems,
            ),
          ),
          if (footer != null) footer!,
        ],
      ),
    );
  }
}
