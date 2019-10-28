// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializable_complex_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SerializableComplexObject _$SerializableComplexObjectFromJson(
    Map<String, dynamic> json) {
  return SerializableComplexObject(
    aString: json['aString'] as String,
    anInt: json['anInt'] as int,
    aDouble: (json['aDouble'] as num)?.toDouble(),
    anObject: json['anObject'] == null
        ? null
        : SerializableSimpleObject.fromJson(
            json['anObject'] as Map<String, dynamic>),
    aListOfStrings:
        (json['aListOfStrings'] as List)?.map((e) => e as String)?.toList(),
    aListOfInts: (json['aListOfInts'] as List)?.map((e) => e as int)?.toList(),
    aListOfDoubles: (json['aListOfDoubles'] as List)
        ?.map((e) => (e as num)?.toDouble())
        ?.toList(),
    aListOfObjects: (json['aListOfObjects'] as List)
        ?.map((e) => e == null
            ? null
            : SerializableSimpleObject.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SerializableComplexObjectToJson(
        SerializableComplexObject instance) =>
    <String, dynamic>{
      'aString': instance.aString,
      'anInt': instance.anInt,
      'aDouble': instance.aDouble,
      'anObject': instance.anObject,
      'aListOfStrings': instance.aListOfStrings,
      'aListOfInts': instance.aListOfInts,
      'aListOfDoubles': instance.aListOfDoubles,
      'aListOfObjects': instance.aListOfObjects,
    };
