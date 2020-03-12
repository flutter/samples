// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/home.dart';
import 'api/api.dart';
import 'api/mock.dart';

/// An app that shows a responsive dashboard.
class DashboardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<DashboardApi>(create: (_) => MockDashboardApi()),
      ],
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
