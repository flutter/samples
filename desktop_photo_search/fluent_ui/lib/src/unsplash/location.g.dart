// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Location> _$locationSerializer = new _$LocationSerializer();

class _$LocationSerializer implements StructuredSerializer<Location> {
  @override
  final Iterable<Type> types = const [Location, _$Location];
  @override
  final String wireName = 'Location';

  @override
  Iterable<Object?> serialize(Serializers serializers, Location object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.country;
    if (value != null) {
      result
        ..add('country')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.position;
    if (value != null) {
      result
        ..add('position')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Position)));
    }
    return result;
  }

  @override
  Location deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'position':
          result.position.replace(serializers.deserialize(value,
              specifiedType: const FullType(Position))! as Position);
          break;
      }
    }

    return result.build();
  }
}

class _$Location extends Location {
  @override
  final String? city;
  @override
  final String? country;
  @override
  final Position? position;

  factory _$Location([void Function(LocationBuilder)? updates]) =>
      (new LocationBuilder()..update(updates))._build();

  _$Location._({this.city, this.country, this.position}) : super._();

  @override
  Location rebuild(void Function(LocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationBuilder toBuilder() => new LocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Location &&
        city == other.city &&
        country == other.country &&
        position == other.position;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Location')
          ..add('city', city)
          ..add('country', country)
          ..add('position', position))
        .toString();
  }
}

class LocationBuilder implements Builder<Location, LocationBuilder> {
  _$Location? _$v;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  PositionBuilder? _position;
  PositionBuilder get position => _$this._position ??= new PositionBuilder();
  set position(PositionBuilder? position) => _$this._position = position;

  LocationBuilder();

  LocationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _city = $v.city;
      _country = $v.country;
      _position = $v.position?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Location other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Location;
  }

  @override
  void update(void Function(LocationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Location build() => _build();

  _$Location _build() {
    _$Location _$result;
    try {
      _$result = _$v ??
          new _$Location._(
              city: city, country: country, position: _position?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'position';
        _position?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Location', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
