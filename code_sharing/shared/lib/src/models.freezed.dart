// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Increment _$IncrementFromJson(Map<String, dynamic> json) {
  return _Increment.fromJson(json);
}

/// @nodoc
mixin _$Increment {
  int get by => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IncrementCopyWith<Increment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncrementCopyWith<$Res> {
  factory $IncrementCopyWith(Increment value, $Res Function(Increment) then) =
      _$IncrementCopyWithImpl<$Res, Increment>;
  @useResult
  $Res call({int by});
}

/// @nodoc
class _$IncrementCopyWithImpl<$Res, $Val extends Increment>
    implements $IncrementCopyWith<$Res> {
  _$IncrementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? by = null,
  }) {
    return _then(_value.copyWith(
      by: null == by
          ? _value.by
          : by // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IncrementImplCopyWith<$Res>
    implements $IncrementCopyWith<$Res> {
  factory _$$IncrementImplCopyWith(
          _$IncrementImpl value, $Res Function(_$IncrementImpl) then) =
      __$$IncrementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int by});
}

/// @nodoc
class __$$IncrementImplCopyWithImpl<$Res>
    extends _$IncrementCopyWithImpl<$Res, _$IncrementImpl>
    implements _$$IncrementImplCopyWith<$Res> {
  __$$IncrementImplCopyWithImpl(
      _$IncrementImpl _value, $Res Function(_$IncrementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? by = null,
  }) {
    return _then(_$IncrementImpl(
      by: null == by
          ? _value.by
          : by // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IncrementImpl implements _Increment {
  const _$IncrementImpl({required this.by});

  factory _$IncrementImpl.fromJson(Map<String, dynamic> json) =>
      _$$IncrementImplFromJson(json);

  @override
  final int by;

  @override
  String toString() {
    return 'Increment(by: $by)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncrementImpl &&
            (identical(other.by, by) || other.by == by));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, by);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IncrementImplCopyWith<_$IncrementImpl> get copyWith =>
      __$$IncrementImplCopyWithImpl<_$IncrementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IncrementImplToJson(
      this,
    );
  }
}

abstract class _Increment implements Increment {
  const factory _Increment({required final int by}) = _$IncrementImpl;

  factory _Increment.fromJson(Map<String, dynamic> json) =
      _$IncrementImpl.fromJson;

  @override
  int get by;
  @override
  @JsonKey(ignore: true)
  _$$IncrementImplCopyWith<_$IncrementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Count _$CountFromJson(Map<String, dynamic> json) {
  return _Count.fromJson(json);
}

/// @nodoc
mixin _$Count {
  int get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountCopyWith<Count> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountCopyWith<$Res> {
  factory $CountCopyWith(Count value, $Res Function(Count) then) =
      _$CountCopyWithImpl<$Res, Count>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class _$CountCopyWithImpl<$Res, $Val extends Count>
    implements $CountCopyWith<$Res> {
  _$CountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountImplCopyWith<$Res> implements $CountCopyWith<$Res> {
  factory _$$CountImplCopyWith(
          _$CountImpl value, $Res Function(_$CountImpl) then) =
      __$$CountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$CountImplCopyWithImpl<$Res>
    extends _$CountCopyWithImpl<$Res, _$CountImpl>
    implements _$$CountImplCopyWith<$Res> {
  __$$CountImplCopyWithImpl(
      _$CountImpl _value, $Res Function(_$CountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$CountImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountImpl implements _Count {
  const _$CountImpl(this.value);

  factory _$CountImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountImplFromJson(json);

  @override
  final int value;

  @override
  String toString() {
    return 'Count(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountImplCopyWith<_$CountImpl> get copyWith =>
      __$$CountImplCopyWithImpl<_$CountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountImplToJson(
      this,
    );
  }
}

abstract class _Count implements Count {
  const factory _Count(final int value) = _$CountImpl;

  factory _Count.fromJson(Map<String, dynamic> json) = _$CountImpl.fromJson;

  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$CountImplCopyWith<_$CountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
