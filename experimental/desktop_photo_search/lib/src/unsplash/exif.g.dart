// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exif.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Exif> _$exifSerializer = new _$ExifSerializer();

class _$ExifSerializer implements StructuredSerializer<Exif> {
  @override
  final Iterable<Type> types = const [Exif, _$Exif];
  @override
  final String wireName = 'Exif';

  @override
  Iterable<Object> serialize(Serializers serializers, Exif object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.make != null) {
      result
        ..add('make')
        ..add(serializers.serialize(object.make,
            specifiedType: const FullType(String)));
    }
    if (object.model != null) {
      result
        ..add('model')
        ..add(serializers.serialize(object.model,
            specifiedType: const FullType(String)));
    }
    if (object.exposureTime != null) {
      result
        ..add('exposure_time')
        ..add(serializers.serialize(object.exposureTime,
            specifiedType: const FullType(String)));
    }
    if (object.aperture != null) {
      result
        ..add('aperture')
        ..add(serializers.serialize(object.aperture,
            specifiedType: const FullType(String)));
    }
    if (object.focalLength != null) {
      result
        ..add('focal_length')
        ..add(serializers.serialize(object.focalLength,
            specifiedType: const FullType(String)));
    }
    if (object.iso != null) {
      result
        ..add('iso')
        ..add(serializers.serialize(object.iso,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Exif deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExifBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'make':
          result.make = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'model':
          result.model = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'exposure_time':
          result.exposureTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'aperture':
          result.aperture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'focal_length':
          result.focalLength = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'iso':
          result.iso = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Exif extends Exif {
  @override
  final String make;
  @override
  final String model;
  @override
  final String exposureTime;
  @override
  final String aperture;
  @override
  final String focalLength;
  @override
  final int iso;

  factory _$Exif([void Function(ExifBuilder) updates]) =>
      (new ExifBuilder()..update(updates)).build();

  _$Exif._(
      {this.make,
      this.model,
      this.exposureTime,
      this.aperture,
      this.focalLength,
      this.iso})
      : super._();

  @override
  Exif rebuild(void Function(ExifBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExifBuilder toBuilder() => new ExifBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Exif &&
        make == other.make &&
        model == other.model &&
        exposureTime == other.exposureTime &&
        aperture == other.aperture &&
        focalLength == other.focalLength &&
        iso == other.iso;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, make.hashCode), model.hashCode),
                    exposureTime.hashCode),
                aperture.hashCode),
            focalLength.hashCode),
        iso.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Exif')
          ..add('make', make)
          ..add('model', model)
          ..add('exposureTime', exposureTime)
          ..add('aperture', aperture)
          ..add('focalLength', focalLength)
          ..add('iso', iso))
        .toString();
  }
}

class ExifBuilder implements Builder<Exif, ExifBuilder> {
  _$Exif _$v;

  String _make;
  String get make => _$this._make;
  set make(String make) => _$this._make = make;

  String _model;
  String get model => _$this._model;
  set model(String model) => _$this._model = model;

  String _exposureTime;
  String get exposureTime => _$this._exposureTime;
  set exposureTime(String exposureTime) => _$this._exposureTime = exposureTime;

  String _aperture;
  String get aperture => _$this._aperture;
  set aperture(String aperture) => _$this._aperture = aperture;

  String _focalLength;
  String get focalLength => _$this._focalLength;
  set focalLength(String focalLength) => _$this._focalLength = focalLength;

  int _iso;
  int get iso => _$this._iso;
  set iso(int iso) => _$this._iso = iso;

  ExifBuilder();

  ExifBuilder get _$this {
    if (_$v != null) {
      _make = _$v.make;
      _model = _$v.model;
      _exposureTime = _$v.exposureTime;
      _aperture = _$v.aperture;
      _focalLength = _$v.focalLength;
      _iso = _$v.iso;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Exif other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Exif;
  }

  @override
  void update(void Function(ExifBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Exif build() {
    final _$result = _$v ??
        new _$Exif._(
            make: make,
            model: model,
            exposureTime: exposureTime,
            aperture: aperture,
            focalLength: focalLength,
            iso: iso);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
