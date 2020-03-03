// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:uuid/uuid.dart' as uuid;

import 'api.dart';

class MockDashboardApi implements DashboardApi {
  @override
  final EntryApi entries = MockEntryApi();

  @override
  final ItemApi items = MockItemApi();
}

class MockItemApi implements ItemApi {
  Map<String, Item> _storage = {};
  StreamController<List<Item>> _streamController =
      StreamController<List<Item>>.broadcast();

  @override
  Future<Item> delete(String id) async {
    _emit();
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
    _emit();
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

  Stream<List<Item>> allItemsStream() {
    return _streamController.stream;
  }

  void _emit() {
    _streamController.add(_storage.values.toList());
  }
}

class MockEntryApi implements EntryApi {
  Map<String, Entry> _storage = {};
  StreamController<List<Entry>> _streamController =
      StreamController<List<Entry>>.broadcast();

  @override
  Future<Entry> delete(String itemId, String id) async {
    _emit();
    return _storage.remove('$itemId-$id');
  }

  @override
  Future<Entry> insert(String itemId, Entry entry) async {
    var id = uuid.Uuid().v4();
    var newEntry = Entry(entry.value, entry.time)..id = id;
    _storage['$itemId-$id'] = newEntry;
    _emit();
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

  @override
  Stream<List<Entry>> allEntriesStream(String itemId) {
    return _streamController.stream;
  }

  void _emit() {
    _streamController.add(_storage.values.toList());
  }
}
