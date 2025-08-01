// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Search> _$searchSerializer = new _$SearchSerializer();

class _$SearchSerializer implements StructuredSerializer<Search> {
  @override
  final Iterable<Type> types = const [Search, _$Search];
  @override
  final String wireName = 'Search';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Search object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'query',
      serializers.serialize(
        object.query,
        specifiedType: const FullType(String),
      ),
      'results',
      serializers.serialize(
        object.results,
        specifiedType: const FullType(BuiltList, const [
          const FullType(Photo),
        ]),
      ),
    ];

    return result;
  }

  @override
  Search deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = new SearchBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'query':
          result.query =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'results':
          result.results.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(BuiltList, const [
                    const FullType(Photo),
                  ]),
                )!
                as BuiltList<Object?>,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$Search extends Search {
  @override
  final String query;
  @override
  final BuiltList<Photo> results;

  factory _$Search([void Function(SearchBuilder)? updates]) =>
      (new SearchBuilder()..update(updates))._build();

  _$Search._({required this.query, required this.results}) : super._() {
    BuiltValueNullFieldError.checkNotNull(query, r'Search', 'query');
    BuiltValueNullFieldError.checkNotNull(results, r'Search', 'results');
  }

  @override
  Search rebuild(void Function(SearchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchBuilder toBuilder() => new SearchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Search && query == other.query && results == other.results;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, query.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Search')
          ..add('query', query)
          ..add('results', results))
        .toString();
  }
}

class SearchBuilder implements Builder<Search, SearchBuilder> {
  _$Search? _$v;

  String? _query;
  String? get query => _$this._query;
  set query(String? query) => _$this._query = query;

  ListBuilder<Photo>? _results;
  ListBuilder<Photo> get results =>
      _$this._results ??= new ListBuilder<Photo>();
  set results(ListBuilder<Photo>? results) => _$this._results = results;

  SearchBuilder();

  SearchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _query = $v.query;
      _results = $v.results.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Search other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Search;
  }

  @override
  void update(void Function(SearchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Search build() => _build();

  _$Search _build() {
    _$Search _$result;
    try {
      _$result =
          _$v ??
          new _$Search._(
            query: BuiltValueNullFieldError.checkNotNull(
              query,
              r'Search',
              'query',
            ),
            results: results.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
          r'Search',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
