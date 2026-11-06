// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BookingSummary {

/// Booking id
 int get id;/// Name to be displayed
 String get name;/// Start date of the booking
 DateTime get startDate;/// End date of the booking
 DateTime get endDate;
/// Create a copy of BookingSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingSummaryCopyWith<BookingSummary> get copyWith => _$BookingSummaryCopyWithImpl<BookingSummary>(this as BookingSummary, _$identity);

  /// Serializes this BookingSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as BookingSummary;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingSummary&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.startDate, _this.startDate) || other.startDate == _this.startDate)&&(identical(other.endDate, _this.endDate) || other.endDate == _this.endDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as BookingSummary;
  return Object.hash(runtimeType,_this.id,_this.name,_this.startDate,_this.endDate);
}

@override
String toString() {
  final _this = this as BookingSummary;
  return 'BookingSummary(id: ${_this.id}, name: ${_this.name}, startDate: ${_this.startDate}, endDate: ${_this.endDate})';
}


}

/// @nodoc
abstract mixin class $BookingSummaryCopyWith<$Res>  {
  factory $BookingSummaryCopyWith(BookingSummary value, $Res Function(BookingSummary) _then) = _$BookingSummaryCopyWithImpl;
@useResult
$Res call({
 int id, String name, DateTime startDate, DateTime endDate
});




}
/// @nodoc
class _$BookingSummaryCopyWithImpl<$Res>
    implements $BookingSummaryCopyWith<$Res> {
  _$BookingSummaryCopyWithImpl(this._self, this._then);

  final BookingSummary _self;
  final $Res Function(BookingSummary) _then;

/// Create a copy of BookingSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? startDate = null,Object? endDate = null,}) {
  return _then(BookingSummary(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [BookingSummary].
extension BookingSummaryPatterns on BookingSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingSummary value)  $default,){
final _that = this;
switch (_that) {
case _BookingSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingSummary value)?  $default,){
final _that = this;
switch (_that) {
case _BookingSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  DateTime startDate,  DateTime endDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingSummary() when $default != null:
return $default(_that.id,_that.name,_that.startDate,_that.endDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  DateTime startDate,  DateTime endDate)  $default,) {final _that = this;
switch (_that) {
case _BookingSummary():
return $default(_that.id,_that.name,_that.startDate,_that.endDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  DateTime startDate,  DateTime endDate)?  $default,) {final _that = this;
switch (_that) {
case _BookingSummary() when $default != null:
return $default(_that.id,_that.name,_that.startDate,_that.endDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookingSummary implements BookingSummary {
  const _BookingSummary({required this.id, required this.name, required this.startDate, required this.endDate});
  factory _BookingSummary.fromJson(Map<String, dynamic> json) => _$BookingSummaryFromJson(json);

/// Booking id
@override final  int id;
/// Name to be displayed
@override final  String name;
/// Start date of the booking
@override final  DateTime startDate;
/// End date of the booking
@override final  DateTime endDate;

/// Create a copy of BookingSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingSummaryCopyWith<_BookingSummary> get copyWith => __$BookingSummaryCopyWithImpl<_BookingSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookingSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,startDate,endDate);
}

@override
String toString() {
    return 'BookingSummary(id: $id, name: $name, startDate: $startDate, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class _$BookingSummaryCopyWith<$Res> implements $BookingSummaryCopyWith<$Res> {
  factory _$BookingSummaryCopyWith(_BookingSummary value, $Res Function(_BookingSummary) _then) = __$BookingSummaryCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, DateTime startDate, DateTime endDate
});




}
/// @nodoc
class __$BookingSummaryCopyWithImpl<$Res>
    implements _$BookingSummaryCopyWith<$Res> {
  __$BookingSummaryCopyWithImpl(this._self, this._then);

  final _BookingSummary _self;
  final $Res Function(_BookingSummary) _then;

/// Create a copy of BookingSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? startDate = null,Object? endDate = null,}) {
  return _then(_BookingSummary(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
