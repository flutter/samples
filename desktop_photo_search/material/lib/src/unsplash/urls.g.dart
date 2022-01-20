// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'urls.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Urls> _$urlsSerializer = new _$UrlsSerializer();

class _$UrlsSerializer implements StructuredSerializer<Urls> {
  @override
  final Iterable<Type> types = const [Urls, _$Urls];
  @override
  final String wireName = 'Urls';

  @override
  Iterable<Object?> serialize(Serializers serializers, Urls object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.raw;
    if (value != null) {
      result
        ..add('raw')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.full;
    if (value != null) {
      result
        ..add('full')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.regular;
    if (value != null) {
      result
        ..add('regular')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.small;
    if (value != null) {
      result
        ..add('small')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.thumb;
    if (value != null) {
      result
        ..add('thumb')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Urls deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UrlsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'raw':
          result.raw = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'full':
          result.full = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'regular':
          result.regular = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'small':
          result.small = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'thumb':
          result.thumb = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Urls extends Urls {
  @override
  final String? raw;
  @override
  final String? full;
  @override
  final String? regular;
  @override
  final String? small;
  @override
  final String? thumb;

  factory _$Urls([void Function(UrlsBuilder)? updates]) =>
      (new UrlsBuilder()..update(updates)).build();

  _$Urls._({this.raw, this.full, this.regular, this.small, this.thumb})
      : super._();

  @override
  Urls rebuild(void Function(UrlsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UrlsBuilder toBuilder() => new UrlsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Urls &&
        raw == other.raw &&
        full == other.full &&
        regular == other.regular &&
        small == other.small &&
        thumb == other.thumb;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, raw.hashCode), full.hashCode), regular.hashCode),
            small.hashCode),
        thumb.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Urls')
          ..add('raw', raw)
          ..add('full', full)
          ..add('regular', regular)
          ..add('small', small)
          ..add('thumb', thumb))
        .toString();
  }
}

class UrlsBuilder implements Builder<Urls, UrlsBuilder> {
  _$Urls? _$v;

  String? _raw;
  String? get raw => _$this._raw;
  set raw(String? raw) => _$this._raw = raw;

  String? _full;
  String? get full => _$this._full;
  set full(String? full) => _$this._full = full;

  String? _regular;
  String? get regular => _$this._regular;
  set regular(String? regular) => _$this._regular = regular;

  String? _small;
  String? get small => _$this._small;
  set small(String? small) => _$this._small = small;

  String? _thumb;
  String? get thumb => _$this._thumb;
  set thumb(String? thumb) => _$this._thumb = thumb;

  UrlsBuilder();

  UrlsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _raw = $v.raw;
      _full = $v.full;
      _regular = $v.regular;
      _small = $v.small;
      _thumb = $v.thumb;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Urls other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Urls;
  }

  @override
  void update(void Function(UrlsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Urls build() {
    final _$result = _$v ??
        new _$Urls._(
            raw: raw, full: full, regular: regular, small: small, thumb: thumb);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
