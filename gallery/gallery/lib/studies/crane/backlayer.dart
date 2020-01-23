// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

abstract class BackLayerItem extends StatefulWidget {
  final int index;

  BackLayerItem({Key key, this.index}) : super(key: key);
}

