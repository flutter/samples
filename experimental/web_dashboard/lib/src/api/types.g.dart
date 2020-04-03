// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) {
  return Item(
    json['name'] as String,
  )..id = json['id'] as String;
}

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
    };

Entry _$EntryFromJson(Map<String, dynamic> json) {
  return Entry(
    json['value'] as int,
    DateTime.parse(json['time'] as String),
  )..id = json['id'] as String;
}

Map<String, dynamic> _$EntryToJson(Entry instance) => <String, dynamic>{
      'value': instance.value,
      'time': instance.time.toIso8601String(),
      'id': instance.id,
    };
