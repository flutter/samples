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

import 'dart:math';

import 'package:meta/meta.dart';

import '../../../../common/color.dart' show Color;
import '../../../../common/gesture_listener.dart' show GestureListener;
import '../../../../common/graphics_factory.dart' show GraphicsFactory;
import '../../../../common/math.dart' show clamp;
import '../../../../common/style/style_factory.dart' show StyleFactory;
import '../../../../common/symbol_renderer.dart'
    show RectSymbolRenderer, SymbolRenderer;
import '../../../cartesian/cartesian_chart.dart' show CartesianChart;
import '../../../layout/layout_view.dart'
    show
        LayoutPosition,
        LayoutView,
        LayoutViewConfig,
        LayoutViewPaintOrder,
        LayoutViewPositionOrder,
        ViewMeasuredSizes;
import '../../base_chart.dart' show BaseChart, LifecycleListener;
import '../../behavior/chart_behavior.dart' show ChartBehavior;
import '../../chart_canvas.dart' show ChartCanvas, getAnimatedColor;
import '../selection/selection_trigger.dart' show SelectionTrigger;

/// Chart behavior that adds a slider widget to a chart. When the slider is
/// dropped after drag, it will report its domain position and nearest datum
/// value. This behavior only supports charts that use continuous scales.
///
/// Input event types:
///   tapAndDrag - Mouse/Touch on the handle and drag across the chart.
///   pressHold - Mouse/Touch on the handle and drag across the chart instead of
///       panning.
///   longPressHold - Mouse/Touch for a while on the handle, then drag across
///       the data.
class Slider<D> implements ChartBehavior<D> {
  _SliderLayoutView _view;

  GestureListener _gestureListener;

  LifecycleListener<D> _lifecycleListener;

  SliderEventListener<D> _sliderEventListener;

  /// The order to paint slider on the canvas.
  ///
  /// The smaller number is drawn first.  This value should be relative to
  /// LayoutPaintViewOrder.slider (e.g. LayoutViewPaintOrder.slider + 1).
  int layoutPaintOrder;

  /// Type of input event for the slider.
  ///
  /// Input event types:
  ///   tapAndDrag - Mouse/Touch on the handle and drag across the chart.
  ///   pressHold - Mouse/Touch on the handle and drag across the chart instead
  ///       of panning.
  ///   longPressHold - Mouse/Touch for a while on the handle, then drag across
  ///       the data.
  final SelectionTrigger eventTrigger;

  /// Renderer for the handle. Defaults to a rectangle.
  SymbolRenderer _handleRenderer;

  /// Custom role ID for this slider
  String _roleId;

  /// Whether or not the slider will snap onto the nearest datum (by domain
  /// distance) when dragged.
  final bool snapToDatum;

  /// Color and size styles for the slider.
  SliderStyle _style;

  CartesianChart<D> _chart;

  /// Rendering data for the slider line and handle.
  _AnimatedSlider _sliderHandle;

  bool _delaySelect = false;

  bool _handleDrag = false;

  /// Current location of the slider line.
  Point<int> _domainCenterPoint;

  /// Previous location of the slider line.
  ///
  /// This is used to track changes in the position of the slider caused by new
  /// data being drawn on the chart.
  Point<int> _previousDomainCenterPoint;

  /// Bounding box for the slider drag handle.
  Rectangle<int> _handleBounds;

  /// Domain value of the current slider position.
  ///
  /// This is saved in terms of domain instead of chart position so that we can
  /// adjust the slider automatically when the chart is resized.
  D _domainValue;

  /// Event to fire during the chart's onPostrender event.
  ///
  /// This should be set any time the state of the slider has changed.
  SliderListenerDragState _dragStateToFireOnPostRender;

  /// Constructs a [Slider].
  ///
  /// [eventTrigger] sets the type of gesture handled by the slider.
  ///
  /// [handleRenderer] draws a handle for the slider. Defaults to a rectangle.
  ///
  /// [initialDomainValue] sets the initial position of the slider in domain
  /// units. The default is the center of the chart.
  ///
  /// [onChangeCallback] will be called when the position of the slider
  /// changes during a drag event.
  ///
  /// [roleId] optional custom role ID for the slider. This can be used to allow
  /// multiple [Slider] behaviors on the same chart. Normally, there can only be
  /// one slider (per event trigger type) on a chart. This setting allows for
  /// configuring multiple independent sliders.
  ///
  /// [snapToDatum] configures the slider to snap snap onto the nearest datum
  /// (by domain distance) when dragged. By default, the slider can be
  /// positioned anywhere along the domain axis.
  ///
  /// [style] configures the color and sizing of the slider line and handle.
  ///
  /// [layoutPaintOrder] configures the order in which the behavior should be
  /// painted. This value should be relative to LayoutPaintViewOrder.slider.
  /// (e.g. LayoutViewPaintOrder.slider + 1).
  Slider(
      {this.eventTrigger = SelectionTrigger.tapAndDrag,
      SymbolRenderer handleRenderer,
      D initialDomainValue,
      SliderListenerCallback<D> onChangeCallback,
      String roleId,
      this.snapToDatum = false,
      SliderStyle style,
      this.layoutPaintOrder = LayoutViewPaintOrder.slider}) {
    _handleRenderer = handleRenderer ?? new RectSymbolRenderer();
    _roleId = roleId ?? '';
    _style = style ?? new SliderStyle();

    _domainValue = initialDomainValue;
    if (_domainValue != null) {
      _dragStateToFireOnPostRender = SliderListenerDragState.initial;
    }

    // Setup the appropriate gesture listening.
    switch (this.eventTrigger) {
      case SelectionTrigger.tapAndDrag:
        _gestureListener = new GestureListener(
            onTapTest: _onTapTest,
            onTap: _onSelect,
            onDragStart: _onSelect,
            onDragUpdate: _onSelect,
            onDragEnd: _onDragEnd);
        break;
      case SelectionTrigger.pressHold:
        _gestureListener = new GestureListener(
            onTapTest: _onTapTest,
            onLongPress: _onSelect,
            onDragStart: _onSelect,
            onDragUpdate: _onSelect,
            onDragEnd: _onDragEnd);
        break;
      case SelectionTrigger.longPressHold:
        _gestureListener = new GestureListener(
            onTapTest: _onTapTest,
            onLongPress: _onLongPressSelect,
            onDragStart: _onSelect,
            onDragUpdate: _onSelect,
            onDragEnd: _onDragEnd);
        break;
      default:
        throw new ArgumentError('Slider does not support the event trigger '
            '"${this.eventTrigger}"');
        break;
    }

    // Set up chart draw cycle listeners.
    _lifecycleListener = new LifecycleListener<D>(
      onData: _setInitialDragState,
      onAxisConfigured: _updateViewData,
      onPostrender: _fireChangeEvent,
    );

    // Set up slider event listeners.
    _sliderEventListener =
        new SliderEventListener<D>(onChange: onChangeCallback);
  }

  bool _onTapTest(Point<double> chartPoint) {
    _delaySelect = eventTrigger == SelectionTrigger.longPressHold;
    _handleDrag = _sliderContainsPoint(chartPoint);
    return _handleDrag;
  }

  bool _onLongPressSelect(Point<double> chartPoint) {
    _delaySelect = false;
    return _onSelect(chartPoint);
  }

  bool _onSelect(Point<double> chartPoint, [double ignored]) {
    // Skip events that occur outside the drawArea for any series renderer.
    // If the selection is delayed (waiting for long press), then quit early.
    if (!_handleDrag || _delaySelect) {
      return false;
    }

    // Move the slider line along the domain axis, without adjusting the measure
    // position.
    final positionChanged = _moveSliderToPoint(chartPoint);

    if (positionChanged) {
      _dragStateToFireOnPostRender = SliderListenerDragState.drag;

      _chart.redraw(skipAnimation: true, skipLayout: true);
    }

    return true;
  }

  bool _onDragEnd(Point<double> chartPoint, __, ___) {
    // If the selection is delayed (waiting for long press), then quit early.
    if (_delaySelect) {
      return false;
    }

    _handleDrag = false;

    // If snapToDatum is enabled, use the x position of the nearest datum
    // instead of the mouse point.
    if (snapToDatum) {
      final details = _chart.getNearestDatumDetailPerSeries(chartPoint, true);
      if (details.isNotEmpty && details[0].chartPosition.x != null) {
        // Only trigger an animating draw cycle if we need to move the slider.
        if (_domainValue != details[0].domain) {
          _moveSliderToDomain(details[0].domain);

          // Always fire the end event to notify listeners that the gesture is
          // over.
          _dragStateToFireOnPostRender = SliderListenerDragState.end;

          _chart.redraw(skipAnimation: false, skipLayout: true);
        }
      }
    } else {
      // Move the slider line along the domain axis, without adjusting the
      // measure position.
      _moveSliderToPoint(chartPoint);

      // Always fire the end event to notify listeners that the gesture is
      // over.
      _dragStateToFireOnPostRender = SliderListenerDragState.end;

      _chart.redraw(skipAnimation: true, skipLayout: true);
    }

    return false;
  }

  bool _sliderContainsPoint(Point<double> chartPoint) {
    return _handleBounds.containsPoint(chartPoint);
  }

  /// Sets the drag state to "initial" when new data is drawn on the chart.
  void _setInitialDragState(_) {
    _dragStateToFireOnPostRender = SliderListenerDragState.initial;
  }

  void _updateViewData() {
    _sliderHandle ??= new _AnimatedSlider();

    // If not set in the constructor, initial position for the handle is the
    // center of the draw area.
    _domainValue ??= _chart.domainAxis
        .getDomain(_view.drawBounds.left + _view.drawBounds.width / 2)
        .round();

    // Possibly move the slider, if the axis values have changed since the last
    // chart draw.
    _moveSliderToDomain(_domainValue);

    // Move the handle to the current event position.
    final element = new _SliderElement()
      ..domainCenterPoint =
          new Point<int>(_domainCenterPoint.x, _domainCenterPoint.y)
      ..buttonBounds = new Rectangle<int>(_handleBounds.left, _handleBounds.top,
          _handleBounds.width, _handleBounds.height)
      ..fill = _style.fillColor
      ..stroke = _style.strokeColor
      ..strokeWidthPx = _style.strokeWidthPx;

    _sliderHandle.setNewTarget(element);

    _view.sliderHandle = _sliderHandle;
  }

  /// Fires a [SliderListenerDragState] change event if needed.
  void _fireChangeEvent(_) {
    if (SliderListenerDragState == null ||
        _sliderEventListener.onChange == null) {
      return;
    }

    SliderListenerDragState dragState = _dragStateToFireOnPostRender;

    // Initial drag state event should only be fired if the slider has moved
    // since the last draw. We always set the initial drag state event when new
    // data was drawn on the chart, since we might need to move the slider if
    // the axis range changed.
    if (dragState == SliderListenerDragState.initial &&
        _previousDomainCenterPoint == _domainCenterPoint) {
      dragState = null;
    }

    // Reset state.
    _dragStateToFireOnPostRender = null;
    _previousDomainCenterPoint = _domainCenterPoint;

    // Bail out if the event was cancelled.
    if (dragState == null) {
      return;
    }

    // Fire the event.
    _sliderEventListener.onChange(
        new Point<int>(_domainCenterPoint.x, _domainCenterPoint.y),
        _domainValue,
        _roleId,
        dragState);
  }

  /// Moves the slider along the domain axis to [point].
  ///
  /// If [point] exists beyond either edge of the draw area, it will be bound to
  /// the nearest edge.
  ///
  /// Updates [_domainValue] with the domain value located at [point]. For
  /// ordinal axes, this might technically result in a domain value whose center
  /// point lies slightly outside the draw area.
  ///
  /// Updates [_domainCenterPoint] and [_handleBounds] with the new position of
  /// the slider.
  ///
  /// Returns whether or not the position actually changed. This will generally
  /// be false if the mouse was dragged outside of the domain axis viewport.
  bool _moveSliderToPoint(Point<double> point) {
    var positionChanged = false;

    if (_chart != null) {
      final viewBounds = _view.componentBounds;

      // Clamp the position to the edge of the viewport.
      final position = clamp(point.x, viewBounds.left, viewBounds.right);

      positionChanged = (_previousDomainCenterPoint != null &&
          position != _previousDomainCenterPoint.x);

      // Reset the domain value if the position was outside of the chart.
      _domainValue = _chart.domainAxis.getDomain(position.toDouble());

      if (_domainCenterPoint != null) {
        _domainCenterPoint =
            new Point<int>(position.round(), _domainCenterPoint.y);
      } else {
        _domainCenterPoint = new Point<int>(
            position.round(), (viewBounds.top + viewBounds.height / 2).round());
      }

      num handleReferenceY;
      switch (_style.handlePosition) {
        case SliderHandlePosition.middle:
          handleReferenceY = _domainCenterPoint.y;
          break;
        case SliderHandlePosition.top:
          handleReferenceY = viewBounds.top;
          break;
        default:
          throw new ArgumentError('Slider does not support the handle position '
              '"${_style.handlePosition}"');
      }

      // Move the slider handle along the domain axis.
      _handleBounds = new Rectangle<int>(
          (_domainCenterPoint.x -
                  _style.handleSize.width / 2 +
                  _style.handleOffset.x)
              .round(),
          (handleReferenceY -
                  _style.handleSize.height / 2 +
                  _style.handleOffset.y)
              .round(),
          _style.handleSize.width,
          _style.handleSize.height);
    }

    return positionChanged;
  }

  /// Moves the slider along the domain axis to the location of [domain].
  ///
  /// If [domain] exists beyond either edge of the draw area, the position will
  /// be bound to the nearest edge.
  ///
  /// Updates [_domainValue] with the location of [domain]. For ordinal axes,
  /// this might result in a different domain value if the range band of
  /// [domain] is completely outside of the viewport.
  ///
  /// Updates [_domainCenterPoint] and [_handleBounds] with the new position of
  /// the slider.
  ///
  /// Returns whether or not the position actually changed. This will generally
  /// be false if the mouse was dragged outside of the domain axis viewport.
  bool _moveSliderToDomain(D domain) {
    final x = _chart.domainAxis.getLocation(domain);

    return _moveSliderToPoint(new Point<double>(x, 0.0));
  }

  /// Programmatically moves the slider to the location of [domain] on the
  /// domain axis.
  ///
  /// If [domain] exists beyond either edge of the draw area, the position will
  /// be bound to the nearest edge of the chart. The slider's current domain
  /// value state will reflect the domain value at the edge of the chart. For
  /// ordinal axes, this might result in a domain value whose range band is
  /// partially located beyond the edge of the chart.
  ///
  /// This does nothing if the domain matches the current domain location.
  ///
  /// [SliderEventListener] callbacks will be fired to indicate that the slider
  /// has moved.
  ///
  /// [skipAnimation] controls whether or not the slider will animate. Animation
  /// is disabled by default.
  void moveSliderToDomain(D domain, {bool skipAnimation = true}) {
    // Nothing to do if we are unattached to a chart or asked to move to the
    // current location.
    if (_chart == null || domain == _domainValue) {
      return;
    }

    final positionChanged = _moveSliderToDomain(domain);

    if (positionChanged) {
      _dragStateToFireOnPostRender = SliderListenerDragState.end;

      _chart.redraw(skipAnimation: skipAnimation, skipLayout: true);
    }
  }

  @override
  void attachTo(BaseChart<D> chart) {
    if (!(chart is CartesianChart)) {
      throw new ArgumentError(
          'Slider can only be attached to a cartesian chart.');
    }

    _chart = chart as CartesianChart;

    // Only vertical rendering is supported by this behavior.
    assert(_chart.vertical);

    _view = new _SliderLayoutView<D>(
        layoutPaintOrder: layoutPaintOrder, handleRenderer: _handleRenderer);

    chart.addView(_view);
    chart.addGestureListener(_gestureListener);
    chart.addLifecycleListener(_lifecycleListener);
  }

  @override
  void removeFrom(BaseChart<D> chart) {
    chart.removeView(_view);
    chart.removeGestureListener(_gestureListener);
    chart.removeLifecycleListener(_lifecycleListener);
    _chart = null;
  }

  @override
  String get role => 'Slider-${eventTrigger.toString()}-${_roleId}';
}

/// Style configuration for a [Slider] behavior.
class SliderStyle {
  /// Fill color of the handle of the slider.
  Color fillColor;

  /// Allows users to specify both x-position and y-position offset values that
  /// determines where the slider handle will be rendered. The offset will be
  /// calculated relative to its default position at the vertical and horizontal
  /// center of the slider line.
  Point<double> handleOffset;

  /// The vertical position for the slider handle.
  SliderHandlePosition handlePosition;

  /// Specifies the size of the slider handle.
  Rectangle<int> handleSize;

  /// Stroke width of the slider line and the slider handle.
  double strokeWidthPx;

  /// Stroke color of the slider line and hte slider handle
  Color strokeColor = StyleFactory.style.sliderStrokeColor;

  SliderStyle(
      {Color fillColor,
      this.handleOffset = const Point<double>(0.0, 0.0),
      this.handleSize = const Rectangle<int>(0, 0, 10, 20),
      Color strokeColor,
      this.handlePosition = SliderHandlePosition.middle,
      this.strokeWidthPx = 2.0}) {
    this.fillColor = fillColor ?? StyleFactory.style.sliderFillColor;
    this.strokeColor = strokeColor ?? StyleFactory.style.sliderStrokeColor;
  }

  @override
  bool operator ==(Object o) {
    return o is SliderStyle &&
        fillColor == o.fillColor &&
        handleOffset == o.handleOffset &&
        handleSize == o.handleSize &&
        strokeWidthPx == o.strokeWidthPx &&
        strokeColor == o.strokeColor;
  }

  @override
  int get hashCode {
    int hashcode = fillColor?.hashCode ?? 0;
    hashcode = (hashcode * 37) + handleOffset?.hashCode ?? 0;
    hashcode = (hashcode * 37) + handleSize?.hashCode ?? 0;
    hashcode = (hashcode * 37) + strokeWidthPx?.hashCode ?? 0;
    hashcode = (hashcode * 37) + strokeColor?.hashCode ?? 0;
    hashcode = (hashcode * 37) + handlePosition?.hashCode ?? 0;
    return hashcode;
  }
}

/// Describes the vertical position of the slider handle on the slider.
///
/// [middle] indicates the handle should be half-way between the top and bottom
/// of the chart in the middle of the slider line.
///
/// [top] indicates the slider should be rendered relative to the top of the
/// chart.
enum SliderHandlePosition { middle, top }

/// Layout view component for [Slider].
class _SliderLayoutView<D> extends LayoutView {
  final LayoutViewConfig layoutConfig;

  Rectangle<int> _drawAreaBounds;

  Rectangle<int> get drawBounds => _drawAreaBounds;

  GraphicsFactory _graphicsFactory;

  /// Renderer for the handle. Defaults to a rectangle.
  SymbolRenderer _handleRenderer;

  /// Rendering data for the slider line and handle.
  _AnimatedSlider _sliderHandle;

  _SliderLayoutView(
      {@required int layoutPaintOrder, @required SymbolRenderer handleRenderer})
      : this.layoutConfig = new LayoutViewConfig(
            paintOrder: layoutPaintOrder,
            position: LayoutPosition.DrawArea,
            positionOrder: LayoutViewPositionOrder.drawArea),
        _handleRenderer = handleRenderer;

  set sliderHandle(_AnimatedSlider value) {
    _sliderHandle = value;
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
    final sliderElement = _sliderHandle.getCurrentSlider(animationPercent);

    canvas.drawLine(
        points: [
          new Point<num>(
              sliderElement.domainCenterPoint.x, _drawAreaBounds.top),
          new Point<num>(
              sliderElement.domainCenterPoint.x, _drawAreaBounds.bottom),
        ],
        stroke: sliderElement.stroke,
        strokeWidthPx: sliderElement.strokeWidthPx);

    _handleRenderer.paint(canvas, sliderElement.buttonBounds,
        fillColor: sliderElement.fill,
        strokeColor: sliderElement.stroke,
        strokeWidthPx: sliderElement.strokeWidthPx);
  }

  @override
  Rectangle<int> get componentBounds => this._drawAreaBounds;

  @override
  bool get isSeriesRenderer => false;
}

/// Rendering information for a slider control element.
class _SliderElement<D> {
  Point<int> domainCenterPoint;
  Rectangle<int> buttonBounds;
  Color fill;
  Color stroke;
  double strokeWidthPx;

  _SliderElement<D> clone() {
    return new _SliderElement<D>()
      ..domainCenterPoint = this.domainCenterPoint
      ..buttonBounds = this.buttonBounds
      ..fill = this.fill
      ..stroke = this.stroke
      ..strokeWidthPx = this.strokeWidthPx;
  }

  void updateAnimationPercent(
      _SliderElement previous, _SliderElement target, double animationPercent) {
    final _SliderElement localPrevious = previous;
    final _SliderElement localTarget = target;

    final previousPoint = localPrevious.domainCenterPoint;
    final targetPoint = localTarget.domainCenterPoint;

    final x = ((targetPoint.x - previousPoint.x) * animationPercent) +
        previousPoint.x;

    final y = ((targetPoint.y - previousPoint.y) * animationPercent) +
        previousPoint.y;

    domainCenterPoint = new Point<int>(x.round(), y.round());

    final previousBounds = localPrevious.buttonBounds;
    final targetBounds = localTarget.buttonBounds;

    final top = ((targetBounds.top - previousBounds.top) * animationPercent) +
        previousBounds.top;
    final right =
        ((targetBounds.right - previousBounds.right) * animationPercent) +
            previousBounds.right;
    final bottom =
        ((targetBounds.bottom - previousBounds.bottom) * animationPercent) +
            previousBounds.bottom;
    final left =
        ((targetBounds.left - previousBounds.left) * animationPercent) +
            previousBounds.left;

    buttonBounds = new Rectangle<int>(left.round(), top.round(),
        (right - left).round(), (bottom - top).round());

    fill = getAnimatedColor(previous.fill, target.fill, animationPercent);

    stroke = getAnimatedColor(previous.stroke, target.stroke, animationPercent);

    strokeWidthPx =
        (((target.strokeWidthPx - previous.strokeWidthPx) * animationPercent) +
            previous.strokeWidthPx);
  }
}

/// Animates the slider control element of the behavior between different
/// states.
class _AnimatedSlider<D> {
  _SliderElement<D> _previousSlider;
  _SliderElement<D> _targetSlider;
  _SliderElement<D> _currentSlider;

  // Flag indicating whether this point is being animated out of the chart.
  bool animatingOut = false;

  _AnimatedSlider();

  /// Animates a point that was removed from the series out of the view.
  ///
  /// This should be called in place of "setNewTarget" for points that represent
  /// data that has been removed from the series.
  ///
  /// Animates the width of the slider down to 0.
  void animateOut() {
    final newTarget = _currentSlider.clone();

    // Animate the button bounds inwards horizontally towards a 0 width box.
    final targetBounds = newTarget.buttonBounds;
    final top = targetBounds.top;
    final right = targetBounds.left + targetBounds.width / 2;
    final bottom = targetBounds.bottom;
    final left = right;

    newTarget.buttonBounds = new Rectangle<int>(left.round(), top.round(),
        (right - left).round(), (bottom - top).round());

    // Animate the stroke width to 0 so that we don't get a lingering line after
    // animation is done.
    newTarget.strokeWidthPx = 0.0;

    setNewTarget(newTarget);
    animatingOut = true;
  }

  void setNewTarget(_SliderElement<D> newTarget) {
    animatingOut = false;
    _currentSlider ??= newTarget.clone();
    _previousSlider = _currentSlider.clone();
    _targetSlider = newTarget;
  }

  _SliderElement<D> getCurrentSlider(double animationPercent) {
    if (animationPercent == 1.0 || _previousSlider == null) {
      _currentSlider = _targetSlider;
      _previousSlider = _targetSlider;
      return _currentSlider;
    }

    _currentSlider.updateAnimationPercent(
        _previousSlider, _targetSlider, animationPercent);

    return _currentSlider;
  }
}

/// Event handler for slider events.
class SliderEventListener<D> {
  /// Called when the position of the slider has changed during a drag event.
  final SliderListenerCallback<D> onChange;

  SliderEventListener({this.onChange});
}

/// Callback function for [Slider] drag events.
///
/// [point] is the current position of the slider line. [point.x] is the domain
/// position, and [point.y] is the position of the center of the line on the
/// measure axis.
///
/// [domain] is the domain value at the slider position.
///
/// [dragState] indicates the current state of a drag event.
typedef SliderListenerCallback<D>(Point<int> point, D domain, String roleId,
    SliderListenerDragState dragState);

/// Describes the current state of a slider change as a result of a drag event.
///
/// [initial] indicates that the slider was set to an initial position when new
/// data was drawn on a chart. This will be fired if an initialDomainValue is
/// passed to [Slider]. It will also be fired if the position of the slider
/// changes as a result of new data being drawn on the chart.
///
/// [drag] indicates that the slider is being moved as a result of drag events.
/// When this is passed, the drag event is still active. Once the drag event is
/// completed, an [end] event will be fired.
///
/// [end] indicates that a drag event has been completed. This usually occurs
/// after one or more [drag] events. An [end] event will also be fired if
/// [Slider.moveSliderToDomain] is called, but there will be no preceding [drag]
/// events in this case.
enum SliderListenerDragState { initial, drag, end }

/// Helper class that exposes fewer private internal properties for unit tests.
@visibleForTesting
class SliderTester<D> {
  final Slider<D> behavior;

  SliderTester(this.behavior);

  Point<int> get domainCenterPoint => behavior._domainCenterPoint;

  D get domainValue => behavior._domainValue;

  Rectangle<int> get handleBounds => behavior._handleBounds;

  void layout(Rectangle<int> componentBounds, Rectangle<int> drawAreaBounds) {
    behavior._view.layout(componentBounds, drawAreaBounds);
  }

  _SliderLayoutView get view => behavior._view;
}
