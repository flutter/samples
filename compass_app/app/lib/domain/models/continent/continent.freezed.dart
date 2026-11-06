// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'continent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Continent {

/// e.g. 'Europe'
 String get name;/// e.g. 'https://rstr.in/google/tripedia/TmR12QdlVTT'
 String get imageUrl;
/// Create a copy of Continent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContinentCopyWith<Continent> get copyWith => _$ContinentCopyWithImpl<Continent>(this as Continent, _$identity);

  /// Serializes this Continent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Continent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Continent&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.imageUrl, _this.imageUrl) || other.imageUrl == _this.imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Continent;
  return Object.hash(runtimeType,_this.name,_this.imageUrl);
}

@override
String toString() {
  final _this = this as Continent;
  return 'Continent(name: ${_this.name}, imageUrl: ${_this.imageUrl})';
}


}

/// @nodoc
abstract mixin class $ContinentCopyWith<$Res>  {
  factory $ContinentCopyWith(Continent value, $Res Function(Continent) _then) = _$ContinentCopyWithImpl;
@useResult
$Res call({
 String name, String imageUrl
});




}
/// @nodoc
class _$ContinentCopyWithImpl<$Res>
    implements $ContinentCopyWith<$Res> {
  _$ContinentCopyWithImpl(this._self, this._then);

  final Continent _self;
  final $Res Function(Continent) _then;

/// Create a copy of Continent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? imageUrl = null,}) {
  return _then(Continent(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Continent].
extension ContinentPatterns on Continent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Continent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Continent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Continent value)  $default,){
final _that = this;
switch (_that) {
case _Continent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Continent value)?  $default,){
final _that = this;
switch (_that) {
case _Continent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String imageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Continent() when $default != null:
return $default(_that.name,_that.imageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String imageUrl)  $default,) {final _that = this;
switch (_that) {
case _Continent():
return $default(_that.name,_that.imageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String imageUrl)?  $default,) {final _that = this;
switch (_that) {
case _Continent() when $default != null:
return $default(_that.name,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Continent implements Continent {
  const _Continent({required this.name, required this.imageUrl});
  factory _Continent.fromJson(Map<String, dynamic> json) => _$ContinentFromJson(json);

/// e.g. 'Europe'
@override final  String name;
/// e.g. 'https://rstr.in/google/tripedia/TmR12QdlVTT'
@override final  String imageUrl;

/// Create a copy of Continent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContinentCopyWith<_Continent> get copyWith => __$ContinentCopyWithImpl<_Continent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContinentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Continent&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,name,imageUrl);
}

@override
String toString() {
    return 'Continent(name: $name, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$ContinentCopyWith<$Res> implements $ContinentCopyWith<$Res> {
  factory _$ContinentCopyWith(_Continent value, $Res Function(_Continent) _then) = __$ContinentCopyWithImpl;
@override @useResult
$Res call({
 String name, String imageUrl
});




}
/// @nodoc
class __$ContinentCopyWithImpl<$Res>
    implements _$ContinentCopyWith<$Res> {
  __$ContinentCopyWithImpl(this._self, this._then);

  final _Continent _self;
  final $Res Function(_Continent) _then;

/// Create a copy of Continent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? imageUrl = null,}) {
  return _then(_Continent(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
