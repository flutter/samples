// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// Manipulates app data,
abstract class DashboardApi {
  ItemApi get items;
  EntryApi get entries;
}

/// Manipulates [Item] data.
abstract class ItemApi {
  Future<Item> delete(String id);
  Future<Item> get(String id);
  Future<Item> insert(Item item);
  Future<List<Item>> list();
  Future<Item> update(Item item, String id);
  Stream<List<Item>> allItemsStream();
}

/// Something being tracked.
class Item {
  final String name;
  String id;

  Item(this.name);
}

/// Manipulates [Entry] data.
abstract class EntryApi {
  Future<Entry> delete(String itemId, String id);
  Future<Entry> insert(String itemId, Entry entry);
  Future<List<Entry>> list(String itemId);
  Future<Entry> update(String itemId, String id, Entry entry);
  Stream<List<Entry>> allEntriesStream(String itemId);
}

/// A number tracked at a point in time.
class Entry {
  final int value;
  final DateTime time;
  String id;

  Entry(this.value, this.time);
}
