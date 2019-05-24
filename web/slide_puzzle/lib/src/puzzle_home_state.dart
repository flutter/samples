// Copyright 2019 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:provider/provider.dart';

import 'app_state.dart';
import 'core/puzzle_animator.dart';
import 'flutter.dart';
import 'shared_theme.dart';
import 'themes.dart';

class PuzzleHomeState extends State with TickerProviderStateMixin, AppState {
  TabController _tabController;
  AnimationController _controller;

  @override
  final PuzzleAnimator puzzle;

  @override
  final _AnimationNotifier animationNotifier = _AnimationNotifier();

  SharedTheme _currentTheme;
  Duration _tickerTimeSinceLastEvent = Duration.zero;
  Ticker _ticker;
  Duration _lastElapsed;
  StreamSubscription _puzzleEventSubscription;

  @override
  bool autoPlay = false;

  PuzzleHomeState(this.puzzle) {
    _puzzleEventSubscription = puzzle.onEvent.listen(_onPuzzleEvent);

    _currentTheme = themes.first;
  }

  @override
  void initState() {
    super.initState();
    _ticker ??= createTicker(_onTick);
    _ensureTicking();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );

    _tabController = TabController(vsync: this, length: themes.length);

    _tabController.addListener(() {
      setState(() {
        _currentTheme = themes[_tabController.index];
      });
    });
  }

  @override
  void setAutoPlay(bool newValue) {
    if (newValue != autoPlay) {
      setState(() {
        // Only allow enabling autoPlay if the puzzle is not solved
        autoPlay = newValue && !puzzle.solved;
        if (autoPlay) {
          _ensureTicking();
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          ListenableProvider.value(listenable: _tabController),
          Provider<AppState>.value(value: this),
        ],
        child: LayoutBuilder(builder: _currentTheme.build),
      );

  @override
  void dispose() {
    animationNotifier.dispose();
    _tabController.dispose();
    _controller?.dispose();
    _ticker?.dispose();
    _puzzleEventSubscription.cancel();
    super.dispose();
  }

  void _onPuzzleEvent(PuzzleEvent e) {
    _tickerTimeSinceLastEvent = Duration.zero;
    _ensureTicking();
    if (e == PuzzleEvent.noop) {
      assert(e == PuzzleEvent.noop);
      _controller
        ..reset()
        ..forward();
    }
    setState(() {
      // noop
    });
  }

  void _ensureTicking() {
    if (!_ticker.isTicking) {
      _ticker.start();
    }
  }

  void _onTick(Duration elapsed) {
    if (elapsed == Duration.zero) {
      _lastElapsed = elapsed;
    }
    final delta = elapsed - _lastElapsed;
    _lastElapsed = elapsed;

    if (delta.inMilliseconds <= 0) {
      // `_delta` may be negative or zero if `elapsed` is zero (first tick)
      // or during a restart. Just ignore this case.
      return;
    }

    _tickerTimeSinceLastEvent += delta;
    puzzle.update(delta > _maxFrameDuration ? _maxFrameDuration : delta);

    if (!puzzle.stable) {
      animationNotifier.animate();
    } else {
      if (!autoPlay) {
        _ticker.stop();
        _lastElapsed = null;
      }
    }

    if (autoPlay &&
        _tickerTimeSinceLastEvent > const Duration(milliseconds: 200)) {
      puzzle.playRandom();

      if (puzzle.solved) {
        setAutoPlay(false);
      }
    }
  }
}

class _AnimationNotifier extends ChangeNotifier {
  void animate() {
    notifyListeners();
  }
}

const _maxFrameDuration = Duration(milliseconds: 34);
