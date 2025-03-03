// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class SizeAnimation extends CurvedAnimation {
  SizeAnimation(Animation<double> parent)
    : super(
        parent: parent,
        curve: const Interval(0.2, 0.8, curve: Curves.easeInOutCubicEmphasized),
        reverseCurve: Interval(
          0,
          0.2,
          curve: Curves.easeInOutCubicEmphasized.flipped,
        ),
      );
}

class OffsetAnimation extends CurvedAnimation {
  OffsetAnimation(Animation<double> parent)
    : super(
        parent: parent,
        curve: const Interval(0.4, 1.0, curve: Curves.easeInOutCubicEmphasized),
        reverseCurve: Interval(
          0,
          0.2,
          curve: Curves.easeInOutCubicEmphasized.flipped,
        ),
      );
}
