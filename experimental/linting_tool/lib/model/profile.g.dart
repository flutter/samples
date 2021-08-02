// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RulesProfileAdapter extends TypeAdapter<RulesProfile> {
  @override
  final int typeId = 1;

  @override
  RulesProfile read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RulesProfile(
      name: fields[0] as String,
      rules: (fields[1] as List).cast<Rule>(),
    );
  }

  @override
  void write(BinaryWriter writer, RulesProfile obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.rules);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RulesProfileAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
