part of 'puzzle.dart';

mixin _SliceListMixin on ListMixin<int> {
  static const _bitsPerValue = 4;
  static const _maxShift = _valuesPerCell - 1;

  static const _bitsPerCell = 32;
  static const _valuesPerCell = _bitsPerCell ~/ _bitsPerValue;
  static const _valueMask = (1 << _bitsPerValue) - 1;

  Uint32List get _data;

  int _cellValue(int index) => _data[index ~/ _valuesPerCell];

  @override
  int operator [](int index) {
    /*
    final bigValue = _data[index ~/ _valuesPerCell];
    final shiftedValue =
        bigValue >> (_maxShift - (index % _valuesPerCell)) * _bitsPerValue;
    final flattenedValue = shiftedValue & _valueMask;
    return flattenedValue;
    */
    return (_cellValue(index) >>
            (_maxShift - (index % _valuesPerCell)) * _bitsPerValue) &
        _valueMask;
  }

  @override
  int indexOf(Object value, [int start]) {
    for (var i = 0; i < _data.length; i++) {
      final cellValue = _data[i];
      for (var j = 0; j < _valuesPerCell; j++) {
        final option =
            (cellValue >> (_maxShift - j) * _bitsPerValue) & _valueMask;

        if (value == option) {
          final k = i * _valuesPerCell + j;
          if (k < length && (start == null || k >= start)) {
            return k;
          }
        }
      }
    }
    return -1;
  }

  @override
  set length(int value) => throw UnsupportedError('immutable, yo!');
}

class _SliceList with ListMixin<int>, _SliceListMixin {
  @override
  final Uint32List _data;

  @override
  final int length;

  _SliceList(this.length, this._data);

  @override
  void operator []=(int index, int value) {
    var cellValue = _cellValue(index);

    // clear out the target bits in `cellValue`

    final sharedShift =
        (_SliceListMixin._maxShift - (index % _SliceListMixin._valuesPerCell)) *
            _SliceListMixin._bitsPerValue;

    final wipeout = _SliceListMixin._valueMask << sharedShift;

    cellValue &= ~wipeout;

    final newShiftedValue = value << sharedShift;

    cellValue |= newShiftedValue;

    _data[index ~/ _SliceListMixin._valuesPerCell] = cellValue;
  }
}

class _PuzzleSmart extends Puzzle with ListMixin<int>, _SliceListMixin {
  static const _bitsPerValue = 4;
  static const _maxShift = _valuesPerCell - 1;

  static const _bitsPerCell = 32;
  static const _valuesPerCell = _bitsPerCell ~/ _bitsPerValue;
  static const _valueMask = (1 << _bitsPerValue) - 1;

  @override
  final Uint32List _data;

  @override
  final int width;

  @override
  final int length;

  int _fitnessCache;

  @override
  int get fitness => _fitnessCache ??= super.fitness;

  _PuzzleSmart(this.width, List<int> source)
      : length = source.length,
        _data = _create(source),
        super._();

  @override
  void operator []=(int index, int value) =>
      throw UnsupportedError('immutable, yo!');

  @override
  List<int> get _intView => this;

  @override
  List<int> _copyData() => _SliceList(length, Uint32List.fromList(_data));

  @override
  Puzzle _newWithValues(List<int> values) => _PuzzleSmart(width, values);

  @override
  Puzzle clone() => _PuzzleSmart(width, this);

  @override
  String toString() => _toString();

  @override
  bool operator ==(other) {
    if (other is _PuzzleSmart &&
        other.width == width &&
        other._data.length == _data.length) {
      for (var i = 0; i < _data.length; i++) {
        if (other._data[i] != _data[i]) {
          return false;
        }
      }
      return true;
    }
    if (other is Puzzle && other.width == width && other.length == length) {
      for (var i = 0; i < length; i++) {
        if (other[i] != this[i]) {
          return false;
        }
      }
      return true;
    }
    return false;
  }

  @override
  int get hashCode {
    var v = 0;
    for (var i = 0; i < _data.length; i++) {
      v = (v << 2) + _data[i];
    }
    v += v << 3;
    v ^= v >> 11;
    v += v << 15;
    return v;
  }

  static Uint32List _create(List<int> source) {
    if (source is _SliceList) {
      return source._data;
    }

    final data = Uint32List((source.length / _valuesPerCell).ceil());
    for (var i = 0; i < data.length; i++) {
      var value = 0;
      for (var j = 0; j < _valuesPerCell; j++) {
        final k = i * _valuesPerCell + j;
        if (k < source.length) {
          // shift the value over 4 bits for item 0, 3 for item 2, etc
          final sourceValue = source[k] << ((_maxShift - j) * _bitsPerValue);
          value |= sourceValue;
        }
      }
      data[i] = value;
    }
    return data;
  }
}
