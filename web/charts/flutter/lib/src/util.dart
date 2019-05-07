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

import 'package:flutter_web/rendering.dart'
    show
        RenderBox,
        RenderSemanticsGestureHandler,
        RenderPointerListener,
        RenderCustomMultiChildLayoutBox;
import 'chart_container.dart' show ChartContainerRenderObject;

/// Get the [ChartContainerRenderObject] from a [RenderBox].
///
/// [RenderBox] is expected to be a [RenderSemanticsGestureHandler] with child
/// of [RenderPointerListener] with child of [ChartContainerRenderObject].
ChartContainerRenderObject getChartContainerRenderObject(RenderBox box) {
  assert(box is RenderCustomMultiChildLayoutBox);
  final semanticHandler = (box as RenderCustomMultiChildLayoutBox)
      .getChildrenAsList()
      .firstWhere((child) => child is RenderSemanticsGestureHandler);

  assert(semanticHandler is RenderSemanticsGestureHandler);
  final renderPointerListener =
      (semanticHandler as RenderSemanticsGestureHandler).child;

  assert(renderPointerListener is RenderPointerListener);
  final chartContainerRenderObject =
      (renderPointerListener as RenderPointerListener).child;

  assert(chartContainerRenderObject is ChartContainerRenderObject);

  return chartContainerRenderObject as ChartContainerRenderObject;
}
