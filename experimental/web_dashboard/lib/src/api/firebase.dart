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

  FirebaseDashboardApi(FirebaseFirestore firestore, String userId)
      : entries = FirebaseEntryApi(firestore, userId),
        categories = FirebaseCategoryApi(firestore, userId);
}

class FirebaseEntryApi implements EntryApi {
  final FirebaseFirestore firestore;
  final String userId;
  final CollectionReference<Map<String, dynamic>> _categoriesRef;

  FirebaseEntryApi(this.firestore, this.userId)
      : _categoriesRef = firestore.collection('users/$userId/categories');

  @override
  Stream<List<Entry>> subscribe(String categoryId) {
    var snapshots =
        _categoriesRef.doc(categoryId).collection('entries').snapshots();
    var result = snapshots.map<List<Entry>>((querySnapshot) {
      return querySnapshot.docs.map<Entry>((snapshot) {
        return Entry.fromJson(snapshot.data())..id = snapshot.id;
      }).toList();
    });

    return result;
  }

  @override
  Future<Entry> delete(String categoryId, String id) async {
    var document = _categoriesRef.doc('$categoryId/entries/$id');
    var entry = await get(categoryId, document.id);

    await document.delete();

    return entry;
  }

  @override
  Future<Entry> insert(String categoryId, Entry entry) async {
    var document = await _categoriesRef
        .doc(categoryId)
        .collection('entries')
        .add(entry.toJson());
    return await get(categoryId, document.id);
  }

  @override
  Future<List<Entry>> list(String categoryId) async {
    var entriesRef = _categoriesRef.doc(categoryId).collection('entries');
    var querySnapshot = await entriesRef.get();
    var entries = querySnapshot.docs
        .map((doc) => Entry.fromJson(doc.data())..id = doc.id)
        .toList();

    return entries;
  }

  @override
  Future<Entry> update(String categoryId, String id, Entry entry) async {
    var document = _categoriesRef.doc('$categoryId/entries/$id');
    await document.update(entry.toJson());
    var snapshot = await document.get();
    return Entry.fromJson(snapshot.data()!)..id = snapshot.id;
  }

  @override
  Future<Entry> get(String categoryId, String id) async {
    var document = _categoriesRef.doc('$categoryId/entries/$id');
    var snapshot = await document.get();
    return Entry.fromJson(snapshot.data()!)..id = snapshot.id;
  }
}

class FirebaseCategoryApi implements CategoryApi {
  final FirebaseFirestore firestore;
  final String userId;
  final CollectionReference<Map<String, dynamic>> _categoriesRef;

  FirebaseCategoryApi(this.firestore, this.userId)
      : _categoriesRef = firestore.collection('users/$userId/categories');

  @override
  Stream<List<Category>> subscribe() {
    var snapshots = _categoriesRef.snapshots();
    var result = snapshots.map<List<Category>>((querySnapshot) {
      return querySnapshot.docs.map<Category>((snapshot) {
        return Category.fromJson(snapshot.data())..id = snapshot.id;
      }).toList();
    });

    return result;
  }

  @override
  Future<Category> delete(String id) async {
    var document = _categoriesRef.doc(id);
    var categories = await get(document.id);

    await document.delete();

    return categories;
  }

  @override
  Future<Category> get(String id) async {
    var document = _categoriesRef.doc(id);
    var snapshot = await document.get();
    return Category.fromJson(snapshot.data()!)..id = snapshot.id;
  }

  @override
  Future<Category> insert(Category category) async {
    var document = await _categoriesRef.add(category.toJson());
    return await get(document.id);
  }

  @override
  Future<List<Category>> list() async {
    var querySnapshot = await _categoriesRef.get();
    var categories = querySnapshot.docs
        .map((doc) => Category.fromJson(doc.data())..id = doc.id)
        .toList();

    return categories;
  }

  @override
  Future<Category> update(Category category, String id) async {
    var document = _categoriesRef.doc(id);
    await document.update(category.toJson());
    var snapshot = await document.get();
    return Category.fromJson(snapshot.data()!)..id = snapshot.id;
  }
}
