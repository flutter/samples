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
  final CollectionReference _categoriesRef;

  FirebaseEntryApi(this.firestore, this.userId)
      : _categoriesRef = firestore.collection('users/$userId/categories');

  @override
  Stream<List<Entry>> subscribe(String categoryId) {
    var snapshots = _categoriesRef
        .document('$categoryId')
        .collection('entries')
        .snapshots();
    var result = snapshots.map((querySnapshot) {
      return querySnapshot.documents.map((snapshot) {
        return Entry.fromJson(snapshot.data)..id = snapshot.documentID;
      }).toList();
    });

    return result;
  }

  @override
  Future<Entry> delete(String categoryId, String id) async {
    var document = _categoriesRef.document('$categoryId/entries/$id');
    var entry = await get(categoryId, document.documentID);

    await document.delete();

    return entry;
  }

  @override
  Future<Entry> insert(String categoryId, Entry entry) async {
    var document = await _categoriesRef
        .document('$categoryId')
        .collection('entries')
        .add(entry.toJson());
    return await get(categoryId, document.documentID);
  }

  @override
  Future<List<Entry>> list(String categoryId) async {
    var entriesRef =
        _categoriesRef.document('$categoryId').collection('entries');
    var querySnapshot = await entriesRef.getDocuments();
    var entries = querySnapshot.documents
        .map((doc) => Entry.fromJson(doc.data)..id = doc.documentID)
        .toList();

    return entries;
  }

  @override
  Future<Entry> update(String categoryId, String id, Entry entry) async {
    var document = _categoriesRef.document('$categoryId/entries/$id');
    await document.setData(entry.toJson());
    var snapshot = await document.get();
    return Entry.fromJson(snapshot.data)..id = snapshot.documentID;
  }

  @override
  Future<Entry> get(String categoryId, String id) async {
    var document = _categoriesRef.document('$categoryId/entries/$id');
    var snapshot = await document.get();
    return Entry.fromJson(snapshot.data)..id = snapshot.documentID;
  }
}

class FirebaseCategoryApi implements CategoryApi {
  final Firestore firestore;
  final String userId;
  final CollectionReference _categoriesRef;

  FirebaseCategoryApi(this.firestore, this.userId)
      : _categoriesRef = firestore.collection('users/$userId/categories');

  @override
  Stream<List<Category>> subscribe() {
    var snapshots = _categoriesRef.snapshots();
    var result = snapshots.map((querySnapshot) {
      return querySnapshot.documents.map((snapshot) {
        return Category.fromJson(snapshot.data)..id = snapshot.documentID;
      }).toList();
    });

    return result;
  }

  @override
  Future<Category> delete(String id) async {
    var document = _categoriesRef.document('$id');
    var categories = await get(document.documentID);

    await document.delete();

    return categories;
  }

  @override
  Future<Category> get(String id) async {
    var document = _categoriesRef.document('$id');
    var snapshot = await document.get();
    return Category.fromJson(snapshot.data)..id = snapshot.documentID;
  }

  @override
  Future<Category> insert(Category category) async {
    var document = await _categoriesRef.add(category.toJson());
    return await get(document.documentID);
  }

  @override
  Future<List<Category>> list() async {
    var querySnapshot = await _categoriesRef.getDocuments();
    var categories = querySnapshot.documents
        .map((doc) => Category.fromJson(doc.data)..id = doc.documentID)
        .toList();

    return categories;
  }

  @override
  Future<Category> update(Category category, String id) async {
    var document = _categoriesRef.document('$id');
    await document.setData(category.toJson());
    var snapshot = await document.get();
    return Category.fromJson(snapshot.data)..id = snapshot.documentID;
  }
}
