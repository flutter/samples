// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BookingApiModel {

/// Booking ID. Generated when stored in server.
 int? get id;/// Start date of the trip
 DateTime get startDate;/// End date of the trip
 DateTime get endDate;/// Booking name
/// Should be "Destination, Continent"
 String get name;/// Destination of the trip
 String get destinationRef;/// List of chosen activities
 List<String> get activitiesRef;
/// Create a copy of BookingApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingApiModelCopyWith<BookingApiModel> get copyWith => _$BookingApiModelCopyWithImpl<BookingApiModel>(this as BookingApiModel, _$identity);

  /// Serializes this BookingApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as BookingApiModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingApiModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.startDate, _this.startDate) || other.startDate == _this.startDate)&&(identical(other.endDate, _this.endDate) || other.endDate == _this.endDate)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.destinationRef, _this.destinationRef) || other.destinationRef == _this.destinationRef)&&const DeepCollectionEquality().equals(other.activitiesRef, _this.activitiesRef));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as BookingApiModel;
  return Object.hash(runtimeType,_this.id,_this.startDate,_this.endDate,_this.name,_this.destinationRef,const DeepCollectionEquality().hash(_this.activitiesRef));
}

@override
String toString() {
  final _this = this as BookingApiModel;
  return 'BookingApiModel(id: ${_this.id}, startDate: ${_this.startDate}, endDate: ${_this.endDate}, name: ${_this.name}, destinationRef: ${_this.destinationRef}, activitiesRef: ${_this.activitiesRef})';
}


}

/// @nodoc
abstract mixin class $BookingApiModelCopyWith<$Res>  {
  factory $BookingApiModelCopyWith(BookingApiModel value, $Res Function(BookingApiModel) _then) = _$BookingApiModelCopyWithImpl;
@useResult
$Res call({
 int? id, DateTime startDate, DateTime endDate, String name, String destinationRef, List<String> activitiesRef
});




}
/// @nodoc
class _$BookingApiModelCopyWithImpl<$Res>
    implements $BookingApiModelCopyWith<$Res> {
  _$BookingApiModelCopyWithImpl(this._self, this._then);

  final BookingApiModel _self;
  final $Res Function(BookingApiModel) _then;

/// Create a copy of BookingApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? startDate = null,Object? endDate = null,Object? name = null,Object? destinationRef = null,Object? activitiesRef = null,}) {
  return _then(BookingApiModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,destinationRef: null == destinationRef ? _self.destinationRef : destinationRef // ignore: cast_nullable_to_non_nullable
as String,activitiesRef: null == activitiesRef ? _self.activitiesRef : activitiesRef // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [BookingApiModel].
extension BookingApiModelPatterns on BookingApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingApiModel value)  $default,){
final _that = this;
switch (_that) {
case _BookingApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _BookingApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  DateTime startDate,  DateTime endDate,  String name,  String destinationRef,  List<String> activitiesRef)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingApiModel() when $default != null:
return $default(_that.id,_that.startDate,_that.endDate,_that.name,_that.destinationRef,_that.activitiesRef);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  DateTime startDate,  DateTime endDate,  String name,  String destinationRef,  List<String> activitiesRef)  $default,) {final _that = this;
switch (_that) {
case _BookingApiModel():
return $default(_that.id,_that.startDate,_that.endDate,_that.name,_that.destinationRef,_that.activitiesRef);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  DateTime startDate,  DateTime endDate,  String name,  String destinationRef,  List<String> activitiesRef)?  $default,) {final _that = this;
switch (_that) {
case _BookingApiModel() when $default != null:
return $default(_that.id,_that.startDate,_that.endDate,_that.name,_that.destinationRef,_that.activitiesRef);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookingApiModel implements BookingApiModel {
  const _BookingApiModel({this.id, required this.startDate, required this.endDate, required this.name, required this.destinationRef, required  List<String> activitiesRef}): _activitiesRef = activitiesRef;
  factory _BookingApiModel.fromJson(Map<String, dynamic> json) => _$BookingApiModelFromJson(json);

/// Booking ID. Generated when stored in server.
@override final  int? id;
/// Start date of the trip
@override final  DateTime startDate;
/// End date of the trip
@override final  DateTime endDate;
/// Booking name
/// Should be "Destination, Continent"
@override final  String name;
/// Destination of the trip
@override final  String destinationRef;
/// List of chosen activities
 final  List<String> _activitiesRef;
/// List of chosen activities
@override List<String> get activitiesRef {
  if (_activitiesRef is EqualUnmodifiableListView) return _activitiesRef;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_activitiesRef);
}


/// Create a copy of BookingApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingApiModelCopyWith<_BookingApiModel> get copyWith => __$BookingApiModelCopyWithImpl<_BookingApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookingApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingApiModel&&(identical(other.id, id) || other.id == id)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.name, name) || other.name == name)&&(identical(other.destinationRef, destinationRef) || other.destinationRef == destinationRef)&&const DeepCollectionEquality().equals(other.activitiesRef, _activitiesRef));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,startDate,endDate,name,destinationRef,const DeepCollectionEquality().hash(_activitiesRef));
}

@override
String toString() {
    return 'BookingApiModel(id: $id, startDate: $startDate, endDate: $endDate, name: $name, destinationRef: $destinationRef, activitiesRef: $activitiesRef)';
}


}

/// @nodoc
abstract mixin class _$BookingApiModelCopyWith<$Res> implements $BookingApiModelCopyWith<$Res> {
  factory _$BookingApiModelCopyWith(_BookingApiModel value, $Res Function(_BookingApiModel) _then) = __$BookingApiModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, DateTime startDate, DateTime endDate, String name, String destinationRef, List<String> activitiesRef
});




}
/// @nodoc
class __$BookingApiModelCopyWithImpl<$Res>
    implements _$BookingApiModelCopyWith<$Res> {
  __$BookingApiModelCopyWithImpl(this._self, this._then);

  final _BookingApiModel _self;
  final $Res Function(_BookingApiModel) _then;

/// Create a copy of BookingApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? startDate = null,Object? endDate = null,Object? name = null,Object? destinationRef = null,Object? activitiesRef = null,}) {
  return _then(_BookingApiModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,destinationRef: null == destinationRef ? _self.destinationRef : destinationRef // ignore: cast_nullable_to_non_nullable
as String,activitiesRef: null == activitiesRef ? _self._activitiesRef : activitiesRef // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
