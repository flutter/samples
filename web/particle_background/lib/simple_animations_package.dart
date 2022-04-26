// Package simple_animations:
//    https://pub.dev/packages/simple_animations

import 'dart:math';

import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';

/// Widget to easily create a continuous animation.
///
/// You need to specify a [builder] function that gets the build context passed
/// along with the [timeElapsed] (as a [Duration]) since the rendering started.
/// You can use this time to specify custom animations on it.
///
/// The [builder] rebuilds all sub-widgets every frame.
///
/// You define an [onTick] function that is called before builder to update
/// you rendered scene. It's also utilized during fast-forwarding the animation.
///
/// Specify a [startTime] to fast-forward your animation in the beginning.
/// The widget will interpolate the animation by calling the [onTick] function
/// multiple times. (Default value is `20`. You can tune it by setting the
/// [startTimeSimulationTicks] property.)
class Rendering extends StatefulWidget {
  final Widget Function(BuildContext context, Duration timeElapsed) builder;
  final Function(Duration timeElapsed)? onTick;
  final Duration startTime;
  final int startTimeSimulationTicks;

  const Rendering(
      {required this.builder,
      this.onTick,
      this.startTime = Duration.zero,
      this.startTimeSimulationTicks = 20,
      Key? key})
      : super(key: key);

  @override
  _RenderingState createState() => _RenderingState();
}

class _RenderingState extends State<Rendering>
    with SingleTickerProviderStateMixin {
  late Ticker _ticker;
  Duration _timeElapsed = const Duration(milliseconds: 0);

  @override
  void initState() {
    if (widget.startTime > Duration.zero) {
      _simulateStartTimeTicks();
    }

    _ticker = createTicker((elapsed) {
      _onRender(elapsed + widget.startTime);
    });
    _ticker.start();
    super.initState();
  }

  void _onRender(Duration effectiveElapsed) {
    if (widget.onTick != null) {
      widget.onTick!(effectiveElapsed);
    }
    setState(() {
      _timeElapsed = effectiveElapsed;
    });
  }

  void _simulateStartTimeTicks() {
    if (widget.onTick != null) {
      for (var i in Iterable.generate(widget.startTimeSimulationTicks + 1)) {
        final simulatedTime = Duration(
            milliseconds: (widget.startTime.inMilliseconds *
                    i /
                    widget.startTimeSimulationTicks)
                .round());
        widget.onTick!(simulatedTime);
      }
    }
  }

  @override
  void dispose() {
    _ticker.stop(canceled: true);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, _timeElapsed);
  }
}

/// Animatable that tweens multiple parallel properties (called [Track]s).
/// ---
/// The constructor of [MultiTrackTween] expects a list of [Track] objects.
/// You can fetch the specified total duration via [duration] getter.
/// ---
/// Example:
///
/// ```dart
///   final tween = MultiTrackTween([
///     Track("color")
///       .add(Duration(seconds: 1), ColorTween(begin: Colors.red, end: Colors.blue))
///       .add(Duration(seconds: 1), ColorTween(begin: Colors.blue, end: Colors.yellow)),
///     Track("width")
///       .add(Duration(milliseconds: 500), ConstantTween(200.0))
///       .add(Duration(milliseconds: 1500), Tween(begin: 200.0, end: 400.0),
///            curve: Curves.easeIn)
///   ]);
///
///   return ControlledAnimation(
///     duration: tween.duration,
///     tween: tween,
///     builder: (context, values) {
///        ...
///     }
///   );
/// ```
class MultiTrackTween extends Animatable<Map<String, dynamic>> {
  final _tracksToTween = <String, _TweenData>{};
  var _maxDuration = 0;

  MultiTrackTween(List<Track> tracks)
      : assert(tracks.isNotEmpty, "Add a List<Track> to configure the tween."),
        assert(tracks.where((track) => track.items.isEmpty).isEmpty,
            "Each Track needs at least one added Tween by using the add()-method.") {
    _computeMaxDuration(tracks);
    _computeTrackTweens(tracks);
  }

  void _computeMaxDuration(List<Track> tracks) {
    for (var track in tracks) {
      final trackDuration = track.items
          .map((item) => item.duration.inMilliseconds)
          .reduce((sum, item) => sum + item);
      _maxDuration = max(_maxDuration, trackDuration);
    }
  }

  void _computeTrackTweens(List<Track> tracks) {
    for (var track in tracks) {
      final trackDuration = track.items
          .map((item) => item.duration.inMilliseconds)
          .reduce((sum, item) => sum + item);

      final sequenceItems = track.items
          .map((item) => TweenSequenceItem(
              tween: item.tween,
              weight: item.duration.inMilliseconds / _maxDuration))
          .toList();

      if (trackDuration < _maxDuration) {
        sequenceItems.add(TweenSequenceItem(
            tween: ConstantTween(null),
            weight: (_maxDuration - trackDuration) / _maxDuration));
      }

      final sequence = TweenSequence(sequenceItems);

      _tracksToTween[track.name] =
          _TweenData(tween: sequence, maxTime: trackDuration / _maxDuration);
    }
  }

  /// Returns the highest duration specified by [Track]s.
  /// ---
  /// Use it to pass it into an [ControlledAnimation].
  ///
  /// You can also scale it by multiplying a double value.
  ///
  /// Example:
  /// ```dart
  ///   final tween = MultiTrackTween(listOfTracks);
  ///
  ///   return ControlledAnimation(
  ///     duration: tween.duration * 1.25, // stretch animation by 25%
  ///     tween: tween,
  ///     builder: (context, values) {
  ///        ...
  ///     }
  ///   );
  /// ```
  Duration get duration {
    return Duration(milliseconds: _maxDuration);
  }

  @override
  Map<String, dynamic> transform(double t) {
    final Map<String, dynamic> result = {};
    _tracksToTween.forEach((name, tweenData) {
      final double tTween = max(0, min(t, tweenData.maxTime! - 0.0001));
      result[name] = tweenData.tween!.transform(tTween);
    });
    return result;
  }
}

/// Single property to tween. Used by [MultiTrackTween].
class Track<T> {
  final String name;
  final List<_TrackItem> items = [];

  Track(this.name);

  /// Adds a "piece of animation" to a [Track].
  ///
  /// You need to pass a [duration] and a [tween]. It will return the track, so
  /// you can specify a track in a builder's style.
  ///
  /// Optionally you can set a named parameter [curve] that applies an easing
  /// curve to the tween.
  Track<T> add(Duration duration, Animatable<T> tween, {Curve? curve}) {
    items.add(_TrackItem(duration, tween, curve: curve));
    return this;
  }
}

class _TrackItem<T> {
  final Duration duration;
  late Animatable<T> tween;

  _TrackItem(this.duration, Animatable<T> _tween, {Curve? curve}) {
    if (curve != null) {
      tween = _tween.chain(CurveTween(curve: curve));
    } else {
      tween = _tween;
    }
  }
}

class _TweenData<T> {
  final Animatable<T>? tween;
  final double? maxTime;

  _TweenData({this.tween, this.maxTime});
}

/// Playback tell the controller of the animation what to do.
enum Playback {
  /// Animation stands still.
  PAUSE,

  /// Animation plays forwards and stops at the end.
  PLAY_FORWARD,

  /// Animation plays backwards and stops at the beginning.
  PLAY_REVERSE,

  /// Animation will reset to the beginning and start playing forward.
  START_OVER_FORWARD,

  /// Animation will reset to the end and start play backward.
  START_OVER_REVERSE,

  /// Animation will play forwards and start over at the beginning when it
  /// reaches the end.
  LOOP,

  /// Animation will play forward until the end and will reverse playing until
  /// it reaches the beginning. Then it starts over playing forward. And so on.
  MIRROR
}

/// Widget to create custom, managed, tween-based animations in a very simple way.
///
/// ---
///
/// An internal [AnimationController] will do everything you tell him by
/// dynamically assigning the one [Playback] to [playback] property.
/// By default the animation will start playing forward and stops at the end.
///
/// A minimum set of properties are [duration] (time span of the animation),
/// [tween] (values to interpolate among the animation) and a [builder] function
/// (defines the animated scene).
///
/// Instead of using [builder] as building function you can use for performance
/// critical scenarios [builderWithChild] along with a prebuild [child].
///
/// ---
///
/// The following properties are optional:
///
/// - You can apply a [delay] that forces the animation to pause a
///   specified time before the animation will perform the defined [playback]
///   instruction.
///
/// - You can specify a [curve] that modifies the [tween] by applying a
///   non-linear animation function. You can find curves in [Curves], for
///   example [Curves.easeOut] or [Curves.easeIn].
///
/// - You can track the animation by setting an [AnimationStatusListener] to
///   the property [animationControllerStatusListener]. The internal [AnimationController] then
///   will route out any events that occur. [ControlledAnimation] doesn't filter
///   or modifies these events. These events are currently only reliable for the
///   [playback]-types [Playback.PLAY_FORWARD] and [Playback.PLAY_REVERSE].
///
/// - You can set the start position of animation by specifying [startPosition]
///   with a value between *0.0* and *1.0*. The [startPosition] is only
///   evaluated once during the initialization of the widget.
///
class ControlledAnimation<T> extends StatefulWidget {
  final Playback playback;
  final Animatable<T> tween;
  final Curve curve;
  final Duration duration;
  final Duration? delay;
  final Widget Function(BuildContext buildContext, T animatedValue)? builder;
  final Widget Function(BuildContext, Widget? child, T animatedValue)?
      builderWithChild;
  final Widget? child;
  final AnimationStatusListener? animationControllerStatusListener;
  final double startPosition;

  const ControlledAnimation(
      {this.playback = Playback.PLAY_FORWARD,
      required this.tween,
      this.curve = Curves.linear,
      required this.duration,
      this.delay,
      this.builder,
      this.builderWithChild,
      this.child,
      this.animationControllerStatusListener,
      this.startPosition = 0.0,
      Key? key})
      : assert(
            (builderWithChild != null && child != null && builder == null) ||
                (builder != null && builderWithChild == null && child == null),
            "Either use just builder and keep buildWithChild and child null. "
            "Or keep builder null and set a builderWithChild and a child."),
        assert(
            startPosition >= 0 && startPosition <= 1,
            "The property startPosition "
            "must have a value between 0.0 and 1.0."),
        super(key: key);

  @override
  _ControlledAnimationState<T> createState() => _ControlledAnimationState<T>();
}

class _ControlledAnimationState<T> extends State<ControlledAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<T?> _animation;
  bool _isDisposed = false;
  bool _waitForDelay = true;
  bool _isCurrentlyMirroring = false;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: widget.duration)
      ..addListener(() {
        setState(() {});
      })
      ..value = widget.startPosition;

    _animation = widget.tween
        .chain(CurveTween(curve: widget.curve))
        .animate(_controller) as Animation<T?>;

    if (widget.animationControllerStatusListener != null) {
      _controller.addStatusListener(widget.animationControllerStatusListener!);
    }

    initialize();
    super.initState();
  }

  Future<void> initialize() async {
    if (widget.delay != null) {
      await Future.delayed(widget.delay!);
    }
    _waitForDelay = false;
    await executeInstruction();
  }

  @override
  void didUpdateWidget(ControlledAnimation oldWidget) {
    _controller.duration = widget.duration;
    executeInstruction();
    super.didUpdateWidget(oldWidget);
  }

  Future<void> executeInstruction() async {
    if (_isDisposed || _waitForDelay) {
      return;
    }

    if (widget.playback == Playback.PAUSE) {
      _controller.stop();
    }
    if (widget.playback == Playback.PLAY_FORWARD) {
      await _controller.forward();
    }
    if (widget.playback == Playback.PLAY_REVERSE) {
      await _controller.reverse();
    }
    if (widget.playback == Playback.START_OVER_FORWARD) {
      await _controller.forward(from: 0.0);
    }
    if (widget.playback == Playback.START_OVER_REVERSE) {
      await _controller.reverse(from: 1.0);
    }
    if (widget.playback == Playback.LOOP) {
      await _controller.repeat();
    }
    if (widget.playback == Playback.MIRROR && !_isCurrentlyMirroring) {
      _isCurrentlyMirroring = true;
      await _controller.repeat(reverse: true);
    }

    if (widget.playback != Playback.MIRROR) {
      _isCurrentlyMirroring = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.builder != null) {
      return widget.builder!(context, _animation.value);
    } else if (widget.builderWithChild != null && widget.child != null) {
      return widget.builderWithChild!(context, widget.child, _animation.value);
    }
    _controller.stop(canceled: true);
    throw FlutterError(
        "I don't know how to build the animation. Make sure to either specify "
        "a builder or a builderWithChild (along with a child).");
  }

  @override
  void dispose() {
    _isDisposed = true;
    _controller.dispose();
    super.dispose();
  }
}

/// Utility class to compute an animation progress between two points in time.
///
/// On creation you specify a [startTime] and a [duration].
///
/// You can query the progress value - a value between `0.0` and `11.0` - by
/// calling [progress] and passing the current time.
class AnimationProgress {
  final Duration duration;
  final Duration startTime;

  /// Creates an [AnimationProgress].
  AnimationProgress({required this.duration, required this.startTime});

  /// Queries the current progress value based on the specified [startTime] and
  /// [duration] as a value between `0.0` and `1.0`. It will automatically
  /// clamp values this interval to fit in.
  double progress(Duration time) => max(0.0,
      min((time - startTime).inMilliseconds / duration.inMilliseconds, 1.0));
}
