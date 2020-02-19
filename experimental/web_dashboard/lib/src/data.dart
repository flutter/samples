// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// A number tracked at a point in time
class Entry {
  final int value;
  final DateTime time;

  Entry(this.value, this.time);
}

/// Something being tracked.
class Item {
  final String name;
  String id;

  Item(this.name);
}
