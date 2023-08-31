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
  Iterable<Object?> serialize(Serializers serializers, Tags object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Tags deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TagsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Tags extends Tags {
  @override
  final String title;

  factory _$Tags([void Function(TagsBuilder)? updates]) =>
      (new TagsBuilder()..update(updates))._build();

  _$Tags._({required this.title}) : super._() {
    BuiltValueNullFieldError.checkNotNull(title, r'Tags', 'title');
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
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Tags')..add('title', title))
        .toString();
  }
}

class TagsBuilder implements Builder<Tags, TagsBuilder> {
  _$Tags? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  TagsBuilder();

  TagsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Tags other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Tags;
  }

  @override
  void update(void Function(TagsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Tags build() => _build();

  _$Tags _build() {
    final _$result = _$v ??
        new _$Tags._(
            title:
                BuiltValueNullFieldError.checkNotNull(title, r'Tags', 'title'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
