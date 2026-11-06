// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserApiModel {

/// The user's ID.
 String get id;/// The user's name.
 String get name;/// The user's email.
 String get email;/// The user's picture URL.
 String get picture;
/// Create a copy of UserApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserApiModelCopyWith<UserApiModel> get copyWith => _$UserApiModelCopyWithImpl<UserApiModel>(this as UserApiModel, _$identity);

  /// Serializes this UserApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as UserApiModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserApiModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.picture, _this.picture) || other.picture == _this.picture));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as UserApiModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.email,_this.picture);
}

@override
String toString() {
  final _this = this as UserApiModel;
  return 'UserApiModel(id: ${_this.id}, name: ${_this.name}, email: ${_this.email}, picture: ${_this.picture})';
}


}

/// @nodoc
abstract mixin class $UserApiModelCopyWith<$Res>  {
  factory $UserApiModelCopyWith(UserApiModel value, $Res Function(UserApiModel) _then) = _$UserApiModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String email, String picture
});




}
/// @nodoc
class _$UserApiModelCopyWithImpl<$Res>
    implements $UserApiModelCopyWith<$Res> {
  _$UserApiModelCopyWithImpl(this._self, this._then);

  final UserApiModel _self;
  final $Res Function(UserApiModel) _then;

/// Create a copy of UserApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? email = null,Object? picture = null,}) {
  return _then(UserApiModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,picture: null == picture ? _self.picture : picture // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserApiModel].
extension UserApiModelPatterns on UserApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserApiModel value)  $default,){
final _that = this;
switch (_that) {
case _UserApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String email,  String picture)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserApiModel() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.picture);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String email,  String picture)  $default,) {final _that = this;
switch (_that) {
case _UserApiModel():
return $default(_that.id,_that.name,_that.email,_that.picture);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String email,  String picture)?  $default,) {final _that = this;
switch (_that) {
case _UserApiModel() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.picture);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserApiModel implements UserApiModel {
  const _UserApiModel({required this.id, required this.name, required this.email, required this.picture});
  factory _UserApiModel.fromJson(Map<String, dynamic> json) => _$UserApiModelFromJson(json);

/// The user's ID.
@override final  String id;
/// The user's name.
@override final  String name;
/// The user's email.
@override final  String email;
/// The user's picture URL.
@override final  String picture;

/// Create a copy of UserApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserApiModelCopyWith<_UserApiModel> get copyWith => __$UserApiModelCopyWithImpl<_UserApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserApiModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.picture, picture) || other.picture == picture));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,email,picture);
}

@override
String toString() {
    return 'UserApiModel(id: $id, name: $name, email: $email, picture: $picture)';
}


}

/// @nodoc
abstract mixin class _$UserApiModelCopyWith<$Res> implements $UserApiModelCopyWith<$Res> {
  factory _$UserApiModelCopyWith(_UserApiModel value, $Res Function(_UserApiModel) _then) = __$UserApiModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String email, String picture
});




}
/// @nodoc
class __$UserApiModelCopyWithImpl<$Res>
    implements _$UserApiModelCopyWith<$Res> {
  __$UserApiModelCopyWithImpl(this._self, this._then);

  final _UserApiModel _self;
  final $Res Function(_UserApiModel) _then;

/// Create a copy of UserApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? email = null,Object? picture = null,}) {
  return _then(_UserApiModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,picture: null == picture ? _self.picture : picture // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
