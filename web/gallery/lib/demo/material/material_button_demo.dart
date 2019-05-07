// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_web/material.dart';

import '../../gallery/demo.dart';

class ButtonsDemo extends StatelessWidget {
  static const String routeName = '/material/buttons';
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    IconData _backIcon() {
      switch (Theme.of(context).platform) {
        case TargetPlatform.android:
        case TargetPlatform.fuchsia:
          return Icons.arrow_back;
        case TargetPlatform.iOS:
          return Icons.arrow_back_ios;
      }
      assert(false);
      return null;
    }

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(_backIcon()),
          alignment: Alignment.centerLeft,
          tooltip: 'Back',
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Material buttons'),
        actions: <Widget>[
          MaterialDemoDocumentationButton(ButtonsDemo.routeName)
        ],
      ),
      body: Center(
        child: _buildButtons(),
      ),
    );
  }

  Widget _buildButtons() {
    return Column(
      children: [
        pad(MaterialButton(
          onPressed: () {
            print('MaterialButton pressed');
          },
          elevation: 3.0,
          child: Text('MaterialButton'),
        )),
        pad(FlatButton(
          onPressed: () {
            print('FlatButton pressed');
          },
          child: Text('FlatButton'),
        )),
        pad(RaisedButton(
          onPressed: () {},
          elevation: 0.0,
          child: Text('RaisedButton 0.0'),
        )),
        pad(RaisedButton(
          onPressed: () {},
          elevation: 1.0,
          child: Text('RaisedButton 1.0'),
        )),
        pad(RaisedButton(
          onPressed: () {},
          elevation: 2.0,
          child: Text('RaisedButton 2.0'),
        )),
        pad(RaisedButton(
          onPressed: () {},
          elevation: 3.0,
          child: Text('RaisedButton 3.0'),
        )),
        pad(RaisedButton(
          onPressed: () {},
          elevation: 4.0,
          child: Text('RaisedButton 4.0'),
        )),
        pad(RaisedButton(
          onPressed: () {},
          elevation: 8.0,
          child: Text('RaisedButton 8.0'),
        )),
      ],
    );
  }
}

Padding pad(Widget widget) => Padding(
      padding: EdgeInsets.all(10.0),
      child: widget,
    );
