// Copyright 2019 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'app_state.dart';
import 'core/puzzle_animator.dart';
import 'flutter.dart';
import 'widgets/material_interior_alt.dart';

final puzzleAnimationDuration = kThemeAnimationDuration * 3;

abstract class SharedTheme {
  const SharedTheme();

  String get name;

  Color get puzzleThemeBackground;

  RoundedRectangleBorder puzzleBorder(bool small);

  Color get puzzleBackgroundColor;

  Color get puzzleAccentColor;

  EdgeInsetsGeometry tilePadding(PuzzleProxy puzzle) => const EdgeInsets.all(6);

  Widget tileButton(int i, AppState appState, bool small);

  Ink createInk(
    Widget child, {
    DecorationImage image,
    EdgeInsetsGeometry padding,
  }) =>
      Ink(
        padding: padding,
        decoration: BoxDecoration(
          image: image,
        ),
        child: child,
      );

  Widget createButton(
    AppState appState,
    bool small,
    int tileValue,
    Widget content, {
    Color color,
    RoundedRectangleBorder shape,
  }) =>
      AnimatedContainer(
        duration: puzzleAnimationDuration,
        padding: tilePadding(appState.puzzle),
        child: RaisedButton(
          elevation: 4,
          clipBehavior: Clip.hardEdge,
          animationDuration: puzzleAnimationDuration,
          onPressed: () => appState.clickOrShake(tileValue),
          shape: shape ?? puzzleBorder(small),
          padding: const EdgeInsets.symmetric(),
          child: content,
          color: color,
        ),
      );

  // Thought about using AnimatedContainer here, but it causes some weird
  // resizing behavior
  Widget styledWrapper(bool small, Widget child) => MaterialInterior(
        duration: puzzleAnimationDuration,
        shape: puzzleBorder(small),
        color: puzzleBackgroundColor,
        child: child,
      );

  TextStyle get _infoStyle => TextStyle(
        color: puzzleAccentColor,
        fontWeight: FontWeight.bold,
      );

  List<Widget> bottomControls(AppState appState) => <Widget>[
        IconButton(
          onPressed: appState.puzzle.reset,
          icon: Icon(Icons.refresh, color: puzzleAccentColor),
          //Icons.refresh,
        ),
        Checkbox(
          value: appState.autoPlay,
          onChanged: appState.setAutoPlayFunction,
          activeColor: puzzleAccentColor,
        ),
        Expanded(
          child: Container(),
        ),
        Text(
          appState.puzzle.clickCount.toString(),
          textAlign: TextAlign.right,
          style: _infoStyle,
        ),
        const Text(' Moves'),
        SizedBox(
          width: 28,
          child: Text(
            appState.puzzle.incorrectTiles.toString(),
            textAlign: TextAlign.right,
            style: _infoStyle,
          ),
        ),
        const Text(' Tiles left  ')
      ];

  Widget tileButtonCore(int i, AppState appState, bool small) {
    if (i == appState.puzzle.tileCount && !appState.puzzle.solved) {
      return const Center();
    }

    return tileButton(i, appState, small);
  }
}
