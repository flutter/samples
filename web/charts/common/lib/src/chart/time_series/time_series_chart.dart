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

import '../../common/date_time_factory.dart'
    show DateTimeFactory, LocalDateTimeFactory;
import '../cartesian/axis/axis.dart' show Axis, NumericAxis;
import '../cartesian/axis/draw_strategy/small_tick_draw_strategy.dart'
    show SmallTickRendererSpec;
import '../cartesian/axis/spec/axis_spec.dart' show AxisSpec;
import '../cartesian/axis/spec/date_time_axis_spec.dart' show DateTimeAxisSpec;
import '../cartesian/axis/time/date_time_axis.dart' show DateTimeAxis;
import '../cartesian/cartesian_chart.dart' show CartesianChart;
import '../common/series_renderer.dart' show SeriesRenderer;
import '../layout/layout_config.dart' show LayoutConfig;
import '../line/line_renderer.dart' show LineRenderer;

class TimeSeriesChart extends CartesianChart<DateTime> {
  final DateTimeFactory dateTimeFactory;

  TimeSeriesChart(
      {bool vertical,
      LayoutConfig layoutConfig,
      NumericAxis primaryMeasureAxis,
      NumericAxis secondaryMeasureAxis,
      LinkedHashMap<String, NumericAxis> disjointMeasureAxes,
      this.dateTimeFactory = const LocalDateTimeFactory()})
      : super(
            vertical: vertical,
            layoutConfig: layoutConfig,
            domainAxis: new DateTimeAxis(dateTimeFactory),
            primaryMeasureAxis: primaryMeasureAxis,
            secondaryMeasureAxis: secondaryMeasureAxis,
            disjointMeasureAxes: disjointMeasureAxes);

  @override
  void initDomainAxis() {
    domainAxis.tickDrawStrategy = new SmallTickRendererSpec<DateTime>()
        .createDrawStrategy(context, graphicsFactory);
  }

  @override
  SeriesRenderer<DateTime> makeDefaultRenderer() {
    return new LineRenderer<DateTime>()
      ..rendererId = SeriesRenderer.defaultRendererId;
  }

  @override
  Axis<DateTime> createDomainAxisFromSpec(AxisSpec<DateTime> axisSpec) {
    return (axisSpec as DateTimeAxisSpec).createDateTimeAxis(dateTimeFactory);
  }
}
