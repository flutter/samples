// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingSummaryImpl _$$BookingSummaryImplFromJson(Map<String, dynamic> json) =>
    _$BookingSummaryImpl(
      id: (json['id'] as num).toInt(),
      destinationName: json['destinationName'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
    );

Map<String, dynamic> _$$BookingSummaryImplToJson(
        _$BookingSummaryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'destinationName': instance.destinationName,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
    };
