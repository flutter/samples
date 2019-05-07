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

import 'package:charts_common/common.dart' as common;

@immutable
class SelectionModelConfig<D> {
  final common.SelectionModelType type;

  /// Listens for change in selection.
  final common.SelectionModelListener<D> changedListener;

  /// Listens anytime update selection is called.
  final common.SelectionModelListener<D> updatedListener;

  SelectionModelConfig(
      {this.type = common.SelectionModelType.info,
      this.changedListener,
      this.updatedListener});
}
