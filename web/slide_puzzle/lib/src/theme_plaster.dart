import 'package:flutter/material.dart';

import 'app_state.dart';
import 'shared_theme.dart';

const _yellowIsh = Color.fromARGB(255, 248, 244, 233);
const _chocolate = Color.fromARGB(255, 66, 66, 68);
const _orangeIsh = Color.fromARGB(255, 224, 107, 83);

class ThemePlaster extends SharedTheme {
  @override
  String get name => 'Plaster';

  ThemePlaster(AppState baseTheme) : super(baseTheme);

  @override
  Color get puzzleThemeBackground => _chocolate;

  @override
  Color get puzzleBackgroundColor => _yellowIsh;

  @override
  Color get puzzleAccentColor => _orangeIsh;

  @override
  RoundedRectangleBorder get puzzleBorder => const RoundedRectangleBorder(
        side: BorderSide(
          color: Color.fromARGB(255, 103, 103, 105),
          width: 8,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(18),
        ),
      );

  @override
  Widget tileButton(int i) {
    final correctColumn = i % puzzle.width;
    final correctRow = i ~/ puzzle.width;

    final primary = (correctColumn + correctRow).isEven;

    if (i == puzzle.tileCount) {
      assert(puzzle.solved);
      return const Center(
        child: Icon(
          Icons.thumb_up,
          size: 72,
          color: _orangeIsh,
        ),
      );
    }

    final content = Text(
      (i + 1).toString(),
      style: TextStyle(
        color: primary ? _yellowIsh : _chocolate,
        fontFamily: 'Plaster',
        fontSize: 77,
      ),
    );

    return createButton(
      i,
      content,
      color: primary ? _orangeIsh : _yellowIsh,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: primary ? _chocolate : _orangeIsh, width: 5),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
