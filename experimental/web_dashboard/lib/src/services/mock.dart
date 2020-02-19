// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:uuid/uuid.dart' as uuid;

import '../../src/data.dart';

import 'services.dart';

class MockDashboardApi implements DashboardApi {
  @override
  final EntryService entries = MockEntryService();

  @override
  final ItemService items = MockItemService();
}

class MockItemService implements ItemService {
  Map<String, Item> _storage = {};

  @override
  Future<Item> delete(String id) async {
    return _storage.remove(id);
  }

  @override
  Future<Item> get(String id) async {
    return _storage[id];
  }

  @override
  Future<Item> insert(Item item) async {
    var id = uuid.Uuid().v4();
    var newItem = Item(item.name)..id = id;
    _storage[id] = newItem;
    return newItem;
  }

  @override
  Future<List<Item>> list() async {
    return _storage.values.toList();
  }

  @override
  Future<Item> update(Item item, String id) async {
    _storage[id] = item;
    return item..id = id;
  }
}

class MockEntryService implements EntryService {
  Map<String, Entry> _storage = {};

  @override
  Future<Entry> delete(String itemId, String id) async {
    return _storage.remove('$itemId-$id');
  }

  @override
  Future<Entry> insert(String itemId, Entry entry) async {
    var id = uuid.Uuid().v4();
    var newEntry = Entry(entry.value, entry.time)..id = id;
    _storage['$itemId-$id'] = newEntry;
    return newEntry;
  }

  @override
  Future<List<Entry>> list(String itemId) async {
    return _storage.keys
        .where((k) => k.startsWith(itemId))
        .map((k) => _storage[k])
        .toList();
  }

  @override
  Future<Entry> update(String itemId, String id, Entry entry) async {
    _storage['$itemId-$id'] = entry;
    return entry..id = id;
  }
}
