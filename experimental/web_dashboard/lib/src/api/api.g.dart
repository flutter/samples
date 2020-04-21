// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return Category(
    json['name'] as String,
  );
}

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'name': instance.name,
    };

Entry _$EntryFromJson(Map<String, dynamic> json) {
  return Entry(
    json['value'] as int,
    Entry._timeStampToDateTime(json['time'] as Timestamp),
  );
}

Map<String, dynamic> _$EntryToJson(Entry instance) => <String, dynamic>{
      'value': instance.value,
      'time': Entry._dateTimeToTimestamp(instance.time),
    };
