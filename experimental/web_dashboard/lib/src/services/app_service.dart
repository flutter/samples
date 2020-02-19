// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../data.dart';

abstract class ItemService {
  Future<Item> add(String name);
  Future<List<Item>> getAll();
  Future<Item> get(String id);
  Future<Item> remove(String id);
  Future<Item> update(String id, Item item);
}

abstract class EntryService {
  Future<Entry> add(int value, DateTime time);
  Future<Entry> remove(String key);
  Future<Entry> update(String key, Entry entry);
  Future<List<Entry>> get(Item item);
}
