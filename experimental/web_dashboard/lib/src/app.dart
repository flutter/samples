// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/home.dart';
import 'services/app_service.dart';
import 'services/mock.dart';

/// An app that shows a responsive dashboard.
class DashboardApp extends StatefulWidget {
  @override
  _DashboardAppState createState() => _DashboardAppState();
}

class _DashboardAppState extends State<DashboardApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<ItemService>(create: (_) => MockItemService()),
      ],
      child: MaterialApp(
        home: Consumer<ItemService>(builder: (context, service, child) {
          return HomePage(itemService: service);
        }),
      ),
    );
  }
}
