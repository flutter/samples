// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

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
  Future<Entry> insert(String itemId, Entry entry);
  Future<List<Entry>> list(String itemId);
  Future<Entry> update(String itemId, String id, Entry entry);
  Stream<List<Entry>> allEntriesStream(String itemId);
}

/// Something that's being tracked, e.g. Hours Slept, Cups of water, etc.
@JsonSerializable()
class Item {
  final String name;

  @JsonKey(ignore: true)
  String id;

  Item(this.name);

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}

/// A number tracked at a point in time.
@JsonSerializable()
class Entry {
  final int value;
  final DateTime time;

  @JsonKey(ignore: true)
  String id;

  Entry(this.value, this.time);

  factory Entry.fromJson(Map<String, dynamic> json) => _$EntryFromJson(json);

  Map<String, dynamic> toJson() => _$EntryToJson(this);
}
