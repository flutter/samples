// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Photo> _$photoSerializer = new _$PhotoSerializer();

class _$PhotoSerializer implements StructuredSerializer<Photo> {
  @override
  final Iterable<Type> types = const [Photo, _$Photo];
  @override
  final String wireName = 'Photo';

  @override
  Iterable<Object> serialize(Serializers serializers, Photo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(String)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(String)));
    }
    if (object.width != null) {
      result
        ..add('width')
        ..add(serializers.serialize(object.width,
            specifiedType: const FullType(int)));
    }
    if (object.height != null) {
      result
        ..add('height')
        ..add(serializers.serialize(object.height,
            specifiedType: const FullType(int)));
    }
    if (object.color != null) {
      result
        ..add('color')
        ..add(serializers.serialize(object.color,
            specifiedType: const FullType(String)));
    }
    if (object.downloads != null) {
      result
        ..add('downloads')
        ..add(serializers.serialize(object.downloads,
            specifiedType: const FullType(int)));
    }
    if (object.likes != null) {
      result
        ..add('likes')
        ..add(serializers.serialize(object.likes,
            specifiedType: const FullType(int)));
    }
    if (object.likedByUser != null) {
      result
        ..add('liked_by_user')
        ..add(serializers.serialize(object.likedByUser,
            specifiedType: const FullType(bool)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.exif != null) {
      result
        ..add('exif')
        ..add(serializers.serialize(object.exif,
            specifiedType: const FullType(Exif)));
    }
    if (object.location != null) {
      result
        ..add('location')
        ..add(serializers.serialize(object.location,
            specifiedType: const FullType(Location)));
    }
    if (object.tags != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(object.tags,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Tags)])));
    }
    if (object.currentUserCollections != null) {
      result
        ..add('current_user_collections')
        ..add(serializers.serialize(object.currentUserCollections,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CurrentUserCollections)])));
    }
    if (object.urls != null) {
      result
        ..add('urls')
        ..add(serializers.serialize(object.urls,
            specifiedType: const FullType(Urls)));
    }
    if (object.links != null) {
      result
        ..add('links')
        ..add(serializers.serialize(object.links,
            specifiedType: const FullType(Links)));
    }
    if (object.user != null) {
      result
        ..add('user')
        ..add(serializers.serialize(object.user,
            specifiedType: const FullType(User)));
    }
    return result;
  }

  @override
  Photo deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PhotoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'width':
          result.width = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'downloads':
          result.downloads = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'likes':
          result.likes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'liked_by_user':
          result.likedByUser = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'exif':
          result.exif.replace(serializers.deserialize(value,
              specifiedType: const FullType(Exif)) as Exif);
          break;
        case 'location':
          result.location.replace(serializers.deserialize(value,
              specifiedType: const FullType(Location)) as Location);
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Tags)]))
              as BuiltList<dynamic>);
          break;
        case 'current_user_collections':
          result.currentUserCollections.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(CurrentUserCollections)
              ])) as BuiltList<dynamic>);
          break;
        case 'urls':
          result.urls.replace(serializers.deserialize(value,
              specifiedType: const FullType(Urls)) as Urls);
          break;
        case 'links':
          result.links.replace(serializers.deserialize(value,
              specifiedType: const FullType(Links)) as Links);
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(User)) as User);
          break;
      }
    }

    return result.build();
  }
}

class _$Photo extends Photo {
  @override
  final String id;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final int width;
  @override
  final int height;
  @override
  final String color;
  @override
  final int downloads;
  @override
  final int likes;
  @override
  final bool likedByUser;
  @override
  final String description;
  @override
  final Exif exif;
  @override
  final Location location;
  @override
  final BuiltList<Tags> tags;
  @override
  final BuiltList<CurrentUserCollections> currentUserCollections;
  @override
  final Urls urls;
  @override
  final Links links;
  @override
  final User user;

  factory _$Photo([void Function(PhotoBuilder) updates]) =>
      (new PhotoBuilder()..update(updates)).build();

  _$Photo._(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.width,
      this.height,
      this.color,
      this.downloads,
      this.likes,
      this.likedByUser,
      this.description,
      this.exif,
      this.location,
      this.tags,
      this.currentUserCollections,
      this.urls,
      this.links,
      this.user})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Photo', 'id');
    }
  }

  @override
  Photo rebuild(void Function(PhotoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PhotoBuilder toBuilder() => new PhotoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Photo &&
        id == other.id &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        width == other.width &&
        height == other.height &&
        color == other.color &&
        downloads == other.downloads &&
        likes == other.likes &&
        likedByUser == other.likedByUser &&
        description == other.description &&
        exif == other.exif &&
        location == other.location &&
        tags == other.tags &&
        currentUserCollections == other.currentUserCollections &&
        urls == other.urls &&
        links == other.links &&
        user == other.user;
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
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        0,
                                                                        id
                                                                            .hashCode),
                                                                    createdAt
                                                                        .hashCode),
                                                                updatedAt
                                                                    .hashCode),
                                                            width.hashCode),
                                                        height.hashCode),
                                                    color.hashCode),
                                                downloads.hashCode),
                                            likes.hashCode),
                                        likedByUser.hashCode),
                                    description.hashCode),
                                exif.hashCode),
                            location.hashCode),
                        tags.hashCode),
                    currentUserCollections.hashCode),
                urls.hashCode),
            links.hashCode),
        user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Photo')
          ..add('id', id)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('width', width)
          ..add('height', height)
          ..add('color', color)
          ..add('downloads', downloads)
          ..add('likes', likes)
          ..add('likedByUser', likedByUser)
          ..add('description', description)
          ..add('exif', exif)
          ..add('location', location)
          ..add('tags', tags)
          ..add('currentUserCollections', currentUserCollections)
          ..add('urls', urls)
          ..add('links', links)
          ..add('user', user))
        .toString();
  }
}

class PhotoBuilder implements Builder<Photo, PhotoBuilder> {
  _$Photo _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  int _width;
  int get width => _$this._width;
  set width(int width) => _$this._width = width;

  int _height;
  int get height => _$this._height;
  set height(int height) => _$this._height = height;

  String _color;
  String get color => _$this._color;
  set color(String color) => _$this._color = color;

  int _downloads;
  int get downloads => _$this._downloads;
  set downloads(int downloads) => _$this._downloads = downloads;

  int _likes;
  int get likes => _$this._likes;
  set likes(int likes) => _$this._likes = likes;

  bool _likedByUser;
  bool get likedByUser => _$this._likedByUser;
  set likedByUser(bool likedByUser) => _$this._likedByUser = likedByUser;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  ExifBuilder _exif;
  ExifBuilder get exif => _$this._exif ??= new ExifBuilder();
  set exif(ExifBuilder exif) => _$this._exif = exif;

  LocationBuilder _location;
  LocationBuilder get location => _$this._location ??= new LocationBuilder();
  set location(LocationBuilder location) => _$this._location = location;

  ListBuilder<Tags> _tags;
  ListBuilder<Tags> get tags => _$this._tags ??= new ListBuilder<Tags>();
  set tags(ListBuilder<Tags> tags) => _$this._tags = tags;

  ListBuilder<CurrentUserCollections> _currentUserCollections;
  ListBuilder<CurrentUserCollections> get currentUserCollections =>
      _$this._currentUserCollections ??=
          new ListBuilder<CurrentUserCollections>();
  set currentUserCollections(
          ListBuilder<CurrentUserCollections> currentUserCollections) =>
      _$this._currentUserCollections = currentUserCollections;

  UrlsBuilder _urls;
  UrlsBuilder get urls => _$this._urls ??= new UrlsBuilder();
  set urls(UrlsBuilder urls) => _$this._urls = urls;

  LinksBuilder _links;
  LinksBuilder get links => _$this._links ??= new LinksBuilder();
  set links(LinksBuilder links) => _$this._links = links;

  UserBuilder _user;
  UserBuilder get user => _$this._user ??= new UserBuilder();
  set user(UserBuilder user) => _$this._user = user;

  PhotoBuilder();

  PhotoBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _width = _$v.width;
      _height = _$v.height;
      _color = _$v.color;
      _downloads = _$v.downloads;
      _likes = _$v.likes;
      _likedByUser = _$v.likedByUser;
      _description = _$v.description;
      _exif = _$v.exif?.toBuilder();
      _location = _$v.location?.toBuilder();
      _tags = _$v.tags?.toBuilder();
      _currentUserCollections = _$v.currentUserCollections?.toBuilder();
      _urls = _$v.urls?.toBuilder();
      _links = _$v.links?.toBuilder();
      _user = _$v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Photo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Photo;
  }

  @override
  void update(void Function(PhotoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Photo build() {
    _$Photo _$result;
    try {
      _$result = _$v ??
          new _$Photo._(
              id: id,
              createdAt: createdAt,
              updatedAt: updatedAt,
              width: width,
              height: height,
              color: color,
              downloads: downloads,
              likes: likes,
              likedByUser: likedByUser,
              description: description,
              exif: _exif?.build(),
              location: _location?.build(),
              tags: _tags?.build(),
              currentUserCollections: _currentUserCollections?.build(),
              urls: _urls?.build(),
              links: _links?.build(),
              user: _user?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'exif';
        _exif?.build();
        _$failedField = 'location';
        _location?.build();
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'currentUserCollections';
        _currentUserCollections?.build();
        _$failedField = 'urls';
        _urls?.build();
        _$failedField = 'links';
        _links?.build();
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Photo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
