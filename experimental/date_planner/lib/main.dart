// Copyright 2024 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'event_data.dart';
import 'event_list.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => EventData(),
      child: const DatePlannerApp(),
    ),
  );
}

CupertinoThemeData cupertinoLight = const CupertinoThemeData(
  brightness: Brightness.light,
  primaryColor: CupertinoColors.activeBlue,
);

class DatePlannerApp extends StatelessWidget {
  const DatePlannerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: const EventList(),
      theme: cupertinoLight,
    );
  }
}
