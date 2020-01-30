// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

enum DisplayType {
  desktop,
  mobile,
}

const _desktopBreakpoint = 700.0;
const _smallDesktopMaxWidth = 1000.0;

/// Returns the [DisplayType] for the current screen. This app only supports
/// mobile and desktop layouts, and as such we only have one breakpoint.
DisplayType displayTypeOf(BuildContext context) {
  if (MediaQuery.of(context).size.shortestSide > _desktopBreakpoint) {
    return DisplayType.desktop;
  } else {
    return DisplayType.mobile;
  }
}

/// Returns a boolean if we are in a display of [DisplayType.desktop]. Used to
/// build adaptive and responsive layouts.
bool isDisplayDesktop(BuildContext context) {
  return displayTypeOf(context) == DisplayType.desktop;
}

/// Returns a boolean if we are in a display of [DisplayType.desktop] but less
/// than 1000 width. Used to build adaptive and responsive layouts.
bool isDisplaySmallDesktop(BuildContext context) {
  return isDisplayDesktop(context) &&
      MediaQuery.of(context).size.width < _smallDesktopMaxWidth;
}
