// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:logging/logging.dart';

final _log = Logger('ImageErrorListener');

void imageErrorListener(Object error) {
  _log.warning('Failed to load image', error);
}
