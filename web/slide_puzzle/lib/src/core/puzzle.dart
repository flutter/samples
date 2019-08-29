import 'dart:collection';
import 'dart:convert';
import 'dart:math' show Random, max;
import 'dart:typed_data';

import 'point_int.dart';
import 'util.dart';

part 'puzzle_simple.dart';

part 'puzzle_smart.dart';

final _rnd = Random();

final _spacesRegexp = RegExp(' +');

abstract class Puzzle {
  int get width;

  int get length;

  int operator [](int index);

  int indexOf(int value);

  List<int> get _intView;

  List<int> _copyData();

  Puzzle _newWithValues(List<int> values);

  Puzzle clone();

  int get height => length ~/ width;

  Puzzle._();

  factory Puzzle._raw(int width, List<int> source) {
    if (source.length <= 16) {
      return _PuzzleSmart(width, source);
    }
    return _PuzzleSimple(width, source);
  }

  factory Puzzle.raw(int width, List<int> source) {
    requireArgument(width >= 3, 'width', 'Must be at least 3.');
    requireArgument(source.length >= 6, 'source', 'Must be at least 6 items');
    _validate(source);

    return Puzzle._raw(width, source);
  }

  factory Puzzle(int width, int height) =>
      Puzzle.raw(width, _randomList(width, height));

  factory Puzzle.parse(String input) {
    final rows = LineSplitter.split(input).map((line) {
      final splits = line.trim().split(_spacesRegexp);
      return splits.map(int.parse).toList();
    }).toList();

    return Puzzle.raw(rows.first.length, rows.expand((row) => row).toList());
  }

  int valueAt(int x, int y) {
    final i = _getIndex(x, y);
    return this[i];
  }

  int get tileCount => length - 1;

  bool isCorrectPosition(int cellValue) => cellValue == this[cellValue];

  bool get solvable => isSolvable(width, _intView);

  Puzzle reset({List<int> source}) {
    final data = (source == null)
        ? _randomizeList(width, _intView)
        : Uint8List.fromList(source);

    if (data.length != length) {
      throw ArgumentError.value(source, 'source', 'Cannot change the size!');
    }
    _validate(data);
    if (!isSolvable(width, data)) {
      throw ArgumentError.value(source, 'source', 'Not a solvable puzzle.');
    }

    return _newWithValues(data);
  }

  int get incorrectTiles {
    var count = tileCount;
    for (var i = 0; i < tileCount; i++) {
      if (isCorrectPosition(i)) {
        count--;
      }
    }
    return count;
  }

  Point openPosition() => coordinatesOf(tileCount);

  /// A measure of how close the puzzle is to being solved.
  ///
  /// The sum of all of the distances squared `(x + y)^2 ` each tile has to move
  /// to be in the correct position.
  ///
  /// `0` - you've won!
  int get fitness {
    var value = 0;
    for (var i = 0; i < tileCount; i++) {
      if (!isCorrectPosition(i)) {
        final correctColumn = i % width;
        final correctRow = i ~/ width;

        final index = indexOf(i);
        final x = index % width;
        final y = index ~/ width;

        final delta = (correctColumn - x).abs() + (correctRow - y).abs();

        value += delta * delta;
      }
    }
    value *= incorrectTiles;
    return value;
  }

  Puzzle clickRandom({bool vertical}) {
    final clickable = clickableValues(vertical: vertical).toList();
    return clickValue(clickable[_rnd.nextInt(clickable.length)]);
  }

  Iterable<Puzzle> allMovable() =>
      (clickableValues()..shuffle(_rnd)).map(_clickValue);

  List<int> clickableValues({bool vertical}) {
    final open = openPosition();
    final doRow = (vertical == null || vertical == false);
    final doColumn = (vertical == null || vertical);

    final values =
        Uint8List((doRow ? (width - 1) : 0) + (doColumn ? (height - 1) : 0));

    var index = 0;

    if (doRow) {
      for (var x = 0; x < width; x++) {
        if (x != open.x) {
          values[index++] = valueAt(x, open.y);
        }
      }
    }
    if (doColumn) {
      for (var y = 0; y < height; y++) {
        if (y != open.y) {
          values[index++] = valueAt(open.x, y);
        }
      }
    }

    return values;
  }

  bool _movable(int tileValue) {
    if (tileValue == tileCount) {
      return false;
    }

    final target = coordinatesOf(tileValue);
    final lastCoord = openPosition();
    if (lastCoord.x != target.x && lastCoord.y != target.y) {
      return false;
    }
    return true;
  }

  Puzzle clickValue(int tileValue) {
    if (!_movable(tileValue)) {
      return null;
    }
    return _clickValue(tileValue);
  }

  Puzzle _clickValue(int tileValue) {
    assert(_movable(tileValue));
    final target = coordinatesOf(tileValue);

    final newStore = _copyData();

    _shift(newStore, target.x, target.y);
    return _newWithValues(newStore);
  }

  void _shift(List<int> source, int targetX, int targetY) {
    final lastCoord = openPosition();
    final deltaX = lastCoord.x - targetX;
    final deltaY = lastCoord.y - targetY;

    if ((deltaX.abs() + deltaY.abs()) > 1) {
      final shiftPointX = targetX + deltaX.sign;
      final shiftPointY = targetY + deltaY.sign;
      _shift(source, shiftPointX, shiftPointY);
      _staticSwap(source, targetX, targetY, shiftPointX, shiftPointY);
    } else {
      _staticSwap(source, lastCoord.x, lastCoord.y, targetX, targetY);
    }
  }

  void _staticSwap(List<int> source, int ax, int ay, int bx, int by) {
    final aIndex = ax + ay * width;
    final aValue = source[aIndex];
    final bIndex = bx + by * width;

    source[aIndex] = source[bIndex];
    source[bIndex] = aValue;
  }

  Point coordinatesOf(int value) {
    final index = indexOf(value);
    final x = index % width;
    final y = index ~/ width;
    assert(_getIndex(x, y) == index);
    return Point(x, y);
  }

  int _getIndex(int x, int y) {
    assert(x >= 0 && x < width);
    assert(y >= 0 && y < height);
    return x + y * width;
  }

  @override
  String toString() => _toString();

  String _toString() {
    final grid = List<List<String>>.generate(
        height,
        (row) => List<String>.generate(
            width, (col) => valueAt(col, row).toString()));

    final longestLength =
        grid.expand((r) => r).fold(0, (int l, cell) => max(l, cell.length));

    return grid
        .map((r) => r.map((v) => v.padLeft(longestLength)).join(' '))
        .join('\n');
  }
}

Uint8List _randomList(int width, int height) => _randomizeList(
    width, List<int>.generate(width * height, (i) => i, growable: false));

Uint8List _randomizeList(int width, List<int> existing) {
  final copy = Uint8List.fromList(existing);
  do {
    copy.shuffle(_rnd);
  } while (!isSolvable(width, copy) ||
      copy.any((v) => copy[v] == v || copy[v] == existing[v]));
  return copy;
}

void _validate(List<int> source) {
  for (var i = 0; i < source.length; i++) {
    requireArgument(
        source.contains(i),
        'source',
        'Must contain each number from 0 to `length - 1` '
            'once and only once.');
  }
}
