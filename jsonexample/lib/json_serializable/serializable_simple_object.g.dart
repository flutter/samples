// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializable_simple_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SerializableSimpleObject _$SerializableSimpleObjectFromJson(
    Map<String, dynamic> json) {
  return SerializableSimpleObject(
    aString: json['aString'] as String,
    anInt: json['anInt'] as int,
    aDouble: (json['aDouble'] as num)?.toDouble(),
    aListOfStrings:
        (json['aListOfStrings'] as List)?.map((e) => e as String)?.toList(),
    aListOfInts: (json['aListOfInts'] as List)?.map((e) => e as int)?.toList(),
    aListOfDoubles: (json['aListOfDoubles'] as List)
        ?.map((e) => (e as num)?.toDouble())
        ?.toList(),
  );
}

Map<String, dynamic> _$SerializableSimpleObjectToJson(
        SerializableSimpleObject instance) =>
    <String, dynamic>{
      'aString': instance.aString,
      'anInt': instance.anInt,
      'aDouble': instance.aDouble,
      'aListOfStrings': instance.aListOfStrings,
      'aListOfInts': instance.aListOfInts,
      'aListOfDoubles': instance.aListOfDoubles,
    };
