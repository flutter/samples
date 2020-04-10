// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:cloud_firestore/cloud_firestore.dart';

import 'api.dart';

class FirebaseDashboardApi implements DashboardApi {
  @override
  final EntryApi entries;

  @override
  final ItemApi items;

  FirebaseDashboardApi(Firestore firestore, String userId)
      : entries = FirebaseEntryApi(firestore, userId),
        items = FirebaseItemApi(firestore, userId);
}

class FirebaseEntryApi implements EntryApi {
  final Firestore firestore;
  final String userId;

  FirebaseEntryApi(this.firestore, this.userId);

  @override
  Stream<List<Entry>> allEntriesStream(String itemId) {
    var snapshots =
        firestore.collection('users/$userId/items/$itemId/entries').snapshots();
    var result = snapshots.map((querySnapshot) {
      return querySnapshot.documents.map((snapshot) {
        return Entry.fromJson(snapshot.data)..id = snapshot.documentID;
      }).toList();
    });

    return result;
  }

  @override
  Future<Entry> delete(String itemId, String id) async {
    var document =
        firestore.document('users/$userId/items/$itemId/entries/$id');
    var item = await get(itemId, document.documentID);

    await document.delete();

    return item;
  }

  @override
  Future<Entry> insert(String itemId, Entry entry) async {
    var document = await firestore
        .collection('users/$userId/items/$itemId/entries')
        .add(entry.toJson());
    return await get(itemId, document.documentID);
  }

  @override
  Future<List<Entry>> list(String itemId) async {
    var snapshot = firestore.collection('users/$userId/items/$itemId/entries');
    var querySnapshot = await snapshot.getDocuments();
    var entries = querySnapshot.documents
        .map((doc) => Entry.fromJson(doc.data)..id = doc.documentID).toList();

    return entries;
  }

  @override
  Future<Entry> update(String itemId, String id, Entry entry) async {
    var document =
        firestore.document('users/$userId/items/$itemId/entries/$id');
    await document.setData(entry.toJson());
    // TODO: fetch with get()?
    return entry;
  }

  @override
  Future<Entry> get(String itemId, String id) async {
    var document =
        firestore.document('users/$userId/items/$itemId/entries/$id');
    var snapshot = await document.get();
    return Entry.fromJson(snapshot.data)..id = snapshot.documentID;
  }
}

class FirebaseItemApi implements ItemApi {
  final Firestore firestore;
  final String userId;
  List<Item> _latestSnapshot = [];

  FirebaseItemApi(this.firestore, this.userId);

  @override
  Stream<List<Item>> allItemsStream() {
    var snapshots = firestore.collection('users/$userId/items').snapshots();
    var result = snapshots.map((querySnapshot) {
      return querySnapshot.documents.map((snapshot) {
        return Item.fromJson(snapshot.data)..id = snapshot.documentID;
      }).toList();
    });

    // Update allItems whenever the list of items changes.
    result.forEach((items) {
      _latestSnapshot = items;
    });

    return result;
  }

  @override
  Future<Item> delete(String id) async {
    var document = firestore.document('users/$userId/items/$id');
    var item = await get(document.documentID);

    await document.delete();

    return item;
  }

  @override
  Future<Item> get(String id) async {
    var document = firestore.document('users/$userId/items/$id');
    var snapshot = await document.get();
    return Item.fromJson(snapshot.data)..id = snapshot.documentID;
  }

  @override
  Future<Item> insert(Item item) async {
    var document =
        await firestore.collection('users/$userId/items').add(item.toJson());
    return await get(document.documentID);
  }

  @override
  List<Item> get latest => _latestSnapshot;

  @override
  Future<List<Item>> list() async {
    var snapshot = firestore.collection('users/$userId/items');
    var querySnapshot = await snapshot.getDocuments();
    var items = querySnapshot.documents
        .map((doc) => Item.fromJson(doc.data)..id = doc.documentID).toList();

    // Update allItems whenever the list of items changes.
    _latestSnapshot = items;

    return items;
  }

  @override
  Future<Item> update(Item item, String id) async {
    var document = firestore.document('users/$userId/items/$id');
    await document.setData(item.toJson());
    // TODO: re-fetch with get()?
    return item;
  }
}
