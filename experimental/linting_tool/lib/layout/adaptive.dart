// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:adaptive_breakpoints/adaptive_breakpoints.dart';
import 'package:flutter/material.dart';

/// Returns a boolean value whether the window is considered medium or large size.
/// Used to build adaptive and responsive layouts.
bool isDisplayLarge(BuildContext context) =>
    getWindowType(context) >= AdaptiveWindowType.medium;

/// Returns boolean value whether the window is considered medium size.
/// Used to build adaptive and responsive layouts.
bool isDisplayMedium(BuildContext context) {
  return getWindowType(context) == AdaptiveWindowType.medium;
}

/// Returns boolean value whether the window is considered small size.
/// Used to build adaptive and responsive layouts.
bool isDisplaySmall(BuildContext context) {
  return getWindowType(context) <= AdaptiveWindowType.small;
}
