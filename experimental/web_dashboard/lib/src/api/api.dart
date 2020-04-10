// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api.g.dart';

/// Manipulates app data,
abstract class DashboardApi {
  ItemApi get items;

  EntryApi get entries;
}

/// Manipulates [Item] data.
abstract class ItemApi {
  Future<Item> delete(String id);

  Future<Item> get(String id);

  Future<Item> insert(Item item);

  Future<List<Item>> list();

  Future<Item> update(Item item, String id);

  Stream<List<Item>> allItemsStream();

  List<Item> get latest;
}

/// Manipulates [Entry] data.
abstract class EntryApi {
  Future<Entry> delete(String itemId, String id);

  Future<Entry> get(String itemId, String id);

  Future<Entry> insert(String itemId, Entry entry);

  Future<List<Entry>> list(String itemId);

  Future<Entry> update(String itemId, String id, Entry entry);

  Stream<List<Entry>> allEntriesStream(String itemId);
}

/// Something that's being tracked, e.g. Hours Slept, Cups of water, etc.
@JsonSerializable()
class Item {
  String name;

  @JsonKey(ignore: true)
  String id;

  Item(this.name);

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);

  @override
  operator ==(Object other) => other is Item && other.id == id;
  @override
  int get hashCode => id.hashCode;
  @override
  String toString() {
    return '<Item id=$id>';
  }
}

/// A number tracked at a point in time.
@JsonSerializable()
class Entry {
  final int value;
  @JsonKey(fromJson: _timeStampToDateTime, toJson: _dateTimeToTimestamp)
  final DateTime time;

  @JsonKey(ignore: true)
  String id;

  Entry(this.value, this.time);

  factory Entry.fromJson(Map<String, dynamic> json) => _$EntryFromJson(json);

  Map<String, dynamic> toJson() => _$EntryToJson(this);

  static DateTime _timeStampToDateTime(Timestamp timestamp) {
    return DateTime.fromMillisecondsSinceEpoch(
        timestamp.millisecondsSinceEpoch);
  }

  static Timestamp _dateTimeToTimestamp(DateTime dateTime) {
    return Timestamp.fromMillisecondsSinceEpoch(
        dateTime.millisecondsSinceEpoch);
  }
  @override
  operator ==(Object other) => other is Entry && other.id == id;

  @override
  int get hashCode => id.hashCode;

  @override
  String toString() {
    return '<Entry id=$id>';
  }
}
