import 'dart:collection';

class FrameNanny {
  static const _bufferSize = 200;
  static const _maxFrameDuration = Duration(milliseconds: 34);
  final _buffer = ListQueue<Duration>(_bufferSize);
  final _watch = Stopwatch();

  Duration tick(Duration source) {
    _watch.start();
    _buffer.add(source);

    while (_buffer.length > _bufferSize) {
      _buffer.removeFirst();
    }

    if (source > _maxFrameDuration) {
      source = _maxFrameDuration;
    }

    if (_watch.elapsed > const Duration(seconds: 2)) {
      var goodCount = 0;
      var sum = const Duration();
      Duration best, worst;

      for (var e in _buffer) {
        sum += e;
        if (e <= _maxFrameDuration) {
          goodCount++;
        }

        if (best == null || e < best) {
          best = e;
        }

        if (worst == null || e > worst) {
          worst = e;
        }
      }

      _watch.reset();
      print([
        '**Nanny**',
        '${(100 * goodCount / _buffer.length).toStringAsFixed(1)}%',
        '<= ${_maxFrameDuration.inMilliseconds}ms',
        'best:',
        best?.inMilliseconds,
        'avg:',
        _safeDivide(sum, _buffer.length),
        'worst',
        worst?.inMilliseconds
      ].join(' '));
    }
    return source;
  }
}

Object _safeDivide(Duration source, int divisor) {
  if (divisor == 0) {
    return double.nan;
  }
  return (source ~/ divisor).inMilliseconds;
}
