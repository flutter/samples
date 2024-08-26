// Copyright 2022 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/// Typedefs supporting the 'Command Pattern'.
///
/// For mocks used in unit tests, see component/testing/lib/commands.dart.

import 'package:flutter/widgets.dart' show BuildContext;

/// Interface to a type of commands that take no arguments.
///
/// Example: callbacks passed to a [ElevatedButton]'s [onPressed] argument.
typedef ViewCommand = void Function();

/// Interface to a type of commands that take an argument of type [T].
///
/// See [ContextCommand] for hints on importing Flutter symbols, such as
/// [BuildContext].
typedef TypedCommand<T> = void Function(T);

/// Interface to a type of commands that take an argument of type [T] and
/// returns a value of type [R].
typedef TypedCommandWithReturn<R, T> = R Function(T);

/// Interface to a type of commands that take no arguments and executes
/// asynchronously.
///
/// [ViewCommand] or [TypedCommand] can still call asynchronous commands. But
/// certain Flutter widgets expect a [Future]. For example, a [RefreshIndicator]
/// takes a [RefreshCallback]. And an [AsyncCommand] can be used.
typedef AsyncCommand = Future<void> Function();

/// Interface to a type of commands that takes a [BuildContext] and executes
/// asynchronously.
typedef AsyncContextCommand = Future<void> Function(BuildContext);

/// Interface to a type of commands that take an argument of type [T] and
/// executes asynchronously.
///
/// See [ContextCommand] for hints on importing Flutter symbols, such as
/// [BuildContext].
typedef AsyncTypedCommand<T> = Future<void> Function(T);

/// Interface to a type of commands that take no arguments, execute
/// asynchronously and returns a value of type [R].
typedef AsyncCommandWithReturn<R> = Future<R> Function();

/// Interface to a type of commands that take an argument of type [T], execute
/// asynchronously and returns a value of type [R].
typedef AsyncTypedCommandWithReturn<R, T> = Future<R> Function(T);

/// Interface to a type of commands that take a [BuildContext].
///
/// Quite common in Flutter widget code, this is just an alias to
/// [TypedCommand<BuildContext>].
///
/// Example: a Flutter navigation operation.
///
/// Note: when referenceing [BuildContext] in a built value, there can be a
/// compiler error about an amgibuous `Builder` symbol. This is because the
/// Flutter framework and package:built_value both exports a `Builder` symbol.
/// To work around this problem, `hide` the `Builder` symbol when importing
/// Flutter libraries in your built value file. For example:
///
/// ```dart
/// import 'package:built_value/built_value.dart';
/// import 'package:flutter/widgets.dart' hide Builder;
///
/// part 'view_model.g.dart';
///
/// abstract class ViewModel implements Built<...> {
///   ...
///   /// Or simply [ContextCommand].
///   TypedCommand<BuildContext> get myCommand;
/// }
/// ```
///
/// With this approach, the [Builder] widget from Flutter is unavailable in this
/// file. In the extremely rare case that your built value implementation needs
/// access to Flutter's [Builder], you may choose to provide an import prefix
/// when importing Flutter:
///
/// ```dart
/// import 'package:built_value/built_value.dart';
/// import 'package:flutter/widgets.dart' as flutter;
///
/// part 'view_model.g.dart';
///
/// abstract class ViewModel implements Built<...> {
///   ...
///   TypedCommand<flutter.BuildContext> get myCommand;
/// }
/// ```
typedef ContextCommand = void Function(BuildContext);

/// Interface to a type of commands that take a [BuildContext] and an argument
/// of type [T].
///
/// See [ContextCommand] for hints on importing Flutter symbols, such as
/// [BuildContext].
typedef TypedContextCommand<T> = void Function(BuildContext, T);
