// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:math';

import 'package:uuid/uuid.dart' as uuid;

import 'api.dart';

class MockDashboardApi implements DashboardApi {
  @override
  final EntryApi entries = MockEntryApi();

  @override
  final ItemApi items = MockItemApi();
  MockDashboardApi();

  /// Creates a [MockDashboardApi] filled with mock data for the last 30 days.
  Future fillWithMockData() async {
    await new Future.delayed(Duration(seconds: 1));
    var item1 = await items.insert(Item('Coffee (oz)'));
    var item2 = await items.insert(Item('Running (miles)'));
    var item3 = await items.insert(Item('Git Commits'));
    var monthAgo = DateTime.now().subtract(Duration(days: 30));

    for (var item in [item1, item2, item3]) {
      for (var i = 0; i < 30; i++) {
        var date = monthAgo.add(Duration(days: i));
        var value = Random().nextInt(6) + 1;
        entries.insert(item.id, Entry(value, date));
      }
    }
  }
}

class MockItemApi implements ItemApi {
  Map<String, Item> _storage = {};
  StreamController<List<Item>> _streamController =
      StreamController<List<Item>>.broadcast();

  Stream<List<Item>> _stream;

  @override
  Future<Item> delete(String id) async {
    var removed = _storage.remove(id);
    _emit();
    return removed;
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
    _emit();
    return item..id = id;
  }

  Stream<List<Item>> allItemsStream() {
    if (_stream == null) {
      _stream = _streamController.stream;
    }
    return _stream;
  }

  List<Item> get latest => _storage.values.toList();

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
