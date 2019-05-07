// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_web/material.dart';
import '../../gallery/demo.dart';

class ChipDemo extends StatefulWidget {
  static const routeName = '/material/chip';
  @override
  State<StatefulWidget> createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  bool _filterChipSelected = false;
  bool _hasAvatar = true;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return wrapScaffold('Chip Demo', context, _scaffoldKey, _buildContents(),
        ChipDemo.routeName);
  }

  Widget _buildContents() {
    return Material(
        child: Column(
      children: [
        addPadding(Chip(
          label: Text('Chip'),
        )),
        addPadding(InputChip(
          label: Text('InputChip'),
        )),
        addPadding(ChoiceChip(
          label: Text('Selected ChoiceChip'),
          selected: true,
        )),
        addPadding(ChoiceChip(
          label: Text('Deselected ChoiceChip'),
          selected: false,
        )),
        addPadding(FilterChip(
          label: Text('FilterChip'),
          selected: _filterChipSelected,
          onSelected: (bool newValue) {
            setState(() {
              _filterChipSelected = newValue;
            });
          },
        )),
        addPadding(ActionChip(
          label: Text('ActionChip'),
          onPressed: () {},
        )),
        addPadding(ActionChip(
          label: Text('Chip with avatar'),
          avatar: _hasAvatar
              ? CircleAvatar(
                  backgroundColor: Colors.amber,
                  child: Text('Z'),
                )
              : null,
          onPressed: () {
            setState(() {
              _hasAvatar = !_hasAvatar;
            });
          },
        )),
      ],
    ));
  }
}

Padding addPadding(Widget widget) => Padding(
      padding: EdgeInsets.all(10.0),
      child: widget,
    );
