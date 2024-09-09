// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'itinerary_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ItineraryConfig _$ItineraryConfigFromJson(Map<String, dynamic> json) {
  return _ItineraryConfig.fromJson(json);
}

/// @nodoc
mixin _$ItineraryConfig {
  /// [Continent] name
  String? get continent => throw _privateConstructorUsedError;

  /// Start date (check in) of itinerary
  DateTime? get startDate => throw _privateConstructorUsedError;

  /// End date (check out) of itinerary
  DateTime? get endDate => throw _privateConstructorUsedError;

  /// Number of guests
  int? get guests => throw _privateConstructorUsedError;

  /// Selected [Destination] reference
  String? get destination => throw _privateConstructorUsedError;

  /// Selected [Activity] references
  List<String> get activities => throw _privateConstructorUsedError;

  /// Serializes this ItineraryConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ItineraryConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItineraryConfigCopyWith<ItineraryConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItineraryConfigCopyWith<$Res> {
  factory $ItineraryConfigCopyWith(
          ItineraryConfig value, $Res Function(ItineraryConfig) then) =
      _$ItineraryConfigCopyWithImpl<$Res, ItineraryConfig>;
  @useResult
  $Res call(
      {String? continent,
      DateTime? startDate,
      DateTime? endDate,
      int? guests,
      String? destination,
      List<String> activities});
}

/// @nodoc
class _$ItineraryConfigCopyWithImpl<$Res, $Val extends ItineraryConfig>
    implements $ItineraryConfigCopyWith<$Res> {
  _$ItineraryConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItineraryConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? continent = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? guests = freezed,
    Object? destination = freezed,
    Object? activities = null,
  }) {
    return _then(_value.copyWith(
      continent: freezed == continent
          ? _value.continent
          : continent // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      guests: freezed == guests
          ? _value.guests
          : guests // ignore: cast_nullable_to_non_nullable
              as int?,
      destination: freezed == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String?,
      activities: null == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItineraryConfigImplCopyWith<$Res>
    implements $ItineraryConfigCopyWith<$Res> {
  factory _$$ItineraryConfigImplCopyWith(_$ItineraryConfigImpl value,
          $Res Function(_$ItineraryConfigImpl) then) =
      __$$ItineraryConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? continent,
      DateTime? startDate,
      DateTime? endDate,
      int? guests,
      String? destination,
      List<String> activities});
}

/// @nodoc
class __$$ItineraryConfigImplCopyWithImpl<$Res>
    extends _$ItineraryConfigCopyWithImpl<$Res, _$ItineraryConfigImpl>
    implements _$$ItineraryConfigImplCopyWith<$Res> {
  __$$ItineraryConfigImplCopyWithImpl(
      _$ItineraryConfigImpl _value, $Res Function(_$ItineraryConfigImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItineraryConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? continent = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? guests = freezed,
    Object? destination = freezed,
    Object? activities = null,
  }) {
    return _then(_$ItineraryConfigImpl(
      continent: freezed == continent
          ? _value.continent
          : continent // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      guests: freezed == guests
          ? _value.guests
          : guests // ignore: cast_nullable_to_non_nullable
              as int?,
      destination: freezed == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String?,
      activities: null == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItineraryConfigImpl implements _ItineraryConfig {
  const _$ItineraryConfigImpl(
      {this.continent,
      this.startDate,
      this.endDate,
      this.guests,
      this.destination,
      final List<String> activities = const []})
      : _activities = activities;

  factory _$ItineraryConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItineraryConfigImplFromJson(json);

  /// [Continent] name
  @override
  final String? continent;

  /// Start date (check in) of itinerary
  @override
  final DateTime? startDate;

  /// End date (check out) of itinerary
  @override
  final DateTime? endDate;

  /// Number of guests
  @override
  final int? guests;

  /// Selected [Destination] reference
  @override
  final String? destination;

  /// Selected [Activity] references
  final List<String> _activities;

  /// Selected [Activity] references
  @override
  @JsonKey()
  List<String> get activities {
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activities);
  }

  @override
  String toString() {
    return 'ItineraryConfig(continent: $continent, startDate: $startDate, endDate: $endDate, guests: $guests, destination: $destination, activities: $activities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItineraryConfigImpl &&
            (identical(other.continent, continent) ||
                other.continent == continent) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.guests, guests) || other.guests == guests) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, continent, startDate, endDate,
      guests, destination, const DeepCollectionEquality().hash(_activities));

  /// Create a copy of ItineraryConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItineraryConfigImplCopyWith<_$ItineraryConfigImpl> get copyWith =>
      __$$ItineraryConfigImplCopyWithImpl<_$ItineraryConfigImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItineraryConfigImplToJson(
      this,
    );
  }
}

abstract class _ItineraryConfig implements ItineraryConfig {
  const factory _ItineraryConfig(
      {final String? continent,
      final DateTime? startDate,
      final DateTime? endDate,
      final int? guests,
      final String? destination,
      final List<String> activities}) = _$ItineraryConfigImpl;

  factory _ItineraryConfig.fromJson(Map<String, dynamic> json) =
      _$ItineraryConfigImpl.fromJson;

  /// [Continent] name
  @override
  String? get continent;

  /// Start date (check in) of itinerary
  @override
  DateTime? get startDate;

  /// End date (check out) of itinerary
  @override
  DateTime? get endDate;

  /// Number of guests
  @override
  int? get guests;

  /// Selected [Destination] reference
  @override
  String? get destination;

  /// Selected [Activity] references
  @override
  List<String> get activities;

  /// Create a copy of ItineraryConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItineraryConfigImplCopyWith<_$ItineraryConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
