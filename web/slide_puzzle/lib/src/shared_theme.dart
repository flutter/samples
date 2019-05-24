// Copyright 2019 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:provider/provider.dart';

import 'app_state.dart';
import 'core/puzzle_animator.dart';
import 'flutter.dart';
import 'puzzle_flow_delegate.dart';
import 'themes.dart';
import 'widgets/material_interior_alt.dart';

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
        duration: _puzzleAnimationDuration,
        padding: tilePadding(appState.puzzle),
        child: RaisedButton(
          elevation: 4,
          clipBehavior: Clip.hardEdge,
          animationDuration: _puzzleAnimationDuration,
          onPressed: () => appState.clickOrShake(tileValue),
          shape: shape ?? puzzleBorder(small),
          padding: const EdgeInsets.symmetric(),
          child: content,
          color: color,
        ),
      );

  Widget _updateConstraints(
      BoxConstraints constraints, Widget Function(bool small) builder) {
    const _smallWidth = 580;

    final constraintWidth =
        constraints.hasBoundedWidth ? constraints.maxWidth : 1000.0;

    return builder(constraintWidth < _smallWidth);
  }

  Widget build(BuildContext context, BoxConstraints constraints) =>
      _updateConstraints(
          constraints,
          (small) => Material(
                  child: Stack(
                children: <Widget>[
                  const SizedBox.expand(
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image(
                        image: AssetImage('seattle.jpg'),
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    duration: _puzzleAnimationDuration,
                    color: puzzleThemeBackground,
                    child: Center(
                      child: _styledWrapper(
                        small,
                        SizedBox(
                          width: 580,
                          child: Consumer<AppState>(
                            builder: (context, appState, _) => Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      decoration: const BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            color: Colors.black26,
                                            width: 1,
                                          ),
                                        ),
                                      ),
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: TabBar(
                                        controller:
                                            Provider.of<TabController>(context),
                                        labelPadding: const EdgeInsets.fromLTRB(
                                            0, 20, 0, 12),
                                        labelColor: puzzleAccentColor,
                                        indicatorColor: puzzleAccentColor,
                                        indicatorWeight: 1.5,
                                        unselectedLabelColor:
                                            Colors.black.withOpacity(0.6),
                                        tabs: themes
                                            .map((st) => Text(
                                                  st.name.toUpperCase(),
                                                  style: const TextStyle(
                                                    letterSpacing: 0.5,
                                                  ),
                                                ))
                                            .toList(),
                                      ),
                                    ),
                                    Container(
                                      constraints:
                                          const BoxConstraints.tightForFinite(),
                                      padding: const EdgeInsets.all(10),
                                      child: Flow(
                                        delegate: PuzzleFlowDelegate(
                                          small
                                              ? const Size(90, 90)
                                              : const Size(140, 140),
                                          appState.puzzle,
                                          appState.animationNotifier,
                                        ),
                                        children: List<Widget>.generate(
                                          appState.puzzle.length,
                                          (i) =>
                                              _tileButton(i, appState, small),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: const BoxDecoration(
                                        border: Border(
                                          top: BorderSide(
                                              color: Colors.black26, width: 1),
                                        ),
                                      ),
                                      padding: const EdgeInsets.only(
                                        left: 10,
                                        bottom: 6,
                                        top: 2,
                                        right: 10,
                                      ),
                                      child: Row(
                                          children: _bottomControls(appState)),
                                    )
                                  ],
                                ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )));

  Duration get _puzzleAnimationDuration => kThemeAnimationDuration * 3;

  // Thought about using AnimatedContainer here, but it causes some weird
  // resizing behavior
  Widget _styledWrapper(bool small, Widget child) => MaterialInterior(
        duration: _puzzleAnimationDuration,
        shape: puzzleBorder(small),
        color: puzzleBackgroundColor,
        child: child,
      );

  TextStyle get _infoStyle => TextStyle(
        color: puzzleAccentColor,
        fontWeight: FontWeight.bold,
      );

  List<Widget> _bottomControls(AppState appState) => <Widget>[
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

  Widget _tileButton(int i, AppState appState, bool small) {
    if (i == appState.puzzle.tileCount && !appState.puzzle.solved) {
      return const Center();
    }

    return tileButton(i, appState, small);
  }
}
