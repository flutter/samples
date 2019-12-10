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
  Iterable<Object> serialize(Serializers serializers, Location object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.city != null) {
      result
        ..add('city')
        ..add(serializers.serialize(object.city,
            specifiedType: const FullType(String)));
    }
    if (object.country != null) {
      result
        ..add('country')
        ..add(serializers.serialize(object.country,
            specifiedType: const FullType(String)));
    }
    if (object.position != null) {
      result
        ..add('position')
        ..add(serializers.serialize(object.position,
            specifiedType: const FullType(Position)));
    }
    return result;
  }

  @override
  Location deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'position':
          result.position.replace(serializers.deserialize(value,
              specifiedType: const FullType(Position)) as Position);
          break;
      }
    }

    return result.build();
  }
}

class _$Location extends Location {
  @override
  final String city;
  @override
  final String country;
  @override
  final Position position;

  factory _$Location([void Function(LocationBuilder) updates]) =>
      (new LocationBuilder()..update(updates)).build();

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
    return $jf(
        $jc($jc($jc(0, city.hashCode), country.hashCode), position.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Location')
          ..add('city', city)
          ..add('country', country)
          ..add('position', position))
        .toString();
  }
}

class LocationBuilder implements Builder<Location, LocationBuilder> {
  _$Location _$v;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  String _country;
  String get country => _$this._country;
  set country(String country) => _$this._country = country;

  PositionBuilder _position;
  PositionBuilder get position => _$this._position ??= new PositionBuilder();
  set position(PositionBuilder position) => _$this._position = position;

  LocationBuilder();

  LocationBuilder get _$this {
    if (_$v != null) {
      _city = _$v.city;
      _country = _$v.country;
      _position = _$v.position?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Location other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Location;
  }

  @override
  void update(void Function(LocationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Location build() {
    _$Location _$result;
    try {
      _$result = _$v ??
          new _$Location._(
              city: city, country: country, position: _position?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'position';
        _position?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Location', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
