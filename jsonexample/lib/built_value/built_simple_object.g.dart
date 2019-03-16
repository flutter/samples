// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_simple_object.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_catches_without_on_clauses
// ignore_for_file: avoid_returning_this
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first
// ignore_for_file: unnecessary_const
// ignore_for_file: unnecessary_new

Serializer<BuiltSimpleObject> _$builtSimpleObjectSerializer =
    _$BuiltSimpleObjectSerializer();

class _$BuiltSimpleObjectSerializer
    implements StructuredSerializer<BuiltSimpleObject> {
  @override
  final Iterable<Type> types = const [BuiltSimpleObject, _$BuiltSimpleObject];
  @override
  final String wireName = 'BuiltSimpleObject';

  @override
  Iterable serialize(Serializers serializers, BuiltSimpleObject object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.aString != null) {
      result
        ..add('aString')
        ..add(serializers.serialize(object.aString,
            specifiedType: const FullType(String)));
    }
    if (object.anInt != null) {
      result
        ..add('anInt')
        ..add(serializers.serialize(object.anInt,
            specifiedType: const FullType(int)));
    }
    if (object.aDouble != null) {
      result
        ..add('aDouble')
        ..add(serializers.serialize(object.aDouble,
            specifiedType: const FullType(double)));
    }
    if (object.aListOfStrings != null) {
      result
        ..add('aListOfStrings')
        ..add(serializers.serialize(object.aListOfStrings,
            specifiedType: const FullType(BuiltList, [FullType(String)])));
    }
    if (object.aListOfInts != null) {
      result
        ..add('aListOfInts')
        ..add(serializers.serialize(object.aListOfInts,
            specifiedType: const FullType(BuiltList, [FullType(int)])));
    }
    if (object.aListOfDoubles != null) {
      result
        ..add('aListOfDoubles')
        ..add(serializers.serialize(object.aListOfDoubles,
            specifiedType: const FullType(BuiltList, [FullType(double)])));
    }

    return result;
  }

  @override
  BuiltSimpleObject deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = BuiltSimpleObjectBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'aString':
          result.aString = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'anInt':
          result.anInt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'aDouble':
          result.aDouble = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'aListOfStrings':
          result.aListOfStrings.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, [FullType(String)]))
              as BuiltList);
          break;
        case 'aListOfInts':
          result.aListOfInts.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, [FullType(int)]))
              as BuiltList);
          break;
        case 'aListOfDoubles':
          result.aListOfDoubles.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, [FullType(double)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltSimpleObject extends BuiltSimpleObject {
  @override
  final String aString;
  @override
  final int anInt;
  @override
  final double aDouble;
  @override
  final BuiltList<String> aListOfStrings;
  @override
  final BuiltList<int> aListOfInts;
  @override
  final BuiltList<double> aListOfDoubles;

  factory _$BuiltSimpleObject([void updates(BuiltSimpleObjectBuilder b)]) =>
      (BuiltSimpleObjectBuilder()..update(updates)).build();

  _$BuiltSimpleObject._(
      {this.aString,
      this.anInt,
      this.aDouble,
      this.aListOfStrings,
      this.aListOfInts,
      this.aListOfDoubles})
      : super._();

  @override
  BuiltSimpleObject rebuild(void updates(BuiltSimpleObjectBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltSimpleObjectBuilder toBuilder() =>
      BuiltSimpleObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltSimpleObject &&
        aString == other.aString &&
        anInt == other.anInt &&
        aDouble == other.aDouble &&
        aListOfStrings == other.aListOfStrings &&
        aListOfInts == other.aListOfInts &&
        aListOfDoubles == other.aListOfDoubles;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, aString.hashCode), anInt.hashCode),
                    aDouble.hashCode),
                aListOfStrings.hashCode),
            aListOfInts.hashCode),
        aListOfDoubles.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltSimpleObject')
          ..add('aString', aString)
          ..add('anInt', anInt)
          ..add('aDouble', aDouble)
          ..add('aListOfStrings', aListOfStrings)
          ..add('aListOfInts', aListOfInts)
          ..add('aListOfDoubles', aListOfDoubles))
        .toString();
  }
}

class BuiltSimpleObjectBuilder
    implements Builder<BuiltSimpleObject, BuiltSimpleObjectBuilder> {
  _$BuiltSimpleObject _$v;

  String _aString;
  String get aString => _$this._aString;
  set aString(String aString) => _$this._aString = aString;

  int _anInt;
  int get anInt => _$this._anInt;
  set anInt(int anInt) => _$this._anInt = anInt;

  double _aDouble;
  double get aDouble => _$this._aDouble;
  set aDouble(double aDouble) => _$this._aDouble = aDouble;

  ListBuilder<String> _aListOfStrings;
  ListBuilder<String> get aListOfStrings =>
      _$this._aListOfStrings ??= ListBuilder<String>();
  set aListOfStrings(ListBuilder<String> aListOfStrings) =>
      _$this._aListOfStrings = aListOfStrings;

  ListBuilder<int> _aListOfInts;
  ListBuilder<int> get aListOfInts =>
      _$this._aListOfInts ??= ListBuilder<int>();
  set aListOfInts(ListBuilder<int> aListOfInts) =>
      _$this._aListOfInts = aListOfInts;

  ListBuilder<double> _aListOfDoubles;
  ListBuilder<double> get aListOfDoubles =>
      _$this._aListOfDoubles ??= ListBuilder<double>();
  set aListOfDoubles(ListBuilder<double> aListOfDoubles) =>
      _$this._aListOfDoubles = aListOfDoubles;

  BuiltSimpleObjectBuilder();

  BuiltSimpleObjectBuilder get _$this {
    if (_$v != null) {
      _aString = _$v.aString;
      _anInt = _$v.anInt;
      _aDouble = _$v.aDouble;
      _aListOfStrings = _$v.aListOfStrings?.toBuilder();
      _aListOfInts = _$v.aListOfInts?.toBuilder();
      _aListOfDoubles = _$v.aListOfDoubles?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltSimpleObject other) {
    if (other == null) throw ArgumentError.notNull('other');
    _$v = other as _$BuiltSimpleObject;
  }

  @override
  void update(void updates(BuiltSimpleObjectBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltSimpleObject build() {
    _$BuiltSimpleObject _$result;
    try {
      _$result = _$v ??
          _$BuiltSimpleObject._(
              aString: aString,
              anInt: anInt,
              aDouble: aDouble,
              aListOfStrings: _aListOfStrings?.build(),
              aListOfInts: _aListOfInts?.build(),
              aListOfDoubles: _aListOfDoubles?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'aListOfStrings';
        _aListOfStrings?.build();
        _$failedField = 'aListOfInts';
        _aListOfInts?.build();
        _$failedField = 'aListOfDoubles';
        _aListOfDoubles?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            'BuiltSimpleObject', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
