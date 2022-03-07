// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:window_size/window_size.dart';

import 'goodapp.dart';

void main() {
  setupWindow();
  runApp(const GoodMyApp());
}

const double windowWidth = 400;
const double windowHeight = 400;

void setupWindow() {
  if (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) {
    WidgetsFlutterBinding.ensureInitialized();
    setWindowTitle('Weather');
    setWindowMinSize(const Size(windowWidth, windowHeight));
  }
}
