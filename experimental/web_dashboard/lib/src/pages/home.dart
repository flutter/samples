// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_dashboard/src/models/app_state.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    var appState = Provider.of<AppState>(context);
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        childAspectRatio: 2,
        maxCrossAxisExtent: 500,
      ),
      children: [
        Card(
          child: Center(
            child: Text("A"),
          ),
        ),
        Card(
          child: Center(
            child: Text("B"),
          ),
        ),
        Card(
          child: Center(
            child: Text("C"),
          ),
        ),
        Card(
          child: Center(
            child: Text("D"),
          ),
        ),
        Card(
          child: Center(
            child: Text("E"),
          ),
        ),
        Card(
          child: Center(
            child: Text("F"),
          ),
        ),
      ],
    );
  }
}
