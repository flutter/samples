import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'app_state.dart';
import 'core/puzzle_animator.dart';
import 'frame_nanny.dart';
import 'shared_theme.dart';
import 'theme_plaster.dart';
import 'theme_seattle.dart';
import 'theme_simple.dart';

class PuzzleHomeState extends State
    with TickerProviderStateMixin
    implements AppState {
  TabController _tabController;
  AnimationController _controller;
  Animation<Offset> _shuffleOffsetAnimation;

  @override
  Animation<Offset> get shuffleOffsetAnimation => _shuffleOffsetAnimation;

  @override
  final PuzzleAnimator puzzle;

  @override
  final animationNotifier = _AnimationNotifier();

  @override
  TabController get tabController => _tabController;

  final _nanny = FrameNanny();

  SharedTheme _currentTheme;

  @override
  SharedTheme get currentTheme => _currentTheme;

  @override
  set currentTheme(SharedTheme theme) {
    setState(() {
      _currentTheme = theme;
    });
  }

  Duration _tickerTimeSinceLastEvent = Duration.zero;
  Ticker _ticker;
  Duration _lastElapsed;
  StreamSubscription sub;

  @override
  bool autoPlay = false;

  PuzzleHomeState(this.puzzle) {
    sub = puzzle.onEvent.listen(_onPuzzleEvent);

    _themeDataCache = List.unmodifiable([
      ThemeSimple(this),
      ThemeSeattle(this),
      ThemePlaster(this),
    ]);

    _currentTheme = themeData.first;
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

    _shuffleOffsetAnimation = _controller.drive(const _Shake());
    _tabController = TabController(vsync: this, length: _themeDataCache.length);

    _tabController.addListener(() {
      currentTheme = _themeDataCache[_tabController.index];
    });
  }

  List<SharedTheme> _themeDataCache;

  @override
  Iterable<SharedTheme> get themeData => _themeDataCache;

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
  Widget build(BuildContext context) => _currentTheme.build(context);

  @override
  void dispose() {
    animationNotifier.dispose();
    _tabController.dispose();
    _controller?.dispose();
    _ticker?.dispose();
    sub.cancel();
    super.dispose();
  }

  void _onPuzzleEvent(PuzzleEvent e) {
    _tickerTimeSinceLastEvent = Duration.zero;
    _ensureTicking();
    if (e == PuzzleEvent.noop) {
      assert(e == PuzzleEvent.noop);
      _controller.reset();
      _controller.forward();
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
    puzzle.update(_nanny.tick(delta));

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

class _Shake extends Animatable<Offset> {
  const _Shake();

  @override
  Offset transform(double t) => Offset(0.01 * math.sin(t * math.pi * 3), 0);
}

class _AnimationNotifier extends ChangeNotifier implements AnimationNotifier {
  _AnimationNotifier();

  @override
  void animate() {
    notifyListeners();
  }
}
