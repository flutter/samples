// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_user_collections.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CurrentUserCollections> _$currentUserCollectionsSerializer =
    new _$CurrentUserCollectionsSerializer();

class _$CurrentUserCollectionsSerializer
    implements StructuredSerializer<CurrentUserCollections> {
  @override
  final Iterable<Type> types = const [
    CurrentUserCollections,
    _$CurrentUserCollections
  ];
  @override
  final String wireName = 'CurrentUserCollections';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CurrentUserCollections object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.publishedAt;
    if (value != null) {
      result
        ..add('published_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updatedAt;
    if (value != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CurrentUserCollections deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CurrentUserCollectionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'published_at':
          result.publishedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$CurrentUserCollections extends CurrentUserCollections {
  @override
  final int id;
  @override
  final String? title;
  @override
  final String? publishedAt;
  @override
  final String? updatedAt;

  factory _$CurrentUserCollections(
          [void Function(CurrentUserCollectionsBuilder)? updates]) =>
      (new CurrentUserCollectionsBuilder()..update(updates)).build();

  _$CurrentUserCollections._(
      {required this.id, this.title, this.publishedAt, this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'CurrentUserCollections', 'id');
  }

  @override
  CurrentUserCollections rebuild(
          void Function(CurrentUserCollectionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CurrentUserCollectionsBuilder toBuilder() =>
      new CurrentUserCollectionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CurrentUserCollections &&
        id == other.id &&
        title == other.title &&
        publishedAt == other.publishedAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), title.hashCode), publishedAt.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CurrentUserCollections')
          ..add('id', id)
          ..add('title', title)
          ..add('publishedAt', publishedAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class CurrentUserCollectionsBuilder
    implements Builder<CurrentUserCollections, CurrentUserCollectionsBuilder> {
  _$CurrentUserCollections? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _publishedAt;
  String? get publishedAt => _$this._publishedAt;
  set publishedAt(String? publishedAt) => _$this._publishedAt = publishedAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  CurrentUserCollectionsBuilder();

  CurrentUserCollectionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _publishedAt = $v.publishedAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CurrentUserCollections other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CurrentUserCollections;
  }

  @override
  void update(void Function(CurrentUserCollectionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CurrentUserCollections build() {
    final _$result = _$v ??
        new _$CurrentUserCollections._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'CurrentUserCollections', 'id'),
            title: title,
            publishedAt: publishedAt,
            updatedAt: updatedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
