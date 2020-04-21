// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:cloud_firestore/cloud_firestore.dart';

import 'api.dart';

class FirebaseDashboardApi implements DashboardApi {
  @override
  final EntryApi entries;

  @override
  final CategoryApi categories;

  FirebaseDashboardApi(Firestore firestore, String userId)
      : entries = FirebaseEntryApi(firestore, userId),
        categories = FirebaseCategoryApi(firestore, userId);
}

class FirebaseEntryApi implements EntryApi {
  final Firestore firestore;
  final String userId;

  FirebaseEntryApi(this.firestore, this.userId);

  @override
  Stream<List<Entry>> stream(String categoryId) {
    var snapshots =
        firestore.collection('users/$userId/categories/$categoryId/entries').snapshots();
    var result = snapshots.map((querySnapshot) {
      return querySnapshot.documents.map((snapshot) {
        return Entry.fromJson(snapshot.data)..id = snapshot.documentID;
      }).toList();
    });

    return result;
  }

  @override
  Future<Entry> delete(String categoryId, String id) async {
    var document =
        firestore.document('users/$userId/categories/$categoryId/entries/$id');
    var category = await get(categoryId, document.documentID);

    await document.delete();

    return category;
  }

  @override
  Future<Entry> insert(String categoryId, Entry entry) async {
    var document = await firestore
        .collection('users/$userId/categories/$categoryId/entries')
        .add(entry.toJson());
    return await get(categoryId, document.documentID);
  }

  @override
  Future<List<Entry>> list(String categoryId) async {
    var snapshot = firestore.collection('users/$userId/categories/$categoryId/entries');
    var querySnapshot = await snapshot.getDocuments();
    var entries = querySnapshot.documents
        .map((doc) => Entry.fromJson(doc.data)..id = doc.documentID)
        .toList();

    return entries;
  }

  @override
  Future<Entry> update(String categoryId, String id, Entry entry) async {
    var document =
        firestore.document('users/$userId/categories/$categoryId/entries/$id');
    await document.setData(entry.toJson());
    // TODO: fetch with get()?
    return entry;
  }

  @override
  Future<Entry> get(String categoryId, String id) async {
    var document =
        firestore.document('users/$userId/categories/$categoryId/entries/$id');
    var snapshot = await document.get();
    return Entry.fromJson(snapshot.data)..id = snapshot.documentID;
  }
}

class FirebaseCategoryApi implements CategoryApi {
  final Firestore firestore;
  final String userId;
  List<Category> _latestSnapshot = [];

  FirebaseCategoryApi(this.firestore, this.userId);

  @override
  Stream<List<Category>> stream() {
    var snapshots = firestore.collection('users/$userId/categories').snapshots();
    var result = snapshots.map((querySnapshot) {
      return querySnapshot.documents.map((snapshot) {
        return Category.fromJson(snapshot.data)..id = snapshot.documentID;
      }).toList();
    });

    // Update the latest snapshot whenever the list of categories changes.
    result.forEach((categories) {
      _latestSnapshot = categories;
    });

    return result;
  }

  @override
  Future<Category> delete(String id) async {
    var document = firestore.document('users/$userId/categories/$id');
    var categories = await get(document.documentID);

    await document.delete();

    return categories;
  }

  @override
  Future<Category> get(String id) async {
    var document = firestore.document('users/$userId/categories/$id');
    var snapshot = await document.get();
    return Category.fromJson(snapshot.data)..id = snapshot.documentID;
  }

  @override
  Future<Category> insert(Category category) async {
    var document =
        await firestore.collection('users/$userId/categories').add(category.toJson());
    return await get(document.documentID);
  }

  @override
  List<Category> get latest => _latestSnapshot;

  @override
  Future<List<Category>> list() async {
    var snapshot = firestore.collection('users/$userId/categories');
    var querySnapshot = await snapshot.getDocuments();
    var categories = querySnapshot.documents
        .map((doc) => Category.fromJson(doc.data)..id = doc.documentID)
        .toList();

    // Update allItems whenever the list of categories changes.
    _latestSnapshot = categories;

    return categories;
  }

  @override
  Future<Category> update(Category category, String id) async {
    var document = firestore.document('users/$userId/categories/$id');
    await document.setData(category.toJson());
    // TODO: re-fetch with get()?
    return category;
  }
}
