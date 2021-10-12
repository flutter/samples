// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:math';

import 'package:collection/collection.dart';
import 'package:uuid/uuid.dart' as uuid;

import 'api.dart';

class MockDashboardApi implements DashboardApi {
  @override
  final EntryApi entries = MockEntryApi();

  @override
  final CategoryApi categories = MockCategoryApi();

  MockDashboardApi();

  /// Creates a [MockDashboardApi] filled with mock data for the last 30 days.
  Future<void> fillWithMockData() async {
    await Future<void>.delayed(const Duration(seconds: 1));
    var category1 = await categories.insert(Category('Coffee (oz)'));
    var category2 = await categories.insert(Category('Running (miles)'));
    var category3 = await categories.insert(Category('Git Commits'));
    var monthAgo = DateTime.now().subtract(const Duration(days: 30));

    for (var category in [category1, category2, category3]) {
      for (var i = 0; i < 30; i++) {
        var date = monthAgo.add(Duration(days: i));
        var value = Random().nextInt(6) + 1;
        await entries.insert(category.id!, Entry(value, date));
      }
    }
  }
}

class MockCategoryApi implements CategoryApi {
  final Map<String, Category> _storage = {};
  final StreamController<List<Category>> _streamController =
      StreamController<List<Category>>.broadcast();

  @override
  Future<Category?> delete(String id) async {
    var removed = _storage.remove(id);
    _emit();
    return removed;
  }

  @override
  Future<Category?> get(String id) async {
    return _storage[id];
  }

  @override
  Future<Category> insert(Category category) async {
    var id = const uuid.Uuid().v4();
    var newCategory = Category(category.name)..id = id;
    _storage[id] = newCategory;
    _emit();
    return newCategory;
  }

  @override
  Future<List<Category>> list() async {
    return _storage.values.toList();
  }

  @override
  Future<Category> update(Category category, String id) async {
    _storage[id] = category;
    _emit();
    return category..id = id;
  }

  @override
  Stream<List<Category>> subscribe() => _streamController.stream;

  void _emit() {
    _streamController.add(_storage.values.toList());
  }
}

class MockEntryApi implements EntryApi {
  final Map<String, Entry> _storage = {};
  final StreamController<_EntriesEvent> _streamController =
      StreamController.broadcast();

  @override
  Future<Entry?> delete(String categoryId, String id) async {
    _emit(categoryId);
    return _storage.remove('$categoryId-$id');
  }

  @override
  Future<Entry> insert(String categoryId, Entry entry) async {
    var id = const uuid.Uuid().v4();
    var newEntry = Entry(entry.value, entry.time)..id = id;
    _storage['$categoryId-$id'] = newEntry;
    _emit(categoryId);
    return newEntry;
  }

  @override
  Future<List<Entry>> list(String categoryId) async {
    var list = _storage.keys
        .where((k) => k.startsWith(categoryId))
        .map((k) => _storage[k])
        .whereNotNull()
        .toList();
    return list;
  }

  @override
  Future<Entry> update(String categoryId, String id, Entry entry) async {
    _storage['$categoryId-$id'] = entry;
    _emit(categoryId);
    return entry..id = id;
  }

  @override
  Stream<List<Entry>> subscribe(String categoryId) {
    return _streamController.stream
        .where((event) => event.categoryId == categoryId)
        .map((event) => event.entries);
  }

  void _emit(String categoryId) {
    var entries = _storage.keys
        .where((k) => k.startsWith(categoryId))
        .map((k) => _storage[k]!)
        .toList();

    _streamController.add(_EntriesEvent(categoryId, entries));
  }

  @override
  Future<Entry?> get(String categoryId, String id) async {
    return _storage['$categoryId-$id'];
  }
}

class _EntriesEvent {
  final String categoryId;
  final List<Entry> entries;

  _EntriesEvent(this.categoryId, this.entries);
}
