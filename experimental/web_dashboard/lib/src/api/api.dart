// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

abstract class DashboardApi {
  ItemService get items;
  EntryService get entries;
}

abstract class ItemService {
  Future<Item> delete(String id);
  Future<Item> get(String id);
  Future<Item> insert(Item item);
  Future<List<Item>> list();
  Future<Item> update(Item item, String id);
  Stream<List<Item>> subscribe();
}

/// Something being tracked.
class Item {
  final String name;
  String id;

  Item(this.name);
}

/// A subscription to a collection of [Item].
abstract class ItemsSubscription {
  List<Item> get items;
  Stream get onChanged;
}

abstract class EntryService {
  Future<Entry> delete(String itemId, String id);
  Future<Entry> insert(String itemId, Entry entry);
  Future<List<Entry>> list(String itemId);
  Future<Entry> update(String itemId, String id, Entry entry);
}

/// A number tracked at a point in time
class Entry {
  final int value;
  final DateTime time;
  String id;

  Entry(this.value, this.time);
}
