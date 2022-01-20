// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<User> _$userSerializer = new _$UserSerializer();

class _$UserSerializer implements StructuredSerializer<User> {
  @override
  final Iterable<Type> types = const [User, _$User];
  @override
  final String wireName = 'User';

  @override
  Iterable<Object?> serialize(Serializers serializers, User object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.updatedAt;
    if (value != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.portfolioUrl;
    if (value != null) {
      result
        ..add('portfolio_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bio;
    if (value != null) {
      result
        ..add('bio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.totalLikes;
    if (value != null) {
      result
        ..add('total_likes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.totalPhotos;
    if (value != null) {
      result
        ..add('total_photos')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.totalCollections;
    if (value != null) {
      result
        ..add('total_collections')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.links;
    if (value != null) {
      result
        ..add('links')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Links)));
    }
    return result;
  }

  @override
  User deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'portfolio_url':
          result.portfolioUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bio':
          result.bio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'total_likes':
          result.totalLikes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'total_photos':
          result.totalPhotos = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'total_collections':
          result.totalCollections = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'links':
          result.links.replace(serializers.deserialize(value,
              specifiedType: const FullType(Links))! as Links);
          break;
      }
    }

    return result.build();
  }
}

class _$User extends User {
  @override
  final String id;
  @override
  final String? updatedAt;
  @override
  final String username;
  @override
  final String name;
  @override
  final String? portfolioUrl;
  @override
  final String? bio;
  @override
  final String? location;
  @override
  final int? totalLikes;
  @override
  final int? totalPhotos;
  @override
  final int? totalCollections;
  @override
  final Links? links;

  factory _$User([void Function(UserBuilder)? updates]) =>
      (new UserBuilder()..update(updates)).build();

  _$User._(
      {required this.id,
      this.updatedAt,
      required this.username,
      required this.name,
      this.portfolioUrl,
      this.bio,
      this.location,
      this.totalLikes,
      this.totalPhotos,
      this.totalCollections,
      this.links})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'User', 'id');
    BuiltValueNullFieldError.checkNotNull(username, 'User', 'username');
    BuiltValueNullFieldError.checkNotNull(name, 'User', 'name');
  }

  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => new UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        id == other.id &&
        updatedAt == other.updatedAt &&
        username == other.username &&
        name == other.name &&
        portfolioUrl == other.portfolioUrl &&
        bio == other.bio &&
        location == other.location &&
        totalLikes == other.totalLikes &&
        totalPhotos == other.totalPhotos &&
        totalCollections == other.totalCollections &&
        links == other.links;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, id.hashCode),
                                            updatedAt.hashCode),
                                        username.hashCode),
                                    name.hashCode),
                                portfolioUrl.hashCode),
                            bio.hashCode),
                        location.hashCode),
                    totalLikes.hashCode),
                totalPhotos.hashCode),
            totalCollections.hashCode),
        links.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('User')
          ..add('id', id)
          ..add('updatedAt', updatedAt)
          ..add('username', username)
          ..add('name', name)
          ..add('portfolioUrl', portfolioUrl)
          ..add('bio', bio)
          ..add('location', location)
          ..add('totalLikes', totalLikes)
          ..add('totalPhotos', totalPhotos)
          ..add('totalCollections', totalCollections)
          ..add('links', links))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _portfolioUrl;
  String? get portfolioUrl => _$this._portfolioUrl;
  set portfolioUrl(String? portfolioUrl) => _$this._portfolioUrl = portfolioUrl;

  String? _bio;
  String? get bio => _$this._bio;
  set bio(String? bio) => _$this._bio = bio;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  int? _totalLikes;
  int? get totalLikes => _$this._totalLikes;
  set totalLikes(int? totalLikes) => _$this._totalLikes = totalLikes;

  int? _totalPhotos;
  int? get totalPhotos => _$this._totalPhotos;
  set totalPhotos(int? totalPhotos) => _$this._totalPhotos = totalPhotos;

  int? _totalCollections;
  int? get totalCollections => _$this._totalCollections;
  set totalCollections(int? totalCollections) =>
      _$this._totalCollections = totalCollections;

  LinksBuilder? _links;
  LinksBuilder get links => _$this._links ??= new LinksBuilder();
  set links(LinksBuilder? links) => _$this._links = links;

  UserBuilder();

  UserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _updatedAt = $v.updatedAt;
      _username = $v.username;
      _name = $v.name;
      _portfolioUrl = $v.portfolioUrl;
      _bio = $v.bio;
      _location = $v.location;
      _totalLikes = $v.totalLikes;
      _totalPhotos = $v.totalPhotos;
      _totalCollections = $v.totalCollections;
      _links = $v.links?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$User build() {
    _$User _$result;
    try {
      _$result = _$v ??
          new _$User._(
              id: BuiltValueNullFieldError.checkNotNull(id, 'User', 'id'),
              updatedAt: updatedAt,
              username: BuiltValueNullFieldError.checkNotNull(
                  username, 'User', 'username'),
              name: BuiltValueNullFieldError.checkNotNull(name, 'User', 'name'),
              portfolioUrl: portfolioUrl,
              bio: bio,
              location: location,
              totalLikes: totalLikes,
              totalPhotos: totalPhotos,
              totalCollections: totalCollections,
              links: _links?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'links';
        _links?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'User', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
