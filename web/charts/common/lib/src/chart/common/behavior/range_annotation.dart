// Copyright 2018 the Charts project authors. Please see the AUTHORS file
// for details.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:collection' show LinkedHashMap;
import 'dart:math' show pi, Point, Rectangle;

import 'package:meta/meta.dart';

import '../../../common/color.dart' show Color;
import '../../../common/graphics_factory.dart' show GraphicsFactory;
import '../../../common/style/style_factory.dart' show StyleFactory;
import '../../../common/text_element.dart'
    show MaxWidthStrategy, TextDirection, TextElement;
import '../../../common/text_style.dart' show TextStyle;
import '../../cartesian/axis/axis.dart' show Axis, ImmutableAxis;
import '../../cartesian/axis/spec/axis_spec.dart' show TextStyleSpec;
import '../../cartesian/cartesian_chart.dart' show CartesianChart;
import '../../layout/layout_view.dart'
    show
        LayoutPosition,
        LayoutView,
        LayoutViewConfig,
        LayoutViewPaintOrder,
        LayoutViewPositionOrder,
        ViewMeasuredSizes;
import '../base_chart.dart' show BaseChart, LifecycleListener;
import '../chart_canvas.dart' show ChartCanvas, getAnimatedColor;
import '../processed_series.dart' show MutableSeries;
import 'chart_behavior.dart' show ChartBehavior;

/// Chart behavior that annotates domain ranges with a solid fill color.
///
/// The annotations will be drawn underneath series data and chart axes.
///
/// This is typically used for line charts to call out sections of the data
/// range.
///
/// TODO: Support labels.
class RangeAnnotation<D> implements ChartBehavior<D> {
  static const _defaultLabelAnchor = AnnotationLabelAnchor.end;
  static const _defaultLabelDirection = AnnotationLabelDirection.auto;
  static const _defaultLabelPosition = AnnotationLabelPosition.auto;
  static const _defaultLabelPadding = 5;
  static final _defaultLabelStyle =
      new TextStyleSpec(fontSize: 12, color: Color.black);
  static const _defaultStrokeWidthPx = 2.0;

  /// List of annotations to render on the chart.
  final List<AnnotationSegment> annotations;

  /// Default color for annotations.
  final Color defaultColor;

  /// Configures where to anchor annotation label text.
  final AnnotationLabelAnchor defaultLabelAnchor;

  /// Direction of label text on the annotations.
  final AnnotationLabelDirection defaultLabelDirection;

  /// Configures where to place labels relative to the annotation.
  final AnnotationLabelPosition defaultLabelPosition;

  /// Configures the style of label text.
  final TextStyleSpec defaultLabelStyleSpec;

  /// Configures the stroke width for line annotations.
  final double defaultStrokeWidthPx;

  /// Whether or not the range of the axis should be extended to include the
  /// annotation start and end values.
  final bool extendAxis;

  /// Space before and after label text.
  final int labelPadding;

  CartesianChart<D> _chart;

  _RangeAnnotationLayoutView _view;

  LifecycleListener<D> _lifecycleListener;

  /// Store a map of data drawn on the chart, mapped by series name.
  ///
  /// [LinkedHashMap] is used to render the series on the canvas in the same
  /// order as the data was given to the chart.
  final _annotationMap = LinkedHashMap<String, _AnimatedAnnotation<D>>();

  // Store a list of annotations that exist in the current annotation list.
  //
  // This list will be used to remove any [_AnimatedAnnotation] that were
  // rendered in previous draw cycles, but no longer have a corresponding datum
  // in the new data.
  final _currentKeys = <String>[];

  RangeAnnotation(this.annotations,
      {Color defaultColor,
      AnnotationLabelAnchor defaultLabelAnchor,
      AnnotationLabelDirection defaultLabelDirection,
      AnnotationLabelPosition defaultLabelPosition,
      TextStyleSpec defaultLabelStyleSpec,
      bool extendAxis,
      int labelPadding,
      double defaultStrokeWidthPx})
      : defaultColor = StyleFactory.style.rangeAnnotationColor,
        defaultLabelAnchor = defaultLabelAnchor ?? _defaultLabelAnchor,
        defaultLabelDirection = defaultLabelDirection ?? _defaultLabelDirection,
        defaultLabelPosition = defaultLabelPosition ?? _defaultLabelPosition,
        defaultLabelStyleSpec = defaultLabelStyleSpec ?? _defaultLabelStyle,
        extendAxis = extendAxis ?? true,
        labelPadding = labelPadding ?? _defaultLabelPadding,
        defaultStrokeWidthPx = defaultStrokeWidthPx ?? _defaultStrokeWidthPx {
    _lifecycleListener = new LifecycleListener<D>(
        onPostprocess: _updateAxisRange, onAxisConfigured: _updateViewData);
  }

  @override
  void attachTo(BaseChart<D> chart) {
    if (!(chart is CartesianChart)) {
      throw new ArgumentError(
          'RangeAnnotation can only be attached to a CartesianChart');
    }

    _chart = chart;

    _view = new _RangeAnnotationLayoutView<D>(
        defaultColor: defaultColor, labelPadding: labelPadding, chart: chart);

    chart.addView(_view);

    chart.addLifecycleListener(_lifecycleListener);
  }

  @override
  void removeFrom(BaseChart chart) {
    chart.removeView(_view);
    chart.removeLifecycleListener(_lifecycleListener);

    _view.chart = null;
  }

  void _updateAxisRange(List<MutableSeries<D>> seriesList) {
    // Extend the axis range if enabled.
    if (extendAxis) {
      final domainAxis = _chart.domainAxis;

      annotations.forEach((AnnotationSegment annotation) {
        Axis axis;

        switch (annotation.axisType) {
          case RangeAnnotationAxisType.domain:
            axis = domainAxis;
            break;

          case RangeAnnotationAxisType.measure:
            // We expect an empty axisId to get us the primary measure axis.
            axis = _chart.getMeasureAxis(axisId: annotation.axisId);
            break;
        }

        if (annotation is RangeAnnotationSegment) {
          axis.addDomainValue(annotation.startValue);
          axis.addDomainValue(annotation.endValue);
        } else if (annotation is LineAnnotationSegment) {
          axis.addDomainValue(annotation.value);
        }
      });
    }
  }

  void _updateViewData() {
    _currentKeys.clear();

    annotations.forEach((AnnotationSegment annotation) {
      Axis axis;

      switch (annotation.axisType) {
        case RangeAnnotationAxisType.domain:
          axis = _chart.domainAxis;
          break;

        case RangeAnnotationAxisType.measure:
          // We expect an empty axisId to get us the primary measure axis.
          axis = _chart.getMeasureAxis(axisId: annotation.axisId);
          break;
      }

      final key = annotation.key;

      final color = annotation.color ?? defaultColor;

      final startLabel = annotation.startLabel;
      final endLabel = annotation.endLabel;
      final labelAnchor = annotation.labelAnchor ?? defaultLabelAnchor;
      var labelDirection = annotation.labelDirection ?? defaultLabelDirection;

      if (labelDirection == AnnotationLabelDirection.auto) {
        switch (annotation.axisType) {
          case RangeAnnotationAxisType.domain:
            labelDirection = AnnotationLabelDirection.vertical;
            break;

          case RangeAnnotationAxisType.measure:
            labelDirection = AnnotationLabelDirection.horizontal;
            break;
        }
      }

      final labelPosition = annotation.labelPosition ?? defaultLabelPosition;
      final labelStyleSpec = annotation.labelStyleSpec ?? defaultLabelStyleSpec;

      // Add line annotation settings.
      final dashPattern =
          annotation is LineAnnotationSegment ? annotation.dashPattern : null;
      final strokeWidthPx = annotation is LineAnnotationSegment
          ? annotation.strokeWidthPx ?? defaultLabelStyleSpec
          : 0.0;

      final isRange = annotation is RangeAnnotationSegment;

      // The values can match the data type of the domain (D) or measure axis
      // (num).
      dynamic startValue;
      dynamic endValue;

      if (annotation is RangeAnnotationSegment) {
        startValue = annotation.startValue;
        endValue = annotation.endValue;
      } else if (annotation is LineAnnotationSegment) {
        startValue = annotation.value;
        endValue = annotation.value;
      }

      final annotationDatum =
          _getAnnotationDatum(startValue, endValue, axis, annotation.axisType);

      // If we already have a animatingAnnotation for that index, use it.
      _AnimatedAnnotation<D> animatingAnnotation;
      if (_annotationMap.containsKey(key)) {
        animatingAnnotation = _annotationMap[key];
      } else {
        // Create a new annotation, positioned at the start and end values.
        animatingAnnotation = new _AnimatedAnnotation<D>(key: key)
          ..setNewTarget(new _AnnotationElement<D>()
            ..annotation = annotationDatum
            ..color = color
            ..dashPattern = dashPattern
            ..startLabel = startLabel
            ..endLabel = endLabel
            ..isRange = isRange
            ..labelAnchor = labelAnchor
            ..labelDirection = labelDirection
            ..labelPosition = labelPosition
            ..labelStyleSpec = labelStyleSpec
            ..strokeWidthPx = strokeWidthPx);

        _annotationMap[key] = animatingAnnotation;
      }

      // Update the set of annotations that still exist in the series data.
      _currentKeys.add(key);

      // Get the annotation element we are going to setup.
      final annotationElement = new _AnnotationElement<D>()
        ..annotation = annotationDatum
        ..color = color
        ..dashPattern = dashPattern
        ..startLabel = startLabel
        ..endLabel = endLabel
        ..isRange = isRange
        ..labelAnchor = labelAnchor
        ..labelDirection = labelDirection
        ..labelPosition = labelPosition
        ..labelStyleSpec = labelStyleSpec
        ..strokeWidthPx = strokeWidthPx;

      animatingAnnotation.setNewTarget(annotationElement);
    });

    // Animate out annotations that don't exist anymore.
    _annotationMap.forEach((String key, _AnimatedAnnotation<D> annotation) {
      if (_currentKeys.contains(annotation.key) != true) {
        annotation.animateOut();
      }
    });

    _view.annotationMap = _annotationMap;
  }

  /// Generates a datum that describes an annotation.
  ///
  /// [startValue] and [endValue] are dynamic because they can be different data
  /// types for domain and measure axes, e.g. DateTime and num for a TimeSeries
  /// chart.
  _DatumAnnotation _getAnnotationDatum(dynamic startValue, dynamic endValue,
      ImmutableAxis axis, RangeAnnotationAxisType axisType) {
    // Remove floating point rounding errors by rounding to 2 decimal places of
    // precision. The difference in the canvas is negligible.
    final startPosition = (axis.getLocation(startValue) * 100).round() / 100;
    final endPosition = (axis.getLocation(endValue) * 100).round() / 100;

    return new _DatumAnnotation(
        startPosition: startPosition,
        endPosition: endPosition,
        axisType: axisType);
  }

  @override
  String get role => 'RangeAnnotation';
}

class _RangeAnnotationLayoutView<D> extends LayoutView {
  final LayoutViewConfig layoutConfig;

  final Color defaultColor;

  final int labelPadding;

  CartesianChart<D> chart;

  bool get isRtl => chart.context.isRtl;

  Rectangle<int> _drawAreaBounds;

  Rectangle<int> get drawBounds => _drawAreaBounds;

  GraphicsFactory _graphicsFactory;

  /// Store a map of series drawn on the chart, mapped by series name.
  ///
  /// [LinkedHashMap] is used to render the series on the canvas in the same
  /// order as the data was given to the chart.
  LinkedHashMap<String, _AnimatedAnnotation<D>> _annotationMap;

  _RangeAnnotationLayoutView({
    @required this.defaultColor,
    @required this.labelPadding,
    @required this.chart,
  }) : this.layoutConfig = new LayoutViewConfig(
            paintOrder: LayoutViewPaintOrder.rangeAnnotation,
            position: LayoutPosition.DrawArea,
            positionOrder: LayoutViewPositionOrder.drawArea);

  set annotationMap(LinkedHashMap<String, _AnimatedAnnotation<D>> value) {
    _annotationMap = value;
  }

  @override
  GraphicsFactory get graphicsFactory => _graphicsFactory;

  @override
  set graphicsFactory(GraphicsFactory value) {
    _graphicsFactory = value;
  }

  @override
  ViewMeasuredSizes measure(int maxWidth, int maxHeight) {
    return null;
  }

  @override
  void layout(Rectangle<int> componentBounds, Rectangle<int> drawAreaBounds) {
    this._drawAreaBounds = drawAreaBounds;
  }

  @override
  void paint(ChartCanvas canvas, double animationPercent) {
    if (_annotationMap == null) {
      return;
    }

    // Clean up the annotations that no longer exist.
    if (animationPercent == 1.0) {
      final keysToRemove = <String>[];

      _annotationMap.forEach((String key, _AnimatedAnnotation<D> annotation) {
        if (annotation.animatingOut) {
          keysToRemove.add(key);
        }
      });

      keysToRemove.forEach((String key) => _annotationMap.remove(key));
    }

    _annotationMap.forEach((String key, _AnimatedAnnotation<D> annotation) {
      final annotationElement =
          annotation.getCurrentAnnotation(animationPercent);

      // Calculate the bounds of a range annotation.
      //
      // This will still be used for line annotations to compute the position of
      // labels. We always expect those to end up outside, since the bounds will
      // have zero width or  height.
      final bounds = _getAnnotationBounds(annotationElement);

      if (annotationElement.isRange) {
        // Draw the annotation.
        canvas.drawRect(bounds, fill: annotationElement.color);
      } else {
        // Calculate the points for a line annotation.
        final points = _getLineAnnotationPoints(annotationElement);

        // Draw the annotation.
        canvas.drawLine(
            dashPattern: annotationElement.dashPattern,
            points: points,
            stroke: annotationElement.color,
            strokeWidthPx: annotationElement.strokeWidthPx);
      }

      // Create [TextStyle] from [TextStyleSpec] to be used by all the elements.
      // The [GraphicsFactory] is needed so it can't be created earlier.
      final labelStyle =
          _getTextStyle(graphicsFactory, annotationElement.labelStyleSpec);

      final rotation =
          annotationElement.labelDirection == AnnotationLabelDirection.vertical
              ? -pi / 2
              : 0.0;

      // Draw a start label if one is defined.
      if (annotationElement.startLabel != null) {
        final labelElement =
            graphicsFactory.createTextElement(annotationElement.startLabel)
              ..maxWidthStrategy = MaxWidthStrategy.ellipsize
              ..textStyle = labelStyle;

        // Measure the label max width once if either type of label is defined.
        labelElement.maxWidth =
            _getLabelMaxWidth(bounds, annotationElement, labelElement);

        final labelPoint =
            _getStartLabelPosition(bounds, annotationElement, labelElement);

        if (labelPoint != null) {
          canvas.drawText(labelElement, labelPoint.x, labelPoint.y,
              rotation: rotation);
        }
      }

      // Draw an end label if one is defined.
      if (annotationElement.endLabel != null) {
        final labelElement =
            graphicsFactory.createTextElement(annotationElement.endLabel)
              ..maxWidthStrategy = MaxWidthStrategy.ellipsize
              ..textStyle = labelStyle;

        // Measure the label max width once if either type of label is defined.
        labelElement.maxWidth =
            _getLabelMaxWidth(bounds, annotationElement, labelElement);

        final labelPoint =
            _getEndLabelPosition(bounds, annotationElement, labelElement);

        if (labelPoint != null) {
          canvas.drawText(labelElement, labelPoint.x, labelPoint.y,
              rotation: rotation);
        }
      }
    });
  }

  /// Calculates the bounds of the annotation.
  Rectangle<num> _getAnnotationBounds(_AnnotationElement<D> annotationElement) {
    Rectangle<num> bounds;

    switch (annotationElement.annotation.axisType) {
      case RangeAnnotationAxisType.domain:
        bounds = new Rectangle<num>(
            annotationElement.annotation.startPosition,
            _drawAreaBounds.top,
            annotationElement.annotation.endPosition -
                annotationElement.annotation.startPosition,
            _drawAreaBounds.height);
        break;

      case RangeAnnotationAxisType.measure:
        bounds = new Rectangle<num>(
            _drawAreaBounds.left,
            annotationElement.annotation.endPosition,
            _drawAreaBounds.width,
            annotationElement.annotation.startPosition -
                annotationElement.annotation.endPosition);
        break;
    }

    return bounds;
  }

  /// Calculates the bounds of the annotation.
  List<Point> _getLineAnnotationPoints(
      _AnnotationElement<D> annotationElement) {
    final points = <Point>[];

    switch (annotationElement.annotation.axisType) {
      case RangeAnnotationAxisType.domain:
        points.add(new Point<num>(
            annotationElement.annotation.startPosition, _drawAreaBounds.top));
        points.add(new Point<num>(
            annotationElement.annotation.endPosition, _drawAreaBounds.bottom));
        break;

      case RangeAnnotationAxisType.measure:
        points.add(new Point<num>(
            _drawAreaBounds.left, annotationElement.annotation.startPosition));
        points.add(new Point<num>(
            _drawAreaBounds.right, annotationElement.annotation.endPosition));
        break;
    }

    return points;
  }

  /// Measures the max label width of the annotation.
  int _getLabelMaxWidth(Rectangle<num> bounds,
      _AnnotationElement<D> annotationElement, TextElement labelElement) {
    num maxWidth = 0;

    final calculatedLabelPosition =
        _resolveAutoLabelPosition(bounds, annotationElement, labelElement);

    if (annotationElement.labelPosition == AnnotationLabelPosition.margin &&
        annotationElement.annotation.axisType ==
            RangeAnnotationAxisType.measure) {
      switch (annotationElement.annotation.axisType) {
        case RangeAnnotationAxisType.domain:
          break;

        case RangeAnnotationAxisType.measure:
          switch (annotationElement.labelAnchor) {
            case AnnotationLabelAnchor.start:
              maxWidth = chart.marginLeft - labelPadding;
              break;

            case AnnotationLabelAnchor.end:
              maxWidth = chart.marginRight - labelPadding;
              break;

            case AnnotationLabelAnchor.middle:
              break;
          }
          break;
      }
    } else {
      if (calculatedLabelPosition == AnnotationLabelPosition.outside) {
        maxWidth = annotationElement.labelDirection ==
                AnnotationLabelDirection.horizontal
            ? drawBounds.width
            : drawBounds.height;
      } else {
        maxWidth = annotationElement.labelDirection ==
                AnnotationLabelDirection.horizontal
            ? bounds.width
            : bounds.height;
      }
    }

    return (maxWidth).round();
  }

  /// Gets the resolved location for a start label element.
  Point<int> _getStartLabelPosition(Rectangle<num> bounds,
      _AnnotationElement<D> annotationElement, TextElement labelElement) {
    return _getLabelPosition(true, bounds, annotationElement, labelElement);
  }

  /// Gets the resolved location for an end label element.
  Point<int> _getEndLabelPosition(Rectangle<num> bounds,
      _AnnotationElement<D> annotationElement, TextElement labelElement) {
    return _getLabelPosition(false, bounds, annotationElement, labelElement);
  }

  /// Gets the resolved location for a label element.
  Point<int> _getLabelPosition(bool isStartLabel, Rectangle<num> bounds,
      _AnnotationElement<D> annotationElement, TextElement labelElement) {
    switch (annotationElement.annotation.axisType) {
      case RangeAnnotationAxisType.domain:
        return _getDomainLabelPosition(
            isStartLabel, bounds, annotationElement, labelElement);
        break;

      case RangeAnnotationAxisType.measure:
        return _getMeasureLabelPosition(
            isStartLabel, bounds, annotationElement, labelElement);
        break;
    }
    return null;
  }

  /// Gets the resolved location for a domain annotation label element.
  Point<int> _getDomainLabelPosition(bool isStartLabel, Rectangle<num> bounds,
      _AnnotationElement<D> annotationElement, TextElement labelElement) {
    if (annotationElement.labelDirection == AnnotationLabelDirection.vertical) {
      return _getDomainLabelPositionVertical(
          isStartLabel, bounds, annotationElement, labelElement);
    } else {
      return _getDomainLabelPositionHorizontal(
          isStartLabel, bounds, annotationElement, labelElement);
    }
  }

  /// Gets the resolved location for a horizontal domain annotation label
  /// element.
  Point<int> _getDomainLabelPositionHorizontal(
      bool isStartLabel,
      Rectangle<num> bounds,
      _AnnotationElement<D> annotationElement,
      TextElement labelElement) {
    num labelX = 0;
    num labelY = 0;

    final calculatedLabelPosition =
        _resolveAutoLabelPosition(bounds, annotationElement, labelElement);

    switch (annotationElement.labelAnchor) {
      case AnnotationLabelAnchor.middle:
        labelY = bounds.top +
            bounds.height / 2 -
            labelElement.measurement.verticalSliceWidth / 2 -
            labelPadding;
        break;

      case AnnotationLabelAnchor.end:
        if (annotationElement.labelPosition == AnnotationLabelPosition.margin) {
          labelY = bounds.top -
              labelElement.measurement.verticalSliceWidth -
              labelPadding;
        } else {
          labelY = bounds.top + labelPadding;
        }
        break;

      case AnnotationLabelAnchor.start:
        if (annotationElement.labelPosition == AnnotationLabelPosition.margin) {
          labelY = bounds.bottom + labelPadding;
        } else {
          labelY = bounds.bottom -
              labelElement.measurement.verticalSliceWidth -
              labelPadding;
        }
        break;
    }

    switch (calculatedLabelPosition) {
      case AnnotationLabelPosition.margin:
      case AnnotationLabelPosition.auto:
        throw new ArgumentError(_unresolvedAutoMessage);
        break;

      case AnnotationLabelPosition.outside:
        if (isStartLabel) {
          labelX = bounds.left -
              labelElement.measurement.horizontalSliceWidth -
              labelPadding;
        } else {
          labelX = bounds.right + labelPadding;
        }

        labelElement.textDirection =
            isRtl ? TextDirection.rtl : TextDirection.ltr;
        break;

      case AnnotationLabelPosition.inside:
        if (isStartLabel) {
          labelX = bounds.left + labelPadding;
        } else {
          labelX = bounds.right -
              labelElement.measurement.horizontalSliceWidth -
              labelPadding;
        }

        labelElement.textDirection =
            isRtl ? TextDirection.rtl : TextDirection.ltr;
        break;
    }

    return new Point<int>(labelX.round(), labelY.round());
  }

  /// Gets the resolved location for a vertical domain annotation label element.
  Point<int> _getDomainLabelPositionVertical(
      bool isStartLabel,
      Rectangle<num> bounds,
      _AnnotationElement<D> annotationElement,
      TextElement labelElement) {
    num labelX = 0;
    num labelY = 0;

    final calculatedLabelPosition =
        _resolveAutoLabelPosition(bounds, annotationElement, labelElement);

    switch (annotationElement.labelAnchor) {
      case AnnotationLabelAnchor.middle:
        labelY = bounds.top +
            bounds.height / 2 +
            labelElement.measurement.horizontalSliceWidth / 2 +
            labelPadding;
        break;

      case AnnotationLabelAnchor.end:
        if (annotationElement.labelPosition == AnnotationLabelPosition.margin) {
          labelY = bounds.top +
              labelElement.measurement.horizontalSliceWidth +
              labelPadding;
        } else {
          labelY = bounds.top +
              labelElement.measurement.horizontalSliceWidth +
              labelPadding;
        }
        break;

      case AnnotationLabelAnchor.start:
        if (annotationElement.labelPosition == AnnotationLabelPosition.margin) {
          labelY = bounds.bottom + labelPadding;
        } else {
          labelY = bounds.bottom -
              labelElement.measurement.horizontalSliceWidth -
              labelPadding;
        }
        break;
    }

    switch (calculatedLabelPosition) {
      case AnnotationLabelPosition.margin:
      case AnnotationLabelPosition.auto:
        throw new ArgumentError(_unresolvedAutoMessage);
        break;

      case AnnotationLabelPosition.outside:
        if (isStartLabel) {
          labelX = bounds.left -
              labelElement.measurement.verticalSliceWidth -
              labelPadding;
        } else {
          labelX = bounds.right + labelPadding;
        }

        labelElement.textDirection =
            isRtl ? TextDirection.rtl : TextDirection.ltr;
        break;

      case AnnotationLabelPosition.inside:
        if (isStartLabel) {
          labelX = bounds.left + labelPadding;
        } else {
          labelX = bounds.right -
              labelElement.measurement.verticalSliceWidth -
              labelPadding;
        }

        labelElement.textDirection =
            isRtl ? TextDirection.rtl : TextDirection.ltr;
        break;
    }

    return new Point<int>(labelX.round(), labelY.round());
  }

  /// Gets the resolved location for a measure annotation label element.
  Point<int> _getMeasureLabelPosition(bool isStartLabel, Rectangle<num> bounds,
      _AnnotationElement<D> annotationElement, TextElement labelElement) {
    if (annotationElement.labelDirection == AnnotationLabelDirection.vertical) {
      return _getMeasureLabelPositionVertical(
          isStartLabel, bounds, annotationElement, labelElement);
    } else {
      return _getMeasureLabelPositionHorizontal(
          isStartLabel, bounds, annotationElement, labelElement);
    }
  }

  /// Gets the resolved location for a horizontal measure annotation label
  /// element.
  Point<int> _getMeasureLabelPositionHorizontal(
      bool isStartLabel,
      Rectangle<num> bounds,
      _AnnotationElement<D> annotationElement,
      TextElement labelElement) {
    num labelX = 0;
    num labelY = 0;

    final calculatedLabelPosition =
        _resolveAutoLabelPosition(bounds, annotationElement, labelElement);

    switch (annotationElement.labelAnchor) {
      case AnnotationLabelAnchor.middle:
        labelX = bounds.left +
            bounds.width / 2 -
            labelElement.measurement.horizontalSliceWidth / 2;
        labelElement.textDirection =
            isRtl ? TextDirection.rtl : TextDirection.ltr;
        break;

      case AnnotationLabelAnchor.end:
      case AnnotationLabelAnchor.start:
        if (annotationElement.labelPosition == AnnotationLabelPosition.margin) {
          final alignLeft = isRtl
              ? (annotationElement.labelAnchor == AnnotationLabelAnchor.end)
              : (annotationElement.labelAnchor == AnnotationLabelAnchor.start);

          if (alignLeft) {
            labelX = bounds.left - labelPadding;
            labelElement.textDirection = TextDirection.rtl;
          } else {
            labelX = bounds.right + labelPadding;
            labelElement.textDirection = TextDirection.ltr;
          }
        } else {
          final alignLeft = isRtl
              ? (annotationElement.labelAnchor == AnnotationLabelAnchor.end)
              : (annotationElement.labelAnchor == AnnotationLabelAnchor.start);

          if (alignLeft) {
            labelX = bounds.left + labelPadding;
            labelElement.textDirection = TextDirection.ltr;
          } else {
            labelX = bounds.right - labelPadding;
            labelElement.textDirection = TextDirection.rtl;
          }
        }
        break;
    }

    switch (calculatedLabelPosition) {
      case AnnotationLabelPosition.margin:
      case AnnotationLabelPosition.auto:
        throw new ArgumentError(_unresolvedAutoMessage);
        break;

      case AnnotationLabelPosition.outside:
        if (isStartLabel) {
          labelY = bounds.bottom + labelPadding;
        } else {
          labelY = bounds.top -
              labelElement.measurement.verticalSliceWidth -
              labelPadding;
        }
        break;

      case AnnotationLabelPosition.inside:
        if (isStartLabel) {
          labelY = bounds.bottom -
              labelElement.measurement.verticalSliceWidth -
              labelPadding;
        } else {
          labelY = bounds.top + labelPadding;
        }
        break;
    }

    return new Point<int>(labelX.round(), labelY.round());
  }

  /// Gets the resolved location for a vertical measure annotation label
  /// element.
  Point<int> _getMeasureLabelPositionVertical(
      bool isStartLabel,
      Rectangle<num> bounds,
      _AnnotationElement<D> annotationElement,
      TextElement labelElement) {
    num labelX = 0;
    num labelY = 0;

    final calculatedLabelPosition =
        _resolveAutoLabelPosition(bounds, annotationElement, labelElement);

    switch (annotationElement.labelAnchor) {
      case AnnotationLabelAnchor.middle:
        labelX = bounds.left +
            bounds.width / 2 -
            labelElement.measurement.verticalSliceWidth / 2;
        labelElement.textDirection =
            isRtl ? TextDirection.rtl : TextDirection.ltr;
        break;

      case AnnotationLabelAnchor.end:
      case AnnotationLabelAnchor.start:
        if (annotationElement.labelPosition == AnnotationLabelPosition.margin) {
          final alignLeft = isRtl
              ? (annotationElement.labelAnchor == AnnotationLabelAnchor.end)
              : (annotationElement.labelAnchor == AnnotationLabelAnchor.start);

          if (alignLeft) {
            labelX = bounds.left -
                labelElement.measurement.verticalSliceWidth -
                labelPadding;
            labelElement.textDirection = TextDirection.ltr;
          } else {
            labelX = bounds.right + labelPadding;
            labelElement.textDirection = TextDirection.ltr;
          }
        } else {
          final alignLeft = isRtl
              ? (annotationElement.labelAnchor == AnnotationLabelAnchor.end)
              : (annotationElement.labelAnchor == AnnotationLabelAnchor.start);

          if (alignLeft) {
            labelX = bounds.left + labelPadding;
            labelElement.textDirection = TextDirection.ltr;
          } else {
            labelX = bounds.right -
                labelElement.measurement.verticalSliceWidth -
                labelPadding;
            labelElement.textDirection = TextDirection.ltr;
          }
        }
        break;
    }

    switch (calculatedLabelPosition) {
      case AnnotationLabelPosition.margin:
      case AnnotationLabelPosition.auto:
        throw new ArgumentError(_unresolvedAutoMessage);
        break;

      case AnnotationLabelPosition.outside:
        if (isStartLabel) {
          labelY = bounds.bottom +
              labelElement.measurement.horizontalSliceWidth +
              labelPadding;
        } else {
          labelY = bounds.top - labelPadding;
        }
        break;

      case AnnotationLabelPosition.inside:
        if (isStartLabel) {
          labelY = bounds.bottom - labelPadding;
        } else {
          labelY = bounds.top +
              labelElement.measurement.horizontalSliceWidth +
              labelPadding;
        }
        break;
    }

    return new Point<int>(labelX.round(), labelY.round());
  }

  /// Resolves [AnnotationLabelPosition.auto] configuration for an annotation
  /// into an inside or outside position, depending on the size of the
  /// annotation and the chart draw area.
  AnnotationLabelPosition _resolveAutoLabelPosition(Rectangle<num> bounds,
      _AnnotationElement<D> annotationElement, TextElement labelElement) {
    var calculatedLabelPosition = annotationElement.labelPosition;
    if (calculatedLabelPosition == AnnotationLabelPosition.auto ||
        calculatedLabelPosition == AnnotationLabelPosition.margin) {
      final isDomain = annotationElement.annotation.axisType ==
          RangeAnnotationAxisType.domain;

      final annotationBoundsSize = isDomain ? bounds.width : bounds.height;

      final drawBoundsSize = isDomain ? drawBounds.width : drawBounds.height;

      final isVertical =
          annotationElement.labelDirection == AnnotationLabelDirection.vertical;

      final labelSize = isDomain && isVertical || !isDomain && !isVertical
          ? labelElement.measurement.verticalSliceWidth
          : labelElement.measurement.horizontalSliceWidth;

      // Get space available inside and outside the annotation.
      final totalPadding = labelPadding * 2;
      final insideBarWidth = annotationBoundsSize - totalPadding;
      final outsideBarWidth =
          drawBoundsSize - annotationBoundsSize - totalPadding;

      // A label fits if the space inside the annotation is >= outside
      // annotation or if the length of the text fits and the space. This is
      // because if the annotation has more space than the outside, it makes
      // more sense to place the label inside the annotation, even if the
      // entire label does not fit.
      calculatedLabelPosition =
          (insideBarWidth >= outsideBarWidth || labelSize < insideBarWidth)
              ? AnnotationLabelPosition.inside
              : AnnotationLabelPosition.outside;
    }

    return calculatedLabelPosition;
  }

  @override
  Rectangle<int> get componentBounds => this._drawAreaBounds;

  @override
  bool get isSeriesRenderer => false;

  // Helper function that converts [TextStyleSpec] to [TextStyle].
  TextStyle _getTextStyle(
      GraphicsFactory graphicsFactory, TextStyleSpec labelSpec) {
    return graphicsFactory.createTextPaint()
      ..color = labelSpec?.color ?? Color.black
      ..fontFamily = labelSpec?.fontFamily
      ..fontSize = labelSpec?.fontSize ?? 12;
  }
}

class _DatumAnnotation {
  final double startPosition;
  final double endPosition;
  final RangeAnnotationAxisType axisType;

  _DatumAnnotation({this.startPosition, this.endPosition, this.axisType});

  factory _DatumAnnotation.from(_DatumAnnotation other,
      [double startPosition, double endPosition]) {
    return new _DatumAnnotation(
        startPosition: startPosition ?? other.startPosition,
        endPosition: endPosition ?? other.endPosition,
        axisType: other.axisType);
  }
}

class _AnnotationElement<D> {
  _DatumAnnotation annotation;
  Color color;
  String startLabel;
  String endLabel;
  bool isRange;
  AnnotationLabelAnchor labelAnchor;
  AnnotationLabelDirection labelDirection;
  AnnotationLabelPosition labelPosition;
  TextStyleSpec labelStyleSpec;
  List<int> dashPattern;
  double strokeWidthPx;

  _AnnotationElement<D> clone() {
    return new _AnnotationElement<D>()
      ..annotation = new _DatumAnnotation.from(annotation)
      ..color = color != null ? new Color.fromOther(color: color) : null
      ..startLabel = this.startLabel
      ..endLabel = this.endLabel
      ..isRange = this.isRange
      ..labelAnchor = this.labelAnchor
      ..labelDirection = this.labelDirection
      ..labelPosition = this.labelPosition
      ..labelStyleSpec = this.labelStyleSpec
      ..dashPattern = dashPattern
      ..strokeWidthPx = this.strokeWidthPx;
  }

  void updateAnimationPercent(_AnnotationElement previous,
      _AnnotationElement target, double animationPercent) {
    final targetAnnotation = target.annotation;
    final previousAnnotation = previous.annotation;

    final startPosition =
        ((targetAnnotation.startPosition - previousAnnotation.startPosition) *
                animationPercent) +
            previousAnnotation.startPosition;

    final endPosition =
        ((targetAnnotation.endPosition - previousAnnotation.endPosition) *
                animationPercent) +
            previousAnnotation.endPosition;

    annotation =
        new _DatumAnnotation.from(targetAnnotation, startPosition, endPosition);

    color = getAnimatedColor(previous.color, target.color, animationPercent);

    strokeWidthPx =
        (((target.strokeWidthPx - previous.strokeWidthPx) * animationPercent) +
            previous.strokeWidthPx);
  }
}

class _AnimatedAnnotation<D> {
  final String key;

  _AnnotationElement<D> _previousAnnotation;
  _AnnotationElement<D> _targetAnnotation;
  _AnnotationElement<D> _currentAnnotation;

  // Flag indicating whether this annotation is being animated out of the chart.
  bool animatingOut = false;

  _AnimatedAnnotation({@required this.key});

  /// Animates an annotation that was removed from the list out of the view.
  ///
  /// This should be called in place of "setNewTarget" for annotations have been
  /// removed from the list.
  /// TODO: Needed?
  void animateOut() {
    final newTarget = _currentAnnotation.clone();

    setNewTarget(newTarget);
    animatingOut = true;
  }

  void setNewTarget(_AnnotationElement<D> newTarget) {
    animatingOut = false;
    _currentAnnotation ??= newTarget.clone();
    _previousAnnotation = _currentAnnotation.clone();
    _targetAnnotation = newTarget;
  }

  _AnnotationElement<D> getCurrentAnnotation(double animationPercent) {
    if (animationPercent == 1.0 || _previousAnnotation == null) {
      _currentAnnotation = _targetAnnotation;
      _previousAnnotation = _targetAnnotation;
      return _currentAnnotation;
    }

    _currentAnnotation.updateAnimationPercent(
        _previousAnnotation, _targetAnnotation, animationPercent);

    return _currentAnnotation;
  }
}

/// Helper class that exposes fewer private internal properties for unit tests.
@visibleForTesting
class RangeAnnotationTester<D> {
  final RangeAnnotation<D> behavior;

  RangeAnnotationTester(this.behavior);

  set graphicsFactory(GraphicsFactory value) {
    behavior._view._graphicsFactory = value;
  }

  mockLayout(Rectangle<int> bounds) {
    behavior._view.layout(bounds, bounds);
  }

  /// Checks if an annotation exists with the given position and color.
  bool doesAnnotationExist(
      {num startPosition,
      num endPosition,
      Color color,
      List<int> dashPattern,
      String startLabel,
      String endLabel,
      AnnotationLabelAnchor labelAnchor,
      AnnotationLabelDirection labelDirection,
      AnnotationLabelPosition labelPosition}) {
    var exists = false;

    behavior._annotationMap.forEach((String key, _AnimatedAnnotation<D> a) {
      final currentAnnotation = a._currentAnnotation;
      final annotation = currentAnnotation.annotation;

      if (annotation.startPosition == startPosition &&
          annotation.endPosition == endPosition &&
          currentAnnotation.color == color &&
          currentAnnotation.startLabel == startLabel &&
          currentAnnotation.endLabel == endLabel &&
          currentAnnotation.labelAnchor == labelAnchor &&
          currentAnnotation.labelDirection == labelDirection &&
          currentAnnotation.labelPosition == labelPosition &&
          (!(currentAnnotation is LineAnnotationSegment) ||
              currentAnnotation.dashPattern == dashPattern)) {
        exists = true;
        return;
      }
    });

    return exists;
  }
}

/// Base class for chart annotations.
abstract class AnnotationSegment<D> {
  final RangeAnnotationAxisType axisType;
  final String axisId;
  final Color color;
  final String startLabel;
  final String endLabel;
  final AnnotationLabelAnchor labelAnchor;
  final AnnotationLabelDirection labelDirection;
  final AnnotationLabelPosition labelPosition;
  final TextStyleSpec labelStyleSpec;

  String get key;

  AnnotationSegment(this.axisType,
      {this.axisId,
      this.color,
      this.startLabel,
      this.endLabel,
      this.labelAnchor,
      this.labelDirection,
      this.labelPosition,
      this.labelStyleSpec});
}

/// Data for a chart range annotation.
class RangeAnnotationSegment<D> extends AnnotationSegment<D> {
  final D startValue;
  final D endValue;

  RangeAnnotationSegment(
      this.startValue, this.endValue, RangeAnnotationAxisType axisType,
      {String axisId,
      Color color,
      String startLabel,
      String endLabel,
      AnnotationLabelAnchor labelAnchor,
      AnnotationLabelDirection labelDirection,
      AnnotationLabelPosition labelPosition,
      TextStyleSpec labelStyleSpec})
      : super(axisType,
            axisId: axisId,
            color: color,
            startLabel: startLabel,
            endLabel: endLabel,
            labelAnchor: labelAnchor,
            labelDirection: labelDirection,
            labelPosition: labelPosition,
            labelStyleSpec: labelStyleSpec);

  @override
  String get key => 'r::${axisType}::${axisId}::${startValue}::${endValue}';
}

/// Data for a chart line annotation.
class LineAnnotationSegment<D> extends AnnotationSegment<D> {
  final D value;
  final List<int> dashPattern;
  final double strokeWidthPx;

  LineAnnotationSegment(this.value, RangeAnnotationAxisType axisType,
      {String axisId,
      Color color,
      String startLabel,
      String endLabel,
      AnnotationLabelAnchor labelAnchor,
      AnnotationLabelDirection labelDirection,
      AnnotationLabelPosition labelPosition,
      TextStyleSpec labelStyleSpec,
      this.dashPattern,
      this.strokeWidthPx = 2.0})
      : super(axisType,
            axisId: axisId,
            color: color,
            startLabel: startLabel,
            endLabel: endLabel,
            labelAnchor: labelAnchor,
            labelDirection: labelDirection,
            labelPosition: labelPosition,
            labelStyleSpec: labelStyleSpec);

  @override
  String get key => 'l::${axisType}::${axisId}::${value}';
}

/// Axis type for an annotation.
enum RangeAnnotationAxisType {
  domain,
  measure,
}

/// Configures where to anchor the label.
enum AnnotationLabelAnchor {
  /// Anchor to the starting side of the annotation range.
  start,

  /// Anchor to the middle of the annotation range.
  middle,

  /// Anchor to the ending side of the annotation range.
  end,
}

/// Direction of the label text on the chart.
enum AnnotationLabelDirection {
  /// Automatically assign a direction based on the [RangeAnnotationAxisType].
  ///
  /// [horizontal] for measure axes, or [vertical] for domain axes.
  auto,

  /// Text flows parallel to the x axis.
  horizontal,

  /// Text flows parallel to the y axis.
  /// TODO[b/112553019]: Implement vertical text rendering of labels.
  vertical,
}

/// Configures where to place the label relative to the annotation.
enum AnnotationLabelPosition {
  /// Automatically try to place the label inside the bar first and place it on
  /// the outside of the space available outside the bar is greater than space
  /// available inside the bar.
  auto,

  /// Always place label on the outside.
  outside,

  /// Always place label on the inside.
  inside,

  /// Place the label outside of the draw area, in the chart margin.
  ///
  /// Labels will be rendered on the opposite side of the chart from the primary
  /// axis. For measure annotations, this means the "end" side, opposite from
  /// the "start" side where the primary measure axis is located.
  ///
  /// This should not be used for measure annotations if the chart has a
  /// secondary measure axis. The annotation behaviors do not perform collision
  /// detection with tick labels.
  margin,
}

const String _unresolvedAutoMessage = 'Unresolved AnnotationLabelPosition.auto';
