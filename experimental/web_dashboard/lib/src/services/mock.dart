// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:uuid/uuid.dart' as uuid;

import '../../src/data.dart';

import 'services.dart';

class MockItemService implements ItemService {
  Map<String, Item> _storage = {};

  @override
  Future<Item> add(String name) async {
    var id = uuid.Uuid().v4();
    var item = Item(name)..id = id;
    _storage[id] = item;
    return item;
  }

  @override
  Future<List<Item>> getAll() async {
    return _storage.values.toList();
  }

  @override
  Future<Item> get(String id) async {
    return _storage[id];
  }

  @override
  Future<Item> remove(String id) async {
    return _storage.remove(id);
  }

  @override
  Future<Item> update(String id, Item item) async {
    _storage[id] = item;
    return item..id = id;
  }
}
