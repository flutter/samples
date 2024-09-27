// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookingSummary _$BookingSummaryFromJson(Map<String, dynamic> json) {
  return _BookingSummary.fromJson(json);
}

/// @nodoc
mixin _$BookingSummary {
  /// Booking id
  int get id => throw _privateConstructorUsedError;

  /// Name to be displayed
  String get name => throw _privateConstructorUsedError;

  /// Start date of the booking
  DateTime get startDate => throw _privateConstructorUsedError;

  /// End date of the booking
  DateTime get endDate => throw _privateConstructorUsedError;

  /// Serializes this BookingSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookingSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingSummaryCopyWith<BookingSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingSummaryCopyWith<$Res> {
  factory $BookingSummaryCopyWith(
          BookingSummary value, $Res Function(BookingSummary) then) =
      _$BookingSummaryCopyWithImpl<$Res, BookingSummary>;
  @useResult
  $Res call({int id, String name, DateTime startDate, DateTime endDate});
}

/// @nodoc
class _$BookingSummaryCopyWithImpl<$Res, $Val extends BookingSummary>
    implements $BookingSummaryCopyWith<$Res> {
  _$BookingSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingSummaryImplCopyWith<$Res>
    implements $BookingSummaryCopyWith<$Res> {
  factory _$$BookingSummaryImplCopyWith(_$BookingSummaryImpl value,
          $Res Function(_$BookingSummaryImpl) then) =
      __$$BookingSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, DateTime startDate, DateTime endDate});
}

/// @nodoc
class __$$BookingSummaryImplCopyWithImpl<$Res>
    extends _$BookingSummaryCopyWithImpl<$Res, _$BookingSummaryImpl>
    implements _$$BookingSummaryImplCopyWith<$Res> {
  __$$BookingSummaryImplCopyWithImpl(
      _$BookingSummaryImpl _value, $Res Function(_$BookingSummaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_$BookingSummaryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingSummaryImpl implements _BookingSummary {
  const _$BookingSummaryImpl(
      {required this.id,
      required this.name,
      required this.startDate,
      required this.endDate});

  factory _$BookingSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingSummaryImplFromJson(json);

  /// Booking id
  @override
  final int id;

  /// Name to be displayed
  @override
  final String name;

  /// Start date of the booking
  @override
  final DateTime startDate;

  /// End date of the booking
  @override
  final DateTime endDate;

  @override
  String toString() {
    return 'BookingSummary(id: $id, name: $name, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingSummaryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, startDate, endDate);

  /// Create a copy of BookingSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingSummaryImplCopyWith<_$BookingSummaryImpl> get copyWith =>
      __$$BookingSummaryImplCopyWithImpl<_$BookingSummaryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingSummaryImplToJson(
      this,
    );
  }
}

abstract class _BookingSummary implements BookingSummary {
  const factory _BookingSummary(
      {required final int id,
      required final String name,
      required final DateTime startDate,
      required final DateTime endDate}) = _$BookingSummaryImpl;

  factory _BookingSummary.fromJson(Map<String, dynamic> json) =
      _$BookingSummaryImpl.fromJson;

  /// Booking id
  @override
  int get id;

  /// Name to be displayed
  @override
  String get name;

  /// Start date of the booking
  @override
  DateTime get startDate;

  /// End date of the booking
  @override
  DateTime get endDate;

  /// Create a copy of BookingSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingSummaryImplCopyWith<_$BookingSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
