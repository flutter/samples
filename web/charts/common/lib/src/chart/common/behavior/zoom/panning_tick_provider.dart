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

import 'package:meta/meta.dart' show required;

import '../../../../common/graphics_factory.dart' show GraphicsFactory;
import '../../../cartesian/axis/axis.dart' show AxisOrientation;
import '../../../cartesian/axis/draw_strategy/tick_draw_strategy.dart'
    show TickDrawStrategy;
import '../../../cartesian/axis/scale.dart' show MutableScale;
import '../../../cartesian/axis/tick.dart' show Tick;
import '../../../cartesian/axis/tick_formatter.dart' show TickFormatter;
import '../../../cartesian/axis/tick_provider.dart' show TickProvider, TickHint;
import '../../../common/chart_context.dart' show ChartContext;

enum PanningTickProviderMode {
  /// Return cached ticks.
  useCachedTicks,

  /// Request ticks with [TickHint] calculated from cached ticks.
  stepSizeLocked,

  /// Request ticks directly from tick provider.
  passThrough,
}

/// Wraps an existing tick provider to be able to return cached ticks during
/// zoom in/out, return ticks calculated with locked step size during panning,
/// or just pass through to the existing tick provider.
class PanningTickProvider<D> implements TickProvider<D> {
  final TickProvider<D> tickProvider;

  PanningTickProviderMode _mode = PanningTickProviderMode.passThrough;

  List<Tick<D>> _ticks;

  PanningTickProvider(this.tickProvider);

  set mode(PanningTickProviderMode mode) {
    _mode = mode;
  }

  List<Tick<D>> getTicks({
    @required ChartContext context,
    @required GraphicsFactory graphicsFactory,
    @required MutableScale<D> scale,
    @required TickFormatter<D> formatter,
    @required Map<D, String> formatterValueCache,
    @required TickDrawStrategy tickDrawStrategy,
    @required AxisOrientation orientation,
    bool viewportExtensionEnabled = false,
    TickHint<D> tickHint,
  }) {
    if (_mode == PanningTickProviderMode.stepSizeLocked) {
      tickHint = new TickHint(
        _ticks.first.value,
        _ticks.last.value,
        tickCount: _ticks.length,
      );
    }

    if (_mode != PanningTickProviderMode.useCachedTicks) {
      _ticks = tickProvider.getTicks(
        context: context,
        graphicsFactory: graphicsFactory,
        scale: scale,
        formatter: formatter,
        formatterValueCache: formatterValueCache,
        tickDrawStrategy: tickDrawStrategy,
        orientation: orientation,
        viewportExtensionEnabled: viewportExtensionEnabled,
        tickHint: tickHint,
      );
    }

    return _ticks;
  }
}
