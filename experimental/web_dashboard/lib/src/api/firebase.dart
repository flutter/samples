// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'api.dart';

class FirebaseDashboardApi implements DashboardApi {
  @override
  final EntryApi entries = FirebaseEntryApi();

  @override
  final ItemApi items = FirebaseItemApi();
}

class FirebaseEntryApi implements EntryApi {
  @override
  Stream<List<Entry>> allEntriesStream(String itemId) {
    // TODO: implement allEntriesStream
    throw UnimplementedError();
  }

  @override
  Future<Entry> delete(String itemId, String id) async {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Entry> insert(String itemId, Entry entry) async {
    // TODO: implement insert
    throw UnimplementedError();
  }

  @override
  Future<List<Entry>> list(String itemId) async {
    // TODO: implement list
    throw UnimplementedError();
  }

  @override
  Future<Entry> update(String itemId, String id, Entry entry) async {
    // TODO: implement update
    throw UnimplementedError();
  }
}

class FirebaseItemApi implements ItemApi {
  @override
  Stream<List<Item>> allItemsStream() {
    // TODO: implement allItemsStream
    throw UnimplementedError();
  }

  @override
  Future<Item> delete(String id) async {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Item> get(String id) async {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<Item> insert(Item item) async {
    // TODO: implement insert
    throw UnimplementedError();
  }

  @override
  // TODO: implement latest
  List<Item> get latest => throw UnimplementedError();

  @override
  Future<List<Item>> list() async {
    // TODO: implement list
    throw UnimplementedError();
  }

  @override
  Future<Item> update(Item item, String id) async {
    // TODO: implement update
    throw UnimplementedError();
  }
}
