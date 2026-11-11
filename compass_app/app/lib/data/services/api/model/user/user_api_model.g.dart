// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserApiModel _$UserApiModelFromJson(Map<String, dynamic> json) =>
    _UserApiModel(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      picture: json['picture'] as String,
    );

Map<String, dynamic> _$UserApiModelToJson(_UserApiModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'picture': instance.picture,
    };
