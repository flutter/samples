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

import 'dart:math' show Rectangle;

typedef void OnFocus();

/// Container for accessibility data.
class A11yNode {
  /// The bounding box for this node.
  final Rectangle<int> boundingBox;

  /// The textual description of this node.
  final String label;

  /// Callback when the A11yNode is focused by the native platform
  OnFocus onFocus;

  A11yNode(this.label, this.boundingBox, {this.onFocus});
}
