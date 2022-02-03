// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'position.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Position> _$positionSerializer = new _$PositionSerializer();

class _$PositionSerializer implements StructuredSerializer<Position> {
  @override
  final Iterable<Type> types = const [Position, _$Position];
  @override
  final String wireName = 'Position';

  @override
  Iterable<Object?> serialize(Serializers serializers, Position object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'latitude',
      serializers.serialize(object.latitude,
          specifiedType: const FullType(double)),
      'longitude',
      serializers.serialize(object.longitude,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  Position deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PositionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$Position extends Position {
  @override
  final double latitude;
  @override
  final double longitude;

  factory _$Position([void Function(PositionBuilder)? updates]) =>
      (new PositionBuilder()..update(updates)).build();

  _$Position._({required this.latitude, required this.longitude}) : super._() {
    BuiltValueNullFieldError.checkNotNull(latitude, 'Position', 'latitude');
    BuiltValueNullFieldError.checkNotNull(longitude, 'Position', 'longitude');
  }

  @override
  Position rebuild(void Function(PositionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PositionBuilder toBuilder() => new PositionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Position &&
        latitude == other.latitude &&
        longitude == other.longitude;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, latitude.hashCode), longitude.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Position')
          ..add('latitude', latitude)
          ..add('longitude', longitude))
        .toString();
  }
}

class PositionBuilder implements Builder<Position, PositionBuilder> {
  _$Position? _$v;

  double? _latitude;
  double? get latitude => _$this._latitude;
  set latitude(double? latitude) => _$this._latitude = latitude;

  double? _longitude;
  double? get longitude => _$this._longitude;
  set longitude(double? longitude) => _$this._longitude = longitude;

  PositionBuilder();

  PositionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Position other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Position;
  }

  @override
  void update(void Function(PositionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Position build() {
    final _$result = _$v ??
        new _$Position._(
            latitude: BuiltValueNullFieldError.checkNotNull(
                latitude, 'Position', 'latitude'),
            longitude: BuiltValueNullFieldError.checkNotNull(
                longitude, 'Position', 'longitude'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
