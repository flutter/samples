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

class TypedRegistry {
  final Map<TypedKey, Object> _registry = {};

  R getAttr<R>(TypedKey<R> key) {
    return _registry[key] as R;
  }

  void setAttr<R>(TypedKey<R> key, R value) {
    _registry[key] = value;
  }

  void mergeFrom(TypedRegistry other) {
    _registry.addAll(other._registry);
  }
}

class TypedKey<R> {
  final String uniqueKey;
  const TypedKey(this.uniqueKey);

  @override
  int get hashCode => uniqueKey.hashCode;

  @override
  bool operator ==(other) => other is TypedKey && uniqueKey == other.uniqueKey;
}
