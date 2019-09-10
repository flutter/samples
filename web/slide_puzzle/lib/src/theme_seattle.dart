import 'package:flutter/material.dart';

import 'app_state.dart';
import 'shared_theme.dart';
import 'widgets/decoration_image_plus.dart';

class ThemeSeattle extends SharedTheme {
  @override
  String get name => 'Seattle';

  ThemeSeattle(AppState proxy) : super(proxy);

  @override
  Color get puzzleThemeBackground => const Color.fromARGB(153, 90, 135, 170);

  @override
  Color get puzzleBackgroundColor => Colors.white70;

  @override
  Color get puzzleAccentColor => const Color(0xff000579f);

  @override
  RoundedRectangleBorder get puzzleBorder => const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(1),
        ),
      );

  @override
  EdgeInsetsGeometry get tilePadding =>
      puzzle.solved ? const EdgeInsets.all(1) : const EdgeInsets.all(4);

  @override
  Widget tileButton(int i) {
    if (i == puzzle.tileCount && !puzzle.solved) {
      assert(puzzle.solved);
    }

    final decorationImage = DecorationImagePlus(
        puzzleWidth: puzzle.width,
        puzzleHeight: puzzle.height,
        pieceIndex: i,
        fit: BoxFit.cover,
        image: const AssetImage('asset/seattle.jpg'));

    final correctPosition = puzzle.isCorrectPosition(i);
    final content = createInk(
      puzzle.solved
          ? const Center()
          : Container(
              decoration: ShapeDecoration(
                shape: const CircleBorder(),
                color: correctPosition ? Colors.black38 : Colors.white54,
              ),
              alignment: Alignment.center,
              child: Text(
                (i + 1).toString(),
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: correctPosition ? Colors.white : Colors.black,
                  fontSize: 42,
                ),
              ),
            ),
      image: decorationImage,
      padding: const EdgeInsets.all(32),
    );

    return createButton(i, content);
  }
}
