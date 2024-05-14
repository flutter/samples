import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';

/// From: https://gist.github.com/creativecreatorormaybenot/cd42b60cb33c9962b19f629ec638d4de
/// This is code that I (https://twitter.com/creativemaybeno) wrote for a
/// StackOverflow answer.
/// You can find it here: https://stackoverflow.com/a/65067655/6509751.
/// List of the taps recorded by [TapRecorder].
///
/// This is only a make-shift solution of course. This will only be viable
/// when using a single [TapRecorder] because it is saved as a top-level
/// variable.
@visibleForTesting
final recordedTaps = <Offset>[];

/// These are the parameters for the visualization of the recorded taps.
const _tapRadius = 15.0,
    _tapDuration = Duration(milliseconds: 420),
    _tapColor = Colors.white,
    _shadowColor = Colors.black,
    _shadowElevation = 2.0;

/// Widget that records any taps that hit its child.
///
/// It does not matter to this widget whether the child accepts the hit events.
/// Everything hitting the rect of the child will be recorded.
///
/// It will both visualize them and add them to [recordedTaps].
class TapRecorder extends SingleChildRenderObjectWidget {
  const TapRecorder({super.key, required Widget child}) : super(child: child);

  @override
  RenderObject createRenderObject(BuildContext context) {
    return _RenderTapRecorder();
  }
}

class _RenderTapRecorder extends RenderProxyBox with _SilentTickerProvider {
  final _recordedTaps = <_RecordedTap>[];

  @override
  void detach() {
    for (final recordedTap in _recordedTaps) {
      (recordedTap.animation as AnimationController).dispose();
    }
    _recordedTaps.clear();
    super.detach();
  }

  @override
  bool hitTest(BoxHitTestResult result, {required Offset position}) {
    if (!size.contains(position)) return false;
    // We always want to add a hit test entry for ourselves as we want to react
    // to each and every hit event.
    result.add(BoxHitTestEntry(this, position));
    return hitTestChildren(result, position: position);
  }

  @override
  void handleEvent(PointerEvent event, covariant HitTestEntry entry) {
    // We do not want to interfere in the gesture arena, which is why we are not
    // using regular tap recognizers. Instead, we handle it ourselves and always
    // react to the hit events (ignoring the gesture arena).
    if (event is PointerDownEvent) {
      // Records the global position.
      recordedTaps.add(event.position);

      final controller = AnimationController(
            vsync: this,
            duration: _tapDuration,
          ),
          recordedTap = _RecordedTap(event.localPosition, controller);
      _recordedTaps.add(recordedTap);

      controller
        ..addListener(markNeedsPaint)
        ..addStatusListener((status) {
          if (status == AnimationStatus.completed) {
            controller.dispose();
            _recordedTaps.remove(recordedTap);
          }
        })
        ..forward();
    }
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    context.paintChild(child!, offset);

    final canvas = context.canvas;
    for (final tap in _recordedTaps) {
      final path = Path()
        ..addOval(
            Rect.fromCircle(center: tap.localPosition, radius: _tapRadius));
      final opacity = 1 - tap.animation.value;

      canvas.drawShadow(
          path, _shadowColor.withOpacity(opacity), _shadowElevation, true);
      canvas.drawPath(path, Paint()..color = _tapColor.withOpacity(opacity));
    }
  }
}

class _RecordedTap {
  _RecordedTap(this.localPosition, this.animation);

  final Offset localPosition;
  final Animation<double> animation;
}

/// Ticker provider that does not perform any diagnostics.
///
/// We trust that the [_RenderTapRecorder] instance will dispose all tickers
/// by disposing the animation controllers.
mixin _SilentTickerProvider implements TickerProvider {
  @override
  Ticker createTicker(TickerCallback onTick) => Ticker(onTick);
}
