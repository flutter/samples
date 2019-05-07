// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_web/material.dart';

class EditableTextDemo extends StatefulWidget {
  static String routeName = '/material/editable_text';

  @override
  State<StatefulWidget> createState() => EditableTextDemoState();
}

class EditableTextDemoState extends State<EditableTextDemo> {
  final cyanController = TextEditingController(text: 'Cyan');
  final orangeController = TextEditingController(text: 'Orange');
  final thickController = TextEditingController(text: 'Thick Rounded Cursor');
  final multiController =
      TextEditingController(text: 'First line\nSecond line');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Editing'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          field(
            cyanController,
            color: Colors.cyan.shade50,
            selection: Colors.cyan.shade200,
            cursor: Colors.cyan.shade900,
          ),
          field(
            orangeController,
            color: Colors.orange.shade50,
            selection: Colors.orange.shade200,
            cursor: Colors.orange.shade900,
            center: true,
          ),
          field(
            thickController,
            color: Colors.white,
            selection: Colors.grey.shade200,
            cursor: Colors.red.shade900,
            radius: const Radius.circular(2),
            cursorWidth: 8,
          ),
          Banner(
            child: TextField(
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              controller: multiController,
              maxLines: 3,
            ),
            message: 'W.I.P',
            textDirection: TextDirection.ltr,
            location: BannerLocation.bottomEnd,
          ),
        ],
      ),
    );
  }
}

Widget field(
  TextEditingController controller, {
  Color color,
  Color selection,
  Color cursor,
  Radius radius = null,
  double cursorWidth = 2,
  bool center = false,
}) {
  return Theme(
    data: ThemeData(textSelectionColor: selection),
    child: Container(
      color: color,
      child: TextField(
        textAlign: center ? TextAlign.center : TextAlign.start,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(8, 16, 8, 16),
        ),
        controller: controller,
        cursorColor: cursor,
        cursorRadius: radius,
        cursorWidth: cursorWidth,
      ),
    ),
  );
}
