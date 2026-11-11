// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BookingApiModel _$BookingApiModelFromJson(Map<String, dynamic> json) =>
    _BookingApiModel(
      id: (json['id'] as num?)?.toInt(),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      name: json['name'] as String,
      destinationRef: json['destinationRef'] as String,
      activitiesRef: (json['activitiesRef'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$BookingApiModelToJson(_BookingApiModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'name': instance.name,
      'destinationRef': instance.destinationRef,
      'activitiesRef': instance.activitiesRef,
    };
