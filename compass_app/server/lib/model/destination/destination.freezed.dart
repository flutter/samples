// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'destination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Destination {

/// e.g. 'alaska'
 String get ref;/// e.g. 'Alaska'
 String get name;/// e.g. 'United States'
 String get country;/// e.g. 'North America'
 String get continent;/// e.g. 'Alaska is a haven for outdoor enthusiasts ...'
 String get knownFor;/// e.g. ['Mountain', 'Off-the-beaten-path', 'Wildlife watching']
 List<String> get tags;/// e.g. 'https://storage.googleapis.com/tripedia-images/destinations/alaska.jpg'
 String get imageUrl;
/// Create a copy of Destination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DestinationCopyWith<Destination> get copyWith => _$DestinationCopyWithImpl<Destination>(this as Destination, _$identity);

  /// Serializes this Destination to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Destination;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Destination&&(identical(other.ref, _this.ref) || other.ref == _this.ref)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.country, _this.country) || other.country == _this.country)&&(identical(other.continent, _this.continent) || other.continent == _this.continent)&&(identical(other.knownFor, _this.knownFor) || other.knownFor == _this.knownFor)&&const DeepCollectionEquality().equals(other.tags, _this.tags)&&(identical(other.imageUrl, _this.imageUrl) || other.imageUrl == _this.imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Destination;
  return Object.hash(runtimeType,_this.ref,_this.name,_this.country,_this.continent,_this.knownFor,const DeepCollectionEquality().hash(_this.tags),_this.imageUrl);
}

@override
String toString() {
  final _this = this as Destination;
  return 'Destination(ref: ${_this.ref}, name: ${_this.name}, country: ${_this.country}, continent: ${_this.continent}, knownFor: ${_this.knownFor}, tags: ${_this.tags}, imageUrl: ${_this.imageUrl})';
}


}

/// @nodoc
abstract mixin class $DestinationCopyWith<$Res>  {
  factory $DestinationCopyWith(Destination value, $Res Function(Destination) _then) = _$DestinationCopyWithImpl;
@useResult
$Res call({
 String ref, String name, String country, String continent, String knownFor, List<String> tags, String imageUrl
});




}
/// @nodoc
class _$DestinationCopyWithImpl<$Res>
    implements $DestinationCopyWith<$Res> {
  _$DestinationCopyWithImpl(this._self, this._then);

  final Destination _self;
  final $Res Function(Destination) _then;

/// Create a copy of Destination
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ref = null,Object? name = null,Object? country = null,Object? continent = null,Object? knownFor = null,Object? tags = null,Object? imageUrl = null,}) {
  return _then(Destination(
ref: null == ref ? _self.ref : ref // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,continent: null == continent ? _self.continent : continent // ignore: cast_nullable_to_non_nullable
as String,knownFor: null == knownFor ? _self.knownFor : knownFor // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Destination].
extension DestinationPatterns on Destination {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Destination value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Destination() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Destination value)  $default,){
final _that = this;
switch (_that) {
case _Destination():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Destination value)?  $default,){
final _that = this;
switch (_that) {
case _Destination() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String ref,  String name,  String country,  String continent,  String knownFor,  List<String> tags,  String imageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Destination() when $default != null:
return $default(_that.ref,_that.name,_that.country,_that.continent,_that.knownFor,_that.tags,_that.imageUrl);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String ref,  String name,  String country,  String continent,  String knownFor,  List<String> tags,  String imageUrl)  $default,) {final _that = this;
switch (_that) {
case _Destination():
return $default(_that.ref,_that.name,_that.country,_that.continent,_that.knownFor,_that.tags,_that.imageUrl);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String ref,  String name,  String country,  String continent,  String knownFor,  List<String> tags,  String imageUrl)?  $default,) {final _that = this;
switch (_that) {
case _Destination() when $default != null:
return $default(_that.ref,_that.name,_that.country,_that.continent,_that.knownFor,_that.tags,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Destination implements Destination {
  const _Destination({required this.ref, required this.name, required this.country, required this.continent, required this.knownFor, required  List<String> tags, required this.imageUrl}): _tags = tags;
  factory _Destination.fromJson(Map<String, dynamic> json) => _$DestinationFromJson(json);

/// e.g. 'alaska'
@override final  String ref;
/// e.g. 'Alaska'
@override final  String name;
/// e.g. 'United States'
@override final  String country;
/// e.g. 'North America'
@override final  String continent;
/// e.g. 'Alaska is a haven for outdoor enthusiasts ...'
@override final  String knownFor;
/// e.g. ['Mountain', 'Off-the-beaten-path', 'Wildlife watching']
 final  List<String> _tags;
/// e.g. ['Mountain', 'Off-the-beaten-path', 'Wildlife watching']
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

/// e.g. 'https://storage.googleapis.com/tripedia-images/destinations/alaska.jpg'
@override final  String imageUrl;

/// Create a copy of Destination
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DestinationCopyWith<_Destination> get copyWith => __$DestinationCopyWithImpl<_Destination>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DestinationToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Destination&&(identical(other.ref, ref) || other.ref == ref)&&(identical(other.name, name) || other.name == name)&&(identical(other.country, country) || other.country == country)&&(identical(other.continent, continent) || other.continent == continent)&&(identical(other.knownFor, knownFor) || other.knownFor == knownFor)&&const DeepCollectionEquality().equals(other.tags, _tags)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,ref,name,country,continent,knownFor,const DeepCollectionEquality().hash(_tags),imageUrl);
}

@override
String toString() {
    return 'Destination(ref: $ref, name: $name, country: $country, continent: $continent, knownFor: $knownFor, tags: $tags, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$DestinationCopyWith<$Res> implements $DestinationCopyWith<$Res> {
  factory _$DestinationCopyWith(_Destination value, $Res Function(_Destination) _then) = __$DestinationCopyWithImpl;
@override @useResult
$Res call({
 String ref, String name, String country, String continent, String knownFor, List<String> tags, String imageUrl
});




}
/// @nodoc
class __$DestinationCopyWithImpl<$Res>
    implements _$DestinationCopyWith<$Res> {
  __$DestinationCopyWithImpl(this._self, this._then);

  final _Destination _self;
  final $Res Function(_Destination) _then;

/// Create a copy of Destination
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ref = null,Object? name = null,Object? country = null,Object? continent = null,Object? knownFor = null,Object? tags = null,Object? imageUrl = null,}) {
  return _then(_Destination(
ref: null == ref ? _self.ref : ref // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,continent: null == continent ? _self.continent : continent // ignore: cast_nullable_to_non_nullable
as String,knownFor: null == knownFor ? _self.knownFor : knownFor // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
