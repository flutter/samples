// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Booking {

/// Optional ID of the booking.
/// May be null if the booking is not yet stored.
 int? get id;/// Start date of the trip
 DateTime get startDate;/// End date of the trip
 DateTime get endDate;/// Destination of the trip
 Destination get destination;/// List of chosen activities
 List<Activity> get activity;
/// Create a copy of Booking
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingCopyWith<Booking> get copyWith => _$BookingCopyWithImpl<Booking>(this as Booking, _$identity);

  /// Serializes this Booking to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Booking;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Booking&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.startDate, _this.startDate) || other.startDate == _this.startDate)&&(identical(other.endDate, _this.endDate) || other.endDate == _this.endDate)&&(identical(other.destination, _this.destination) || other.destination == _this.destination)&&const DeepCollectionEquality().equals(other.activity, _this.activity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Booking;
  return Object.hash(runtimeType,_this.id,_this.startDate,_this.endDate,_this.destination,const DeepCollectionEquality().hash(_this.activity));
}

@override
String toString() {
  final _this = this as Booking;
  return 'Booking(id: ${_this.id}, startDate: ${_this.startDate}, endDate: ${_this.endDate}, destination: ${_this.destination}, activity: ${_this.activity})';
}


}

/// @nodoc
abstract mixin class $BookingCopyWith<$Res>  {
  factory $BookingCopyWith(Booking value, $Res Function(Booking) _then) = _$BookingCopyWithImpl;
@useResult
$Res call({
 int? id, DateTime startDate, DateTime endDate, Destination destination, List<Activity> activity
});


$DestinationCopyWith<$Res> get destination;

}
/// @nodoc
class _$BookingCopyWithImpl<$Res>
    implements $BookingCopyWith<$Res> {
  _$BookingCopyWithImpl(this._self, this._then);

  final Booking _self;
  final $Res Function(Booking) _then;

/// Create a copy of Booking
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? startDate = null,Object? endDate = null,Object? destination = null,Object? activity = null,}) {
  return _then(Booking(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as Destination,activity: null == activity ? _self.activity : activity // ignore: cast_nullable_to_non_nullable
as List<Activity>,
  ));
}
/// Create a copy of Booking
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DestinationCopyWith<$Res> get destination {
  
  return $DestinationCopyWith<$Res>(_self.destination, (value) {
    return _then(_self.copyWith(destination: value));
  });
}
}


/// Adds pattern-matching-related methods to [Booking].
extension BookingPatterns on Booking {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Booking value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Booking() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Booking value)  $default,){
final _that = this;
switch (_that) {
case _Booking():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Booking value)?  $default,){
final _that = this;
switch (_that) {
case _Booking() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  DateTime startDate,  DateTime endDate,  Destination destination,  List<Activity> activity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Booking() when $default != null:
return $default(_that.id,_that.startDate,_that.endDate,_that.destination,_that.activity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  DateTime startDate,  DateTime endDate,  Destination destination,  List<Activity> activity)  $default,) {final _that = this;
switch (_that) {
case _Booking():
return $default(_that.id,_that.startDate,_that.endDate,_that.destination,_that.activity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  DateTime startDate,  DateTime endDate,  Destination destination,  List<Activity> activity)?  $default,) {final _that = this;
switch (_that) {
case _Booking() when $default != null:
return $default(_that.id,_that.startDate,_that.endDate,_that.destination,_that.activity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Booking implements Booking {
  const _Booking({this.id, required this.startDate, required this.endDate, required this.destination, required  List<Activity> activity}): _activity = activity;
  factory _Booking.fromJson(Map<String, dynamic> json) => _$BookingFromJson(json);

/// Optional ID of the booking.
/// May be null if the booking is not yet stored.
@override final  int? id;
/// Start date of the trip
@override final  DateTime startDate;
/// End date of the trip
@override final  DateTime endDate;
/// Destination of the trip
@override final  Destination destination;
/// List of chosen activities
 final  List<Activity> _activity;
/// List of chosen activities
@override List<Activity> get activity {
  if (_activity is EqualUnmodifiableListView) return _activity;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_activity);
}


/// Create a copy of Booking
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingCopyWith<_Booking> get copyWith => __$BookingCopyWithImpl<_Booking>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookingToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Booking&&(identical(other.id, id) || other.id == id)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.destination, destination) || other.destination == destination)&&const DeepCollectionEquality().equals(other.activity, _activity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,startDate,endDate,destination,const DeepCollectionEquality().hash(_activity));
}

@override
String toString() {
    return 'Booking(id: $id, startDate: $startDate, endDate: $endDate, destination: $destination, activity: $activity)';
}


}

/// @nodoc
abstract mixin class _$BookingCopyWith<$Res> implements $BookingCopyWith<$Res> {
  factory _$BookingCopyWith(_Booking value, $Res Function(_Booking) _then) = __$BookingCopyWithImpl;
@override @useResult
$Res call({
 int? id, DateTime startDate, DateTime endDate, Destination destination, List<Activity> activity
});


@override $DestinationCopyWith<$Res> get destination;

}
/// @nodoc
class __$BookingCopyWithImpl<$Res>
    implements _$BookingCopyWith<$Res> {
  __$BookingCopyWithImpl(this._self, this._then);

  final _Booking _self;
  final $Res Function(_Booking) _then;

/// Create a copy of Booking
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? startDate = null,Object? endDate = null,Object? destination = null,Object? activity = null,}) {
  return _then(_Booking(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as Destination,activity: null == activity ? _self._activity : activity // ignore: cast_nullable_to_non_nullable
as List<Activity>,
  ));
}

/// Create a copy of Booking
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DestinationCopyWith<$Res> get destination {
  
  return $DestinationCopyWith<$Res>(_self.destination, (value) {
    return _then(_self.copyWith(destination: value));
  });
}
}

// dart format on
