// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:gallery/l10n/gallery_localizations.dart';

enum SlidersDemoType {
  sliders,
  rangeSliders,
}

class SlidersDemo extends StatelessWidget {
  const SlidersDemo({Key key, this.type}) : super(key: key);

  final SlidersDemoType type;

  String _title(BuildContext context) {
    switch (type) {
      case SlidersDemoType.sliders:
        return GalleryLocalizations.of(context).demoSlidersTitle;
      case SlidersDemoType.rangeSliders:
        return GalleryLocalizations.of(context).demoRangeSlidersTitle;
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    Widget sliders;
    switch (type) {
      case SlidersDemoType.sliders:
        sliders = _Sliders();
        break;
      case SlidersDemoType.rangeSliders:
        sliders = _RangeSliders();
        break;
    }
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(_title(context)),
      ),
      body: Theme(
        // Set platform to display material sliders only.
        data: Theme.of(context).copyWith(platform: TargetPlatform.android),
        child: sliders,
      ),
    );
  }
}
// BEGIN slidersDemo

Path _downTriangle(double size, Offset thumbCenter, {bool invert = false}) {
  final thumbPath = Path();
  final height = math.sqrt(3.0) / 2.0;
  final centerHeight = size * height / 3.0;
  final halfSize = size / 2.0;
  final sign = invert ? -1.0 : 1.0;
  thumbPath.moveTo(
      thumbCenter.dx - halfSize, thumbCenter.dy + sign * centerHeight);
  thumbPath.lineTo(thumbCenter.dx, thumbCenter.dy - 2.0 * sign * centerHeight);
  thumbPath.lineTo(
      thumbCenter.dx + halfSize, thumbCenter.dy + sign * centerHeight);
  thumbPath.close();
  return thumbPath;
}

Path _rightTriangle(double size, Offset thumbCenter, {bool invert = false}) {
  final thumbPath = Path();
  final halfSize = size / 2.0;
  final sign = invert ? -1.0 : 1.0;
  thumbPath.moveTo(thumbCenter.dx + halfSize * sign, thumbCenter.dy);
  thumbPath.lineTo(thumbCenter.dx - halfSize * sign, thumbCenter.dy - size);
  thumbPath.lineTo(thumbCenter.dx - halfSize * sign, thumbCenter.dy + size);
  thumbPath.close();
  return thumbPath;
}

Path _upTriangle(double size, Offset thumbCenter) =>
    _downTriangle(size, thumbCenter, invert: true);

Path _leftTriangle(double size, Offset thumbCenter) =>
    _rightTriangle(size, thumbCenter, invert: true);

class _CustomRangeThumbShape extends RangeSliderThumbShape {
  static const double _thumbSize = 4.0;
  static const double _disabledThumbSize = 3.0;

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return isEnabled
        ? const Size.fromRadius(_thumbSize)
        : const Size.fromRadius(_disabledThumbSize);
  }

  static final Animatable<double> sizeTween = Tween<double>(
    begin: _disabledThumbSize,
    end: _thumbSize,
  );

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    @required Animation<double> activationAnimation,
    @required Animation<double> enableAnimation,
    bool isDiscrete = false,
    bool isEnabled = false,
    bool isOnTop,
    @required SliderThemeData sliderTheme,
    TextDirection textDirection,
    Thumb thumb,
  }) {
    final canvas = context.canvas;
    final colorTween = ColorTween(
      begin: sliderTheme.disabledThumbColor,
      end: sliderTheme.thumbColor,
    );

    final size = _thumbSize * sizeTween.evaluate(enableAnimation);
    Path thumbPath;
    switch (textDirection) {
      case TextDirection.rtl:
        switch (thumb) {
          case Thumb.start:
            thumbPath = _rightTriangle(size, center);
            break;
          case Thumb.end:
            thumbPath = _leftTriangle(size, center);
            break;
        }
        break;
      case TextDirection.ltr:
        switch (thumb) {
          case Thumb.start:
            thumbPath = _leftTriangle(size, center);
            break;
          case Thumb.end:
            thumbPath = _rightTriangle(size, center);
            break;
        }
        break;
    }
    canvas.drawPath(
        thumbPath, Paint()..color = colorTween.evaluate(enableAnimation));
  }
}

class _CustomThumbShape extends SliderComponentShape {
  static const double _thumbSize = 4.0;
  static const double _disabledThumbSize = 3.0;

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return isEnabled
        ? const Size.fromRadius(_thumbSize)
        : const Size.fromRadius(_disabledThumbSize);
  }

  static final Animatable<double> sizeTween = Tween<double>(
    begin: _disabledThumbSize,
    end: _thumbSize,
  );

  @override
  void paint(
    PaintingContext context,
    Offset thumbCenter, {
    Animation<double> activationAnimation,
    Animation<double> enableAnimation,
    bool isDiscrete,
    TextPainter labelPainter,
    RenderBox parentBox,
    SliderThemeData sliderTheme,
    TextDirection textDirection,
    double value,
  }) {
    final canvas = context.canvas;
    final colorTween = ColorTween(
      begin: sliderTheme.disabledThumbColor,
      end: sliderTheme.thumbColor,
    );
    final size = _thumbSize * sizeTween.evaluate(enableAnimation);
    final thumbPath = _downTriangle(size, thumbCenter);
    canvas.drawPath(
        thumbPath, Paint()..color = colorTween.evaluate(enableAnimation));
  }
}

class _CustomValueIndicatorShape extends SliderComponentShape {
  static const double _indicatorSize = 4.0;
  static const double _disabledIndicatorSize = 3.0;
  static const double _slideUpHeight = 40.0;

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(isEnabled ? _indicatorSize : _disabledIndicatorSize);
  }

  static final Animatable<double> sizeTween = Tween<double>(
    begin: _disabledIndicatorSize,
    end: _indicatorSize,
  );

  @override
  void paint(
    PaintingContext context,
    Offset thumbCenter, {
    Animation<double> activationAnimation,
    Animation<double> enableAnimation,
    bool isDiscrete,
    TextPainter labelPainter,
    RenderBox parentBox,
    SliderThemeData sliderTheme,
    TextDirection textDirection,
    double value,
  }) {
    final canvas = context.canvas;
    final enableColor = ColorTween(
      begin: sliderTheme.disabledThumbColor,
      end: sliderTheme.valueIndicatorColor,
    );
    final slideUpTween = Tween<double>(
      begin: 0.0,
      end: _slideUpHeight,
    );
    final size = _indicatorSize * sizeTween.evaluate(enableAnimation);
    final slideUpOffset =
        Offset(0.0, -slideUpTween.evaluate(activationAnimation));
    final thumbPath = _upTriangle(size, thumbCenter + slideUpOffset);
    final paintColor = enableColor
        .evaluate(enableAnimation)
        .withAlpha((255.0 * activationAnimation.value).round());
    canvas.drawPath(
      thumbPath,
      Paint()..color = paintColor,
    );
    canvas.drawLine(
        thumbCenter,
        thumbCenter + slideUpOffset,
        Paint()
          ..color = paintColor
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2.0);
    labelPainter.paint(
      canvas,
      thumbCenter +
          slideUpOffset +
          Offset(-labelPainter.width / 2.0, -labelPainter.height - 4.0),
    );
  }
}

class _Sliders extends StatefulWidget {
  @override
  _SlidersState createState() => _SlidersState();
}

class _SlidersState extends State<_Sliders> {
  double _continuousValue = 25.0;
  double _discreteValue = 20.0;
  double _discreteCustomValue = 25.0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Semantics(
                label: GalleryLocalizations.of(context)
                    .demoSlidersEditableNumericalValue,
                child: SizedBox(
                  width: 64,
                  height: 48,
                  child: TextField(
                    textAlign: TextAlign.center,
                    onSubmitted: (value) {
                      final double newValue = double.tryParse(value);
                      if (newValue != null && newValue != _continuousValue) {
                        setState(() {
                          _continuousValue =
                              newValue.clamp(0.0, 100.0) as double;
                        });
                      }
                    },
                    keyboardType: TextInputType.number,
                    controller: TextEditingController(
                      text: _continuousValue.toStringAsFixed(0),
                    ),
                  ),
                ),
              ),
              Slider.adaptive(
                value: _continuousValue,
                min: 0.0,
                max: 100.0,
                onChanged: (value) {
                  setState(() {
                    _continuousValue = value;
                  });
                },
              ),
              Text(GalleryLocalizations.of(context)
                  .demoSlidersContinuousWithEditableNumericalValue),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Slider.adaptive(value: 0.25, onChanged: null),
              Text(GalleryLocalizations.of(context).demoSlidersDisabled),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Slider.adaptive(
                value: _discreteValue,
                min: 0.0,
                max: 200.0,
                divisions: 5,
                label: _discreteValue.round().toString(),
                onChanged: (value) {
                  setState(() {
                    _discreteValue = value;
                  });
                },
              ),
              Text(GalleryLocalizations.of(context).demoSlidersDiscrete),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SliderTheme(
                data: theme.sliderTheme.copyWith(
                  activeTrackColor: Colors.deepPurple,
                  inactiveTrackColor:
                      theme.colorScheme.onSurface.withOpacity(0.5),
                  activeTickMarkColor:
                      theme.colorScheme.onSurface.withOpacity(0.7),
                  inactiveTickMarkColor:
                      theme.colorScheme.surface.withOpacity(0.7),
                  overlayColor: theme.colorScheme.onSurface.withOpacity(0.12),
                  thumbColor: Colors.deepPurple,
                  valueIndicatorColor: Colors.deepPurpleAccent,
                  thumbShape: _CustomThumbShape(),
                  valueIndicatorShape: _CustomValueIndicatorShape(),
                  valueIndicatorTextStyle: theme.accentTextTheme.body2
                      .copyWith(color: theme.colorScheme.onSurface),
                ),
                child: Slider(
                  value: _discreteCustomValue,
                  min: 0.0,
                  max: 200.0,
                  divisions: 5,
                  semanticFormatterCallback: (value) =>
                      value.round().toString(),
                  label: '${_discreteCustomValue.round()}',
                  onChanged: (value) {
                    setState(() {
                      _discreteCustomValue = value;
                    });
                  },
                ),
              ),
              Text(GalleryLocalizations.of(context)
                  .demoSlidersDiscreteWithCustomTheme),
            ],
          ),
        ],
      ),
    );
  }
}

// END

// BEGIN rangeSlidersDemo

class _RangeSliders extends StatefulWidget {
  @override
  _RangeSlidersState createState() => _RangeSlidersState();
}

class _RangeSlidersState extends State<_RangeSliders> {
  RangeValues _continuousValues = const RangeValues(25.0, 75.0);
  RangeValues _discreteValues = const RangeValues(40.0, 120.0);
  RangeValues _discreteCustomValues = const RangeValues(40.0, 160.0);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              RangeSlider(
                values: _continuousValues,
                min: 0.0,
                max: 100.0,
                onChanged: (values) {
                  setState(() {
                    _continuousValues = values;
                  });
                },
              ),
              Text(GalleryLocalizations.of(context).demoSlidersContinuous),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              RangeSlider(
                  values: const RangeValues(0.25, 0.75), onChanged: null),
              Text(GalleryLocalizations.of(context).demoSlidersDisabled),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              RangeSlider(
                values: _discreteValues,
                min: 0.0,
                max: 200.0,
                divisions: 5,
                labels: RangeLabels(
                  _discreteValues.start.round().toString(),
                  _discreteValues.end.round().toString(),
                ),
                onChanged: (values) {
                  setState(() {
                    _discreteValues = values;
                  });
                },
              ),
              Text(GalleryLocalizations.of(context).demoSlidersDiscrete),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SliderTheme(
                data: SliderThemeData(
                  activeTrackColor: Colors.deepPurple,
                  inactiveTrackColor: Colors.black26,
                  activeTickMarkColor: Colors.white70,
                  inactiveTickMarkColor: Colors.black,
                  overlayColor: Colors.black12,
                  thumbColor: Colors.deepPurple,
                  rangeThumbShape: _CustomRangeThumbShape(),
                  showValueIndicator: ShowValueIndicator.never,
                ),
                child: RangeSlider(
                  values: _discreteCustomValues,
                  min: 0.0,
                  max: 200.0,
                  divisions: 5,
                  labels: RangeLabels(
                    _discreteCustomValues.start.round().toString(),
                    _discreteCustomValues.end.round().toString(),
                  ),
                  onChanged: (values) {
                    setState(() {
                      _discreteCustomValues = values;
                    });
                  },
                ),
              ),
              Text(GalleryLocalizations.of(context)
                  .demoSlidersDiscreteWithCustomTheme),
            ],
          ),
        ],
      ),
    );
  }
}

// END
