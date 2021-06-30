// Copyright 2021, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

import 'src/app.dart';

void main() {
  // Use package:url_strategy until this pull request is released:
  // https://github.com/flutter/flutter/pull/77103
  setPathUrlStrategy();
  runApp(const Bookstore());
}
