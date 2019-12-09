// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ApiError> _$apiErrorSerializer = new _$ApiErrorSerializer();

class _$ApiErrorSerializer implements StructuredSerializer<ApiError> {
  @override
  final Iterable<Type> types = const [ApiError, _$ApiError];
  @override
  final String wireName = 'ApiError';

  @override
  Iterable<Object> serialize(Serializers serializers, ApiError object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'errors',
      serializers.serialize(object.errors,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  ApiError deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ApiErrorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'errors':
          result.errors.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$ApiError extends ApiError {
  @override
  final BuiltList<String> errors;

  factory _$ApiError([void Function(ApiErrorBuilder) updates]) =>
      (new ApiErrorBuilder()..update(updates)).build();

  _$ApiError._({this.errors}) : super._() {
    if (errors == null) {
      throw new BuiltValueNullFieldError('ApiError', 'errors');
    }
  }

  @override
  ApiError rebuild(void Function(ApiErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiErrorBuilder toBuilder() => new ApiErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiError && errors == other.errors;
  }

  @override
  int get hashCode {
    return $jf($jc(0, errors.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ApiError')..add('errors', errors))
        .toString();
  }
}

class ApiErrorBuilder implements Builder<ApiError, ApiErrorBuilder> {
  _$ApiError _$v;

  ListBuilder<String> _errors;
  ListBuilder<String> get errors =>
      _$this._errors ??= new ListBuilder<String>();
  set errors(ListBuilder<String> errors) => _$this._errors = errors;

  ApiErrorBuilder();

  ApiErrorBuilder get _$this {
    if (_$v != null) {
      _errors = _$v.errors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ApiError;
  }

  @override
  void update(void Function(ApiErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ApiError build() {
    _$ApiError _$result;
    try {
      _$result = _$v ?? new _$ApiError._(errors: errors.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'errors';
        errors.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ApiError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
