import 'package:flutter/material.dart';

import 'app_state.dart';
import 'core/puzzle_animator.dart';
import 'puzzle_flow_delegate.dart';
import 'widgets/material_interior_alt.dart';

abstract class SharedTheme {
  SharedTheme(this._appState);

  final AppState _appState;

  PuzzleProxy get puzzle => _appState.puzzle;

  String get name;

  Color get puzzleThemeBackground;

  RoundedRectangleBorder get puzzleBorder;

  Color get puzzleBackgroundColor;

  Color get puzzleAccentColor;

  EdgeInsetsGeometry get tilePadding => const EdgeInsets.all(6);

  Widget tileButton(int i);

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
    int tileValue,
    Widget content, {
    Color color,
    RoundedRectangleBorder shape,
  }) =>
      AnimatedContainer(
        duration: _puzzleAnimationDuration,
        padding: tilePadding,
        child: RaisedButton(
          elevation: 4,
          clipBehavior: Clip.hardEdge,
          animationDuration: _puzzleAnimationDuration,
          onPressed: () => _tilePress(tileValue),
          shape: shape ?? puzzleBorder,
          padding: const EdgeInsets.symmetric(),
          child: content,
          color: color,
        ),
      );

  Widget build(BuildContext context) => Material(
          child: Stack(
        children: <Widget>[
          const SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover,
              child: Image(
                image: AssetImage('asset/seattle.jpg'),
              ),
            ),
          ),
          AnimatedContainer(
            duration: _puzzleAnimationDuration,
            color: puzzleThemeBackground,
            child: Center(
              child: _styledWrapper(
                SizedBox(
                  width: 580,
                  child: Column(
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
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: TabBar(
                          controller: _appState.tabController,
                          labelPadding: const EdgeInsets.fromLTRB(0, 20, 0, 12),
                          labelColor: puzzleAccentColor,
                          indicatorColor: puzzleAccentColor,
                          indicatorWeight: 1.5,
                          unselectedLabelColor: Colors.black.withOpacity(0.6),
                          tabs: _appState.themeData
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
                        constraints: const BoxConstraints.tightForFinite(),
                        padding: const EdgeInsets.all(10),
                        child: Flow(
                          delegate: PuzzleFlowDelegate(
                            _tileSize,
                            puzzle,
                            _appState.animationNotifier,
                          ),
                          children: List<Widget>.generate(
                            puzzle.length,
                            _tileButton,
                          ),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            top: BorderSide(color: Colors.black26, width: 1),
                          ),
                        ),
                        padding: const EdgeInsets.only(
                          left: 10,
                          bottom: 6,
                          top: 2,
                          right: 10,
                        ),
                        child: Row(children: _bottomControls(context)),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ));

  Duration get _puzzleAnimationDuration => kThemeAnimationDuration * 3;

  // Thought about using AnimatedContainer here, but it causes some weird
  // resizing behavior
  Widget _styledWrapper(Widget child) => MaterialInterior(
        duration: _puzzleAnimationDuration,
        shape: puzzleBorder,
        color: puzzleBackgroundColor,
        child: child,
      );

  Size get _tileSize => const Size(140.0, 140.0);

  void Function(bool newValue) get _setAutoPlay {
    if (puzzle.solved) {
      return null;
    }
    return _appState.setAutoPlay;
  }

  void _tilePress(int tileValue) {
    _appState.setAutoPlay(false);
    _appState.puzzle.clickOrShake(tileValue);
  }

  TextStyle get _infoStyle => TextStyle(
        color: puzzleAccentColor,
        fontWeight: FontWeight.bold,
      );

  List<Widget> _bottomControls(BuildContext context) => <Widget>[
        IconButton(
          onPressed: puzzle.reset,
          icon: Icon(Icons.refresh, color: puzzleAccentColor),
          //Icons.refresh,
        ),
        Checkbox(
          value: _appState.autoPlay,
          onChanged: _setAutoPlay,
          activeColor: puzzleAccentColor,
        ),
        Expanded(
          child: Container(),
        ),
        Text(
          puzzle.clickCount.toString(),
          textAlign: TextAlign.right,
          style: _infoStyle,
        ),
        const Text(' Moves'),
        SizedBox(
          width: 28,
          child: Text(
            puzzle.incorrectTiles.toString(),
            textAlign: TextAlign.right,
            style: _infoStyle,
          ),
        ),
        const Text(' Tiles left  ')
      ];

  Widget _tileButton(int i) {
    if (i == puzzle.tileCount && !puzzle.solved) {
      return const Center();
    }

    return tileButton(i);
  }
}
