// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RuleAdapter extends TypeAdapter<Rule> {
  @override
  final int typeId = 0;

  @override
  Rule read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Rule(
      name: fields[0] as String,
      description: fields[1] as String,
      group: fields[2] as String,
      maturity: fields[3] as String,
      incompatible: (fields[4] as List).cast<String>(),
      sets: (fields[5] as List).cast<String>(),
      details: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Rule obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.group)
      ..writeByte(3)
      ..write(obj.maturity)
      ..writeByte(4)
      ..write(obj.incompatible)
      ..writeByte(5)
      ..write(obj.sets)
      ..writeByte(6)
      ..write(obj.details);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RuleAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
