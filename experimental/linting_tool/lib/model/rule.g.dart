// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Rule _$RuleFromJson(Map<String, dynamic> json) {
  return Rule(
    name: json['name'] as String,
    description: json['description'] as String,
    group: json['group'] as String,
    maturity: json['maturity'] as String,
    incompatible: (json['incompatible'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    sets: (json['sets'] as List<dynamic>).map((e) => e as String).toList(),
    details: json['details'] as String,
  );
}

Map<String, dynamic> _$RuleToJson(Rule instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'group': instance.group,
      'maturity': instance.maturity,
      'incompatible': instance.incompatible,
      'sets': instance.sets,
      'details': instance.details,
    };
