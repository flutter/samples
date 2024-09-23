// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'continent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Continent _$ContinentFromJson(Map<String, dynamic> json) {
  return _Continent.fromJson(json);
}

/// @nodoc
mixin _$Continent {
  /// e.g. 'Europe'
  String get name => throw _privateConstructorUsedError;

  /// e.g. 'https://rstr.in/google/tripedia/TmR12QdlVTT'
  String get imageUrl => throw _privateConstructorUsedError;

  /// Serializes this Continent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Continent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContinentCopyWith<Continent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContinentCopyWith<$Res> {
  factory $ContinentCopyWith(Continent value, $Res Function(Continent) then) =
      _$ContinentCopyWithImpl<$Res, Continent>;
  @useResult
  $Res call({String name, String imageUrl});
}

/// @nodoc
class _$ContinentCopyWithImpl<$Res, $Val extends Continent>
    implements $ContinentCopyWith<$Res> {
  _$ContinentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Continent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContinentImplCopyWith<$Res>
    implements $ContinentCopyWith<$Res> {
  factory _$$ContinentImplCopyWith(
          _$ContinentImpl value, $Res Function(_$ContinentImpl) then) =
      __$$ContinentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String imageUrl});
}

/// @nodoc
class __$$ContinentImplCopyWithImpl<$Res>
    extends _$ContinentCopyWithImpl<$Res, _$ContinentImpl>
    implements _$$ContinentImplCopyWith<$Res> {
  __$$ContinentImplCopyWithImpl(
      _$ContinentImpl _value, $Res Function(_$ContinentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Continent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? imageUrl = null,
  }) {
    return _then(_$ContinentImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContinentImpl implements _Continent {
  const _$ContinentImpl({required this.name, required this.imageUrl});

  factory _$ContinentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContinentImplFromJson(json);

  /// e.g. 'Europe'
  @override
  final String name;

  /// e.g. 'https://rstr.in/google/tripedia/TmR12QdlVTT'
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'Continent(name: $name, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContinentImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, imageUrl);

  /// Create a copy of Continent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContinentImplCopyWith<_$ContinentImpl> get copyWith =>
      __$$ContinentImplCopyWithImpl<_$ContinentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContinentImplToJson(
      this,
    );
  }
}

abstract class _Continent implements Continent {
  const factory _Continent(
      {required final String name,
      required final String imageUrl}) = _$ContinentImpl;

  factory _Continent.fromJson(Map<String, dynamic> json) =
      _$ContinentImpl.fromJson;

  /// e.g. 'Europe'
  @override
  String get name;

  /// e.g. 'https://rstr.in/google/tripedia/TmR12QdlVTT'
  @override
  String get imageUrl;

  /// Create a copy of Continent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContinentImplCopyWith<_$ContinentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
