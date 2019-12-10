// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:duration/duration.dart';
import 'package:flutter/material.dart';

// Duration of time (e.g. 16h 12m)
String formattedDuration(BuildContext context, Duration duration,
    {bool abbreviated}) {
  return prettyDuration(
    duration,
    spacer: '',
    delimiter: ' ',
    abbreviated: abbreviated,
    tersity: DurationTersity.minute,
  );
}
