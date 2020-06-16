// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

/// The [Favorites] class holds list of favorite items saved by the user.
class Favorites extends ChangeNotifier {
  final List<int> _favoriteItems = [];

  List<int> get items => _favoriteItems;

  void add(int itemNo) {
    // Add the item to the favorites list.
    _favoriteItems.add(itemNo);

    // Tell the depending widgets to rebuild.
    notifyListeners();
  }

  void remove(int itemNo) {
    // Remove the item from the favorites list.
    _favoriteItems.remove(itemNo);

    // Tell the depending widgets to rebuild.
    notifyListeners();
  }
}
