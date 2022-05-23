// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:hive/hive.dart';

class HiveService {
  static Future<bool> addBox<T>(T item, String boxName) async {
    final openBox = await Hive.openLazyBox<T>(
      boxName,
    );

    final List<T> existingProducts = await getBoxes(boxName);

    if (!existingProducts.contains(item)) {
      await openBox.add(item);
      return true;
    }
    return false;
  }

  static Future addBoxes<T>(List<T> items, String boxName) async {
    final openBox = await Hive.openLazyBox<T>(
      boxName,
    );

    final Set<T> existingProducts = Set.unmodifiable(await getBoxes(boxName));

    for (final item in items) {
      if (!existingProducts.contains(item)) {
        await openBox.add(item);
      }
    }
  }

  static Future deleteBox<T>(T item, String boxName) async {
    final openBox = await Hive.openLazyBox<T>(
      boxName,
    );

    final List<T> boxes = await getBoxes(boxName);

    for (final box in boxes) {
      if (box == item) {
        await openBox.deleteAt(boxes.indexOf(item));
      }
    }
  }

  static Future updateBox<T>(T item, T newItem, String boxName) async {
    final openBox = await Hive.openLazyBox<T>(
      boxName,
    );

    final List<T> boxes = await getBoxes(boxName);

    for (final box in boxes) {
      if (box == item) {
        await openBox.putAt(boxes.indexOf(item), newItem);
      }
    }
  }

  static Future<List<T>> getBoxes<T>(String boxName, [String? query]) async {
    final openBox = await Hive.openLazyBox<T>(boxName);

    final length = openBox.length;

    final boxList = <T>[
      for (int i = 0; i < length; i++) await openBox.getAt(i) as T
    ];

    return boxList;
  }
}
