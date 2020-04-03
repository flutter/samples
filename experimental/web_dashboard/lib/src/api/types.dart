import 'package:json_annotation/json_annotation.dart';

part 'types.g.dart';

/// Something being tracked.
@JsonSerializable(nullable: false)
class Item {
  final String name;

  @JsonKey(ignore: true)
  String id;

  Item(this.name);

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}

/// A number tracked at a point in time.
@JsonSerializable(nullable: false)
class Entry {
  final int value;
  final DateTime time;

  @JsonKey(ignore: true)
  String id;

  Entry(this.value, this.time);

  factory Entry.fromJson(Map<String, dynamic> json) => _$EntryFromJson(json);

  Map<String, dynamic> toJson() => _$EntryToJson(this);
}
