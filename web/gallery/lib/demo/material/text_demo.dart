// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_web/material.dart';

class TextDemo extends StatelessWidget {
  static const routeName = '/material/text';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          pad(Text('Single line of text')),
          Divider(),
          // Single line with many whitespaces in between.
          pad(Text('     Text with       a   lot of    whitespace     ')),
          Divider(),
          // Forced multi-line because of the \n.
          pad(Text('Text with a newline\ncharacter should render in 2 lines')),
          Divider(),
          // Multi-line with regular whitespace.
          pad(Text(
            '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas auctor
vel ligula eget fermentum. Integer mattis nulla vitae ullamcorper
dignissim. Donec vel velit vel eros lobortis laoreet at sit amet turpis.
Ut in orci blandit, rhoncus metus quis, finibus augue. Nullam a elit
venenatis metus accumsan dapibus. Vestibulum imperdiet tristique viverra.''',
          )),
          Divider(),
          // Multi-line with a lot of whitespace in between.
          pad(Text(
            '''
             Lorem ipsum dolor sit amet,            consectetur adipiscing elit.
             Maecenas auctor vel ligula eget                          fermentum.
             Integer mattis nulla                   vitae ullamcorper dignissim.
             Donec vel velit vel eros lobortis laoreet at sit amet turpis.''',
          )),
          Divider(),
        ],
      ),
    );
  }

  Padding pad(Widget child) =>
      Padding(padding: EdgeInsets.all(12), child: child);
}
