// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tags.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Tags> _$tagsSerializer = new _$TagsSerializer();

class _$TagsSerializer implements StructuredSerializer<Tags> {
  @override
  final Iterable<Type> types = const [Tags, _$Tags];
  @override
  final String wireName = 'Tags';

  @override
  Iterable<Object> serialize(Serializers serializers, Tags object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Tags deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TagsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Tags extends Tags {
  @override
  final String title;

  factory _$Tags([void Function(TagsBuilder) updates]) =>
      (new TagsBuilder()..update(updates)).build();

  _$Tags._({this.title}) : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('Tags', 'title');
    }
  }

  @override
  Tags rebuild(void Function(TagsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagsBuilder toBuilder() => new TagsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Tags && title == other.title;
  }

  @override
  int get hashCode {
    return $jf($jc(0, title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Tags')..add('title', title))
        .toString();
  }
}

class TagsBuilder implements Builder<Tags, TagsBuilder> {
  _$Tags _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  TagsBuilder();

  TagsBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Tags other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Tags;
  }

  @override
  void update(void Function(TagsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Tags build() {
    final _$result = _$v ?? new _$Tags._(title: title);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
