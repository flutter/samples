// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_dashboard/src/widgets/third_party/adaptive_scaffold.dart';

void main() {
  runApp(DashboardWithoutRoutes());
}

class DashboardWithoutRoutes extends StatefulWidget {
  @override
  _DashboardWithoutRoutesState createState() => _DashboardWithoutRoutesState();
}

class _DashboardWithoutRoutesState extends State<DashboardWithoutRoutes> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AdaptiveScaffold(
        currentIndex: 0,
        destinations: [
          AdaptiveScaffoldDestination(title: 'Home', icon: Icons.home),
          AdaptiveScaffoldDestination(title: 'Metrics', icon: Icons.show_chart),
          AdaptiveScaffoldDestination(title: 'Settings', icon: Icons.settings),
        ],
        body: Center(
          child: Text('Hello, World!'),
        ),
      ),
    );
  }
}
