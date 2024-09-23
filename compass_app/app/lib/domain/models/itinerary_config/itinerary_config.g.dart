// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'itinerary_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItineraryConfigImpl _$$ItineraryConfigImplFromJson(
        Map<String, dynamic> json) =>
    _$ItineraryConfigImpl(
      continent: json['continent'] as String?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      guests: (json['guests'] as num?)?.toInt(),
      destination: json['destination'] as String?,
      activities: (json['activities'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ItineraryConfigImplToJson(
        _$ItineraryConfigImpl instance) =>
    <String, dynamic>{
      'continent': instance.continent,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'guests': instance.guests,
      'destination': instance.destination,
      'activities': instance.activities,
    };
