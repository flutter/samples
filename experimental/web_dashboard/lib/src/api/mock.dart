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
  final CategoryApi categories = MockCategoryApi();

  MockDashboardApi();

  /// Creates a [MockDashboardApi] filled with mock data for the last 30 days.
  Future fillWithMockData() async {
    await new Future.delayed(Duration(seconds: 1));
    var category1 = await categories.insert(Category('Coffee (oz)'));
    var category2 = await categories.insert(Category('Running (miles)'));
    var category3 = await categories.insert(Category('Git Commits'));
    var monthAgo = DateTime.now().subtract(Duration(days: 30));

    for (var category in [category1, category2, category3]) {
      for (var i = 0; i < 30; i++) {
        var date = monthAgo.add(Duration(days: i));
        var value = Random().nextInt(6) + 1;
        entries.insert(category.id, Entry(value, date));
      }
    }
  }
}

class MockCategoryApi implements CategoryApi {
  Map<String, Category> _storage = {};
  StreamController<List<Category>> _streamController =
      StreamController<List<Category>>.broadcast();

  @override
  Future<Category> delete(String id) async {
    var removed = _storage.remove(id);
    _emit();
    return removed;
  }

  @override
  Future<Category> get(String id) async {
    return _storage[id];
  }

  @override
  Future<Category> insert(Category category) async {
    var id = uuid.Uuid().v4();
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

  Stream<List<Category>> subscribe() => _streamController.stream;

  void _emit() {
    _streamController.add(_storage.values.toList());
  }
}

class MockEntryApi implements EntryApi {
  Map<String, Entry> _storage = {};
  StreamController<List<Entry>> _streamController =
      StreamController<List<Entry>>.broadcast();

  @override
  Future<Entry> delete(String categoryId, String id) async {
    _emit(categoryId);
    return _storage.remove('$categoryId-$id');
  }

  @override
  Future<Entry> insert(String categoryId, Entry entry) async {
    var id = uuid.Uuid().v4();
    var newEntry = Entry(entry.value, entry.time)..id = id;
    _storage['$categoryId-$id'] = newEntry;
    _emit(categoryId);
    return newEntry;
  }

  @override
  Future<List<Entry>> list(String categoryId) async {
    return _storage.keys
        .where((k) => k.startsWith(categoryId))
        .map((k) => _storage[k])
        .toList();
  }

  @override
  Future<Entry> update(String categoryId, String id, Entry entry) async {
    _storage['$categoryId-$id'] = entry;
    _emit(categoryId);
    return entry..id = id;
  }

  @override
  Stream<List<Entry>> subscribe(String categoryId) {
    // TODO: limit events to those matching categoryId
    // This stream includes events for other categories, not just the one
    // specified by [categoryId]. To do this properly, _emit() must include the
    // category id in all events, so that this stream can filter based off of that.
    return _streamController.stream;
  }

  void _emit(String categoryId) {
    _streamController.add(_storage.keys
        .where((k) => k.startsWith(categoryId))
        .map((k) => _storage[k])
        .toList());
  }

  @override
  Future<Entry> get(String categoryId, String id) async {
    return _storage['$categoryId-$id'];
  }
}
