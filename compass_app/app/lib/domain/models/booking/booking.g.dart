// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Booking _$BookingFromJson(Map<String, dynamic> json) => _Booking(
  id: (json['id'] as num?)?.toInt(),
  startDate: DateTime.parse(json['startDate'] as String),
  endDate: DateTime.parse(json['endDate'] as String),
  destination: Destination.fromJson(
    json['destination'] as Map<String, dynamic>,
  ),
  activity: (json['activity'] as List<dynamic>)
      .map((e) => Activity.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$BookingToJson(_Booking instance) => <String, dynamic>{
  'id': instance.id,
  'startDate': instance.startDate.toIso8601String(),
  'endDate': instance.endDate.toIso8601String(),
  'destination': instance.destination,
  'activity': instance.activity,
};
