// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_photos_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SearchPhotosResponse> _$searchPhotosResponseSerializer =
    new _$SearchPhotosResponseSerializer();

class _$SearchPhotosResponseSerializer
    implements StructuredSerializer<SearchPhotosResponse> {
  @override
  final Iterable<Type> types = const [
    SearchPhotosResponse,
    _$SearchPhotosResponse
  ];
  @override
  final String wireName = 'SearchPhotosResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, SearchPhotosResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'results',
      serializers.serialize(object.results,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Photo)])),
    ];
    if (object.total != null) {
      result
        ..add('total')
        ..add(serializers.serialize(object.total,
            specifiedType: const FullType(int)));
    }
    if (object.totalPages != null) {
      result
        ..add('total_pages')
        ..add(serializers.serialize(object.totalPages,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  SearchPhotosResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchPhotosResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_pages':
          result.totalPages = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Photo)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$SearchPhotosResponse extends SearchPhotosResponse {
  @override
  final int total;
  @override
  final int totalPages;
  @override
  final BuiltList<Photo> results;

  factory _$SearchPhotosResponse(
          [void Function(SearchPhotosResponseBuilder) updates]) =>
      (new SearchPhotosResponseBuilder()..update(updates)).build();

  _$SearchPhotosResponse._({this.total, this.totalPages, this.results})
      : super._() {
    if (results == null) {
      throw new BuiltValueNullFieldError('SearchPhotosResponse', 'results');
    }
  }

  @override
  SearchPhotosResponse rebuild(
          void Function(SearchPhotosResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchPhotosResponseBuilder toBuilder() =>
      new SearchPhotosResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchPhotosResponse &&
        total == other.total &&
        totalPages == other.totalPages &&
        results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, total.hashCode), totalPages.hashCode), results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchPhotosResponse')
          ..add('total', total)
          ..add('totalPages', totalPages)
          ..add('results', results))
        .toString();
  }
}

class SearchPhotosResponseBuilder
    implements Builder<SearchPhotosResponse, SearchPhotosResponseBuilder> {
  _$SearchPhotosResponse _$v;

  int _total;
  int get total => _$this._total;
  set total(int total) => _$this._total = total;

  int _totalPages;
  int get totalPages => _$this._totalPages;
  set totalPages(int totalPages) => _$this._totalPages = totalPages;

  ListBuilder<Photo> _results;
  ListBuilder<Photo> get results =>
      _$this._results ??= new ListBuilder<Photo>();
  set results(ListBuilder<Photo> results) => _$this._results = results;

  SearchPhotosResponseBuilder();

  SearchPhotosResponseBuilder get _$this {
    if (_$v != null) {
      _total = _$v.total;
      _totalPages = _$v.totalPages;
      _results = _$v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchPhotosResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SearchPhotosResponse;
  }

  @override
  void update(void Function(SearchPhotosResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchPhotosResponse build() {
    _$SearchPhotosResponse _$result;
    try {
      _$result = _$v ??
          new _$SearchPhotosResponse._(
              total: total, totalPages: totalPages, results: results.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SearchPhotosResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
