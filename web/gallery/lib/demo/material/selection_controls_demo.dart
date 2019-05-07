// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_web/material.dart';

import '../../gallery/demo.dart';

class SelectionControlsDemo extends StatefulWidget {
  static const String routeName = '/material/selection';

  _SelectionControlsDemoState createState() => _SelectionControlsDemoState();
}

class _SelectionControlsDemoState extends State<SelectionControlsDemo> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool checkboxValueA = true;
  bool checkboxValueB = false;
  bool checkboxValueC;
  int radioValue = 0;

  void handleRadioValueChanged(int value) {
    setState(() {
      radioValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return wrapScaffold('Selection Controls', context, _scaffoldKey,
        _buildContents(), SelectionControlsDemo.routeName);
  }

  Widget _buildContents() {
    return Material(
        color: Colors.white,
        child: new Column(
            children: <Widget>[buildCheckbox(), Divider(), buildRadio()]));
  }

  Widget buildCheckbox() {
    return Align(
        alignment: const Alignment(0.0, -0.2),
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Checkbox(
                value: checkboxValueA,
                onChanged: (bool value) {
                  setState(() {
                    checkboxValueA = value;
                  });
                },
              ),
              Checkbox(
                value: checkboxValueB,
                onChanged: (bool value) {
                  setState(() {
                    checkboxValueB = value;
                  });
                },
              ),
              Checkbox(
                value: checkboxValueC,
                tristate: true,
                onChanged: (bool value) {
                  setState(() {
                    checkboxValueC = value;
                  });
                },
              ),
            ],
          ),
          Row(mainAxisSize: MainAxisSize.min, children: const <Widget>[
            // Disabled checkboxes
            Checkbox(value: true, onChanged: null),
            Checkbox(value: false, onChanged: null),
            Checkbox(value: null, tristate: true, onChanged: null),
          ])
        ]));
  }

  Widget buildRadio() {
    return Align(
        alignment: const Alignment(0.0, -0.2),
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
            Radio<int>(
                value: 0,
                groupValue: radioValue,
                onChanged: handleRadioValueChanged),
            Radio<int>(
                value: 1,
                groupValue: radioValue,
                onChanged: handleRadioValueChanged),
            Radio<int>(
                value: 2,
                groupValue: radioValue,
                onChanged: handleRadioValueChanged)
          ]),
          // Disabled radio buttons
          Row(mainAxisSize: MainAxisSize.min, children: const <Widget>[
            Radio<int>(value: 0, groupValue: 0, onChanged: null),
            Radio<int>(value: 1, groupValue: 0, onChanged: null),
            Radio<int>(value: 2, groupValue: 0, onChanged: null)
          ])
        ]));
  }
}
