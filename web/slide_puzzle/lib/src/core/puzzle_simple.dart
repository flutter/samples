part of 'puzzle.dart';

class _PuzzleSimple extends Puzzle {
  @override
  final int width;
  final Uint8List _source;

  _PuzzleSimple(this.width, List<int> source)
      : _source = UnmodifiableUint8ListView(Uint8List.fromList(source)),
        super._();

  @override
  int indexOf(int value) => _source.indexOf(value);

  @override
  List<int> get _intView => _source;

  @override
  List<int> _copyData() => Uint8List.fromList(_source);

  @override
  Puzzle _newWithValues(List<int> values) => _PuzzleSimple(width, values);

  @override
  int operator [](int index) => _source[index];

  @override
  Puzzle clone() => _PuzzleSimple(width, _source);

  @override
  int get length => _source.length;

  @override
  bool operator ==(other) {
    if (other is Puzzle &&
        other.width == width &&
        other.length == _source.length) {
      for (var i = 0; i < _source.length; i++) {
        if (other[i] != _source[i]) {
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
    for (var i = 0; i < _source.length; i++) {
      v = (v << 2) + _source[i];
    }
    v += v << 3;
    v ^= v >> 11;
    v += v << 15;
    return v;
  }
}
