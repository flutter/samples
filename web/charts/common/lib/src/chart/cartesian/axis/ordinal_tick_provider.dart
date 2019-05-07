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

import '../../../common/graphics_factory.dart' show GraphicsFactory;
import '../../common/chart_context.dart' show ChartContext;
import 'axis.dart' show AxisOrientation;
import 'draw_strategy/tick_draw_strategy.dart' show TickDrawStrategy;
import 'ordinal_scale.dart' show OrdinalScale;
import 'tick.dart' show Tick;
import 'tick_formatter.dart' show TickFormatter;
import 'tick_provider.dart' show BaseTickProvider, TickHint;

/// A strategy for selecting ticks to draw given ordinal domain values.
class OrdinalTickProvider extends BaseTickProvider<String> {
  const OrdinalTickProvider();

  @override
  List<Tick<String>> getTicks({
    @required ChartContext context,
    @required GraphicsFactory graphicsFactory,
    @required List<String> domainValues,
    @required OrdinalScale scale,
    @required TickFormatter formatter,
    @required Map<String, String> formatterValueCache,
    @required TickDrawStrategy tickDrawStrategy,
    @required AxisOrientation orientation,
    bool viewportExtensionEnabled = false,
    TickHint<String> tickHint,
  }) {
    return createTicks(scale.domain.domains,
        context: context,
        graphicsFactory: graphicsFactory,
        scale: scale,
        formatter: formatter,
        formatterValueCache: formatterValueCache,
        tickDrawStrategy: tickDrawStrategy);
  }

  @override
  bool operator ==(other) => other is OrdinalTickProvider;

  @override
  int get hashCode => 31;
}
