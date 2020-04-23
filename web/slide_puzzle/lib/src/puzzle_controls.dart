import 'package:flutter/foundation.dart';

abstract class PuzzleControls implements Listenable {
  void reset();

  int get clickCount;

  int get incorrectTiles;

  bool get autoPlay;

  void Function(bool newValue) get setAutoPlayFunction;
}
