import 'package:flutter/foundation.dart';

import 'core/puzzle_proxy.dart';

abstract class AppState {
  PuzzleProxy get puzzle;

  Listenable get animationNotifier;
}
