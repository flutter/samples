// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:linting_tool/app.dart';
import 'package:linting_tool/model/profile.dart';
import 'package:linting_tool/model/rule.dart';

Future<void> main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(RuleAdapter());
  Hive.registerAdapter(RulesProfileAdapter());
  await Hive.openLazyBox<RulesProfile>('rules_profile');
  runApp(const LintingTool());
}
