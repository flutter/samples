void requireArgument(bool truth, String argName, [String message]) {
  if (!truth) {
    if (message == null || message.isEmpty) {
      message = 'value was invalid';
    }
    throw ArgumentError('`$argName` - $message');
  }
}

void requireArgumentNotNull(argument, String argName) {
  if (argument == null) {
    throw ArgumentError.notNull(argName);
  }
}

// Logic from
// https://www.cs.bham.ac.uk/~mdr/teaching/modules04/java2/TilesSolvability.html
// Used with gratitude!
bool isSolvable(int width, List<int> list) {
  final height = list.length ~/ width;
  assert(width * height == list.length);
  final inversions = _countInversions(list);

  if (width.isOdd) {
    return inversions.isEven;
  }

  final blankRow = list.indexOf(list.length - 1) ~/ width;

  if ((height - blankRow).isEven) {
    return inversions.isOdd;
  } else {
    return inversions.isEven;
  }
}

int _countInversions(List<int> items) {
  final tileCount = items.length - 1;
  var score = 0;
  for (var i = 0; i < items.length; i++) {
    final value = items[i];
    if (value == tileCount) {
      continue;
    }

    for (var j = i + 1; j < items.length; j++) {
      final v = items[j];
      if (v != tileCount && v < value) {
        score++;
      }
    }
  }
  return score;
}
