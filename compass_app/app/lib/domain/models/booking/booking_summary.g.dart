// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BookingSummary _$BookingSummaryFromJson(Map<String, dynamic> json) =>
    _BookingSummary(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
    );

Map<String, dynamic> _$BookingSummaryToJson(_BookingSummary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
    };
