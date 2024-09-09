// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Booking _$BookingFromJson(Map<String, dynamic> json) {
  return _Booking.fromJson(json);
}

/// @nodoc
mixin _$Booking {
  /// Booking ID. Generated when stored in server.
  int? get id => throw _privateConstructorUsedError;

  /// Start date of the trip
  DateTime get startDate => throw _privateConstructorUsedError;

  /// End date of the trip
  DateTime get endDate => throw _privateConstructorUsedError;

  /// Booking name
  /// Should be "Destination, Continent"
  String get name => throw _privateConstructorUsedError;

  /// Destination of the trip
  String get destinationRef => throw _privateConstructorUsedError;

  /// List of chosen activities
  List<String> get activitiesRef => throw _privateConstructorUsedError;

  /// Serializes this Booking to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingCopyWith<Booking> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingCopyWith<$Res> {
  factory $BookingCopyWith(Booking value, $Res Function(Booking) then) =
      _$BookingCopyWithImpl<$Res, Booking>;
  @useResult
  $Res call(
      {int? id,
      DateTime startDate,
      DateTime endDate,
      String name,
      String destinationRef,
      List<String> activitiesRef});
}

/// @nodoc
class _$BookingCopyWithImpl<$Res, $Val extends Booking>
    implements $BookingCopyWith<$Res> {
  _$BookingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = null,
    Object? endDate = null,
    Object? name = null,
    Object? destinationRef = null,
    Object? activitiesRef = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      destinationRef: null == destinationRef
          ? _value.destinationRef
          : destinationRef // ignore: cast_nullable_to_non_nullable
              as String,
      activitiesRef: null == activitiesRef
          ? _value.activitiesRef
          : activitiesRef // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingImplCopyWith<$Res> implements $BookingCopyWith<$Res> {
  factory _$$BookingImplCopyWith(
          _$BookingImpl value, $Res Function(_$BookingImpl) then) =
      __$$BookingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      DateTime startDate,
      DateTime endDate,
      String name,
      String destinationRef,
      List<String> activitiesRef});
}

/// @nodoc
class __$$BookingImplCopyWithImpl<$Res>
    extends _$BookingCopyWithImpl<$Res, _$BookingImpl>
    implements _$$BookingImplCopyWith<$Res> {
  __$$BookingImplCopyWithImpl(
      _$BookingImpl _value, $Res Function(_$BookingImpl) _then)
      : super(_value, _then);

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? startDate = null,
    Object? endDate = null,
    Object? name = null,
    Object? destinationRef = null,
    Object? activitiesRef = null,
  }) {
    return _then(_$BookingImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      destinationRef: null == destinationRef
          ? _value.destinationRef
          : destinationRef // ignore: cast_nullable_to_non_nullable
              as String,
      activitiesRef: null == activitiesRef
          ? _value._activitiesRef
          : activitiesRef // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingImpl implements _Booking {
  const _$BookingImpl(
      {this.id,
      required this.startDate,
      required this.endDate,
      required this.name,
      required this.destinationRef,
      required final List<String> activitiesRef})
      : _activitiesRef = activitiesRef;

  factory _$BookingImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingImplFromJson(json);

  /// Booking ID. Generated when stored in server.
  @override
  final int? id;

  /// Start date of the trip
  @override
  final DateTime startDate;

  /// End date of the trip
  @override
  final DateTime endDate;

  /// Booking name
  /// Should be "Destination, Continent"
  @override
  final String name;

  /// Destination of the trip
  @override
  final String destinationRef;

  /// List of chosen activities
  final List<String> _activitiesRef;

  /// List of chosen activities
  @override
  List<String> get activitiesRef {
    if (_activitiesRef is EqualUnmodifiableListView) return _activitiesRef;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activitiesRef);
  }

  @override
  String toString() {
    return 'Booking(id: $id, startDate: $startDate, endDate: $endDate, name: $name, destinationRef: $destinationRef, activitiesRef: $activitiesRef)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.destinationRef, destinationRef) ||
                other.destinationRef == destinationRef) &&
            const DeepCollectionEquality()
                .equals(other._activitiesRef, _activitiesRef));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, startDate, endDate, name,
      destinationRef, const DeepCollectionEquality().hash(_activitiesRef));

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingImplCopyWith<_$BookingImpl> get copyWith =>
      __$$BookingImplCopyWithImpl<_$BookingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingImplToJson(
      this,
    );
  }
}

abstract class _Booking implements Booking {
  const factory _Booking(
      {final int? id,
      required final DateTime startDate,
      required final DateTime endDate,
      required final String name,
      required final String destinationRef,
      required final List<String> activitiesRef}) = _$BookingImpl;

  factory _Booking.fromJson(Map<String, dynamic> json) = _$BookingImpl.fromJson;

  /// Booking ID. Generated when stored in server.
  @override
  int? get id;

  /// Start date of the trip
  @override
  DateTime get startDate;

  /// End date of the trip
  @override
  DateTime get endDate;

  /// Booking name
  /// Should be "Destination, Continent"
  @override
  String get name;

  /// Destination of the trip
  @override
  String get destinationRef;

  /// List of chosen activities
  @override
  List<String> get activitiesRef;

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingImplCopyWith<_$BookingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
