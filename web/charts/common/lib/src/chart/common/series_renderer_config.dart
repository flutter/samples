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

import '../../common/symbol_renderer.dart';
import '../../common/typed_registry.dart';
import 'series_renderer.dart' show SeriesRenderer;

/// Interface for series renderer configuration.
abstract class SeriesRendererConfig<D> {
  /// Stores typed renderer attributes
  ///
  /// This is useful for storing attributes that is used on the native platform.
  /// Such as the SymbolRenderer that is associated with each renderer but is
  /// a native builder since legend is built natively.
  RendererAttributes get rendererAttributes;

  String get customRendererId;

  SymbolRenderer get symbolRenderer;

  SeriesRenderer<D> build();
}

class RendererAttributeKey<R> extends TypedKey<R> {
  const RendererAttributeKey(String uniqueKey) : super(uniqueKey);
}

class RendererAttributes extends TypedRegistry {}
