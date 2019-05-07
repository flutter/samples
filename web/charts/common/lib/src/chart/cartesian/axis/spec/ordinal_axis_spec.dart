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

import 'package:meta/meta.dart' show immutable;

import '../../../../common/graphics_factory.dart' show GraphicsFactory;
import '../../../common/chart_context.dart' show ChartContext;
import '../axis.dart' show Axis, OrdinalAxis, OrdinalViewport;
import '../ordinal_tick_provider.dart' show OrdinalTickProvider;
import '../static_tick_provider.dart' show StaticTickProvider;
import '../tick_formatter.dart' show OrdinalTickFormatter;
import 'axis_spec.dart'
    show AxisSpec, TickProviderSpec, TickFormatterSpec, RenderSpec;
import 'tick_spec.dart' show TickSpec;

/// [AxisSpec] specialized for ordinal/non-continuous axes typically for bars.
@immutable
class OrdinalAxisSpec extends AxisSpec<String> {
  /// Sets viewport for this Axis.
  ///
  /// If pan / zoom behaviors are set, this is the initial viewport.
  final OrdinalViewport viewport;

  /// Creates a [AxisSpec] that specialized for ordinal domain charts.
  ///
  /// [renderSpec] spec used to configure how the ticks and labels
  ///     actually render. Possible values are [GridlineRendererSpec],
  ///     [SmallTickRendererSpec] & [NoneRenderSpec]. Make sure that the <D>
  ///     given to the RenderSpec is of type [String] when using this spec.
  /// [tickProviderSpec] spec used to configure what ticks are generated.
  /// [tickFormatterSpec] spec used to configure how the tick labels are
  ///     formatted.
  /// [showAxisLine] override to force the axis to draw the axis line.
  const OrdinalAxisSpec({
    RenderSpec<String> renderSpec,
    OrdinalTickProviderSpec tickProviderSpec,
    OrdinalTickFormatterSpec tickFormatterSpec,
    bool showAxisLine,
    this.viewport,
  }) : super(
            renderSpec: renderSpec,
            tickProviderSpec: tickProviderSpec,
            tickFormatterSpec: tickFormatterSpec,
            showAxisLine: showAxisLine);

  @override
  configure(Axis<String> axis, ChartContext context,
      GraphicsFactory graphicsFactory) {
    super.configure(axis, context, graphicsFactory);

    if (axis is OrdinalAxis && viewport != null) {
      axis.setScaleViewport(viewport);
    }
  }

  @override
  OrdinalAxis createAxis() => new OrdinalAxis();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is OrdinalAxisSpec &&
            viewport == other.viewport &&
            super == (other));
  }

  @override
  int get hashCode {
    int hashcode = super.hashCode;
    hashcode = (hashcode * 37) + viewport.hashCode;
    return hashcode;
  }
}

abstract class OrdinalTickProviderSpec extends TickProviderSpec<String> {}

abstract class OrdinalTickFormatterSpec extends TickFormatterSpec<String> {}

@immutable
class BasicOrdinalTickProviderSpec implements OrdinalTickProviderSpec {
  const BasicOrdinalTickProviderSpec();

  @override
  OrdinalTickProvider createTickProvider(ChartContext context) =>
      new OrdinalTickProvider();

  @override
  bool operator ==(Object other) => other is BasicOrdinalTickProviderSpec;

  @override
  int get hashCode => 37;
}

/// [TickProviderSpec] that allows you to specific the ticks to be used.
@immutable
class StaticOrdinalTickProviderSpec implements OrdinalTickProviderSpec {
  final List<TickSpec<String>> tickSpecs;

  const StaticOrdinalTickProviderSpec(this.tickSpecs);

  @override
  StaticTickProvider<String> createTickProvider(ChartContext context) =>
      new StaticTickProvider<String>(tickSpecs);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StaticOrdinalTickProviderSpec && tickSpecs == other.tickSpecs);

  @override
  int get hashCode => tickSpecs.hashCode;
}

@immutable
class BasicOrdinalTickFormatterSpec implements OrdinalTickFormatterSpec {
  const BasicOrdinalTickFormatterSpec();

  @override
  OrdinalTickFormatter createTickFormatter(ChartContext context) =>
      new OrdinalTickFormatter();

  @override
  bool operator ==(Object other) => other is BasicOrdinalTickFormatterSpec;

  @override
  int get hashCode => 37;
}
