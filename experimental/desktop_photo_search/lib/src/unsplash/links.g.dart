// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'links.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Links> _$linksSerializer = new _$LinksSerializer();

class _$LinksSerializer implements StructuredSerializer<Links> {
  @override
  final Iterable<Type> types = const [Links, _$Links];
  @override
  final String wireName = 'Links';

  @override
  Iterable<Object> serialize(Serializers serializers, Links object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.self != null) {
      result
        ..add('self')
        ..add(serializers.serialize(object.self,
            specifiedType: const FullType(String)));
    }
    if (object.html != null) {
      result
        ..add('html')
        ..add(serializers.serialize(object.html,
            specifiedType: const FullType(String)));
    }
    if (object.download != null) {
      result
        ..add('download')
        ..add(serializers.serialize(object.download,
            specifiedType: const FullType(String)));
    }
    if (object.downloadLocation != null) {
      result
        ..add('download_location')
        ..add(serializers.serialize(object.downloadLocation,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Links deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LinksBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'self':
          result.self = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html':
          result.html = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'download':
          result.download = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'download_location':
          result.downloadLocation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Links extends Links {
  @override
  final String self;
  @override
  final String html;
  @override
  final String download;
  @override
  final String downloadLocation;

  factory _$Links([void Function(LinksBuilder) updates]) =>
      (new LinksBuilder()..update(updates)).build();

  _$Links._({this.self, this.html, this.download, this.downloadLocation})
      : super._();

  @override
  Links rebuild(void Function(LinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LinksBuilder toBuilder() => new LinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Links &&
        self == other.self &&
        html == other.html &&
        download == other.download &&
        downloadLocation == other.downloadLocation;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, self.hashCode), html.hashCode), download.hashCode),
        downloadLocation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Links')
          ..add('self', self)
          ..add('html', html)
          ..add('download', download)
          ..add('downloadLocation', downloadLocation))
        .toString();
  }
}

class LinksBuilder implements Builder<Links, LinksBuilder> {
  _$Links _$v;

  String _self;
  String get self => _$this._self;
  set self(String self) => _$this._self = self;

  String _html;
  String get html => _$this._html;
  set html(String html) => _$this._html = html;

  String _download;
  String get download => _$this._download;
  set download(String download) => _$this._download = download;

  String _downloadLocation;
  String get downloadLocation => _$this._downloadLocation;
  set downloadLocation(String downloadLocation) =>
      _$this._downloadLocation = downloadLocation;

  LinksBuilder();

  LinksBuilder get _$this {
    if (_$v != null) {
      _self = _$v.self;
      _html = _$v.html;
      _download = _$v.download;
      _downloadLocation = _$v.downloadLocation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Links other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Links;
  }

  @override
  void update(void Function(LinksBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Links build() {
    final _$result = _$v ??
        new _$Links._(
            self: self,
            html: html,
            download: download,
            downloadLocation: downloadLocation);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
