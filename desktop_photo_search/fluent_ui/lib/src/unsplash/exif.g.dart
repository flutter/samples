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
  Iterable<Object?> serialize(Serializers serializers, Exif object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.make;
    if (value != null) {
      result
        ..add('make')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.model;
    if (value != null) {
      result
        ..add('model')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.exposureTime;
    if (value != null) {
      result
        ..add('exposure_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.aperture;
    if (value != null) {
      result
        ..add('aperture')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.focalLength;
    if (value != null) {
      result
        ..add('focal_length')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.iso;
    if (value != null) {
      result
        ..add('iso')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Exif deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExifBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'make':
          result.make = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'model':
          result.model = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'exposure_time':
          result.exposureTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'aperture':
          result.aperture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'focal_length':
          result.focalLength = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'iso':
          result.iso = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$Exif extends Exif {
  @override
  final String? make;
  @override
  final String? model;
  @override
  final String? exposureTime;
  @override
  final String? aperture;
  @override
  final String? focalLength;
  @override
  final int? iso;

  factory _$Exif([void Function(ExifBuilder)? updates]) =>
      (new ExifBuilder()..update(updates))._build();

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
    var _$hash = 0;
    _$hash = $jc(_$hash, make.hashCode);
    _$hash = $jc(_$hash, model.hashCode);
    _$hash = $jc(_$hash, exposureTime.hashCode);
    _$hash = $jc(_$hash, aperture.hashCode);
    _$hash = $jc(_$hash, focalLength.hashCode);
    _$hash = $jc(_$hash, iso.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Exif')
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
  _$Exif? _$v;

  String? _make;
  String? get make => _$this._make;
  set make(String? make) => _$this._make = make;

  String? _model;
  String? get model => _$this._model;
  set model(String? model) => _$this._model = model;

  String? _exposureTime;
  String? get exposureTime => _$this._exposureTime;
  set exposureTime(String? exposureTime) => _$this._exposureTime = exposureTime;

  String? _aperture;
  String? get aperture => _$this._aperture;
  set aperture(String? aperture) => _$this._aperture = aperture;

  String? _focalLength;
  String? get focalLength => _$this._focalLength;
  set focalLength(String? focalLength) => _$this._focalLength = focalLength;

  int? _iso;
  int? get iso => _$this._iso;
  set iso(int? iso) => _$this._iso = iso;

  ExifBuilder();

  ExifBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _make = $v.make;
      _model = $v.model;
      _exposureTime = $v.exposureTime;
      _aperture = $v.aperture;
      _focalLength = $v.focalLength;
      _iso = $v.iso;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Exif other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Exif;
  }

  @override
  void update(void Function(ExifBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Exif build() => _build();

  _$Exif _build() {
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
