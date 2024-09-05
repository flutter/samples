// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActivityImpl _$$ActivityImplFromJson(Map<String, dynamic> json) =>
    _$ActivityImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      locationName: json['locationName'] as String,
      duration: (json['duration'] as num).toInt(),
      timeOfDay: $enumDecode(_$TimeOfDayEnumMap, json['timeOfDay']),
      familyFriendly: json['familyFriendly'] as bool,
      price: (json['price'] as num).toInt(),
      destinationRef: json['destinationRef'] as String,
      ref: json['ref'] as String,
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$$ActivityImplToJson(_$ActivityImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'locationName': instance.locationName,
      'duration': instance.duration,
      'timeOfDay': _$TimeOfDayEnumMap[instance.timeOfDay]!,
      'familyFriendly': instance.familyFriendly,
      'price': instance.price,
      'destinationRef': instance.destinationRef,
      'ref': instance.ref,
      'imageUrl': instance.imageUrl,
    };

const _$TimeOfDayEnumMap = {
  TimeOfDay.any: 'any',
  TimeOfDay.morning: 'morning',
  TimeOfDay.afternoon: 'afternoon',
  TimeOfDay.evening: 'evening',
  TimeOfDay.night: 'night',
};
