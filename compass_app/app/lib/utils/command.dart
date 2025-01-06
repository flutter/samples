// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:flutter/foundation.dart';

import 'result.dart';

typedef CommandAction0<T> = Future<Result<T>> Function();
typedef CommandAction1<T, A> = Future<Result<T>> Function(A);

/// Facilitates interaction with a ViewModel.
///
/// Encapsulates an action,
/// exposes its running and error states,
/// and ensures that it can't be launched again until it finishes.
///
/// Use [Command0] for actions without arguments.
/// Use [Command1] for actions with one argument.
///
/// Actions must return a [Result].
///
/// Consume the action result by listening to changes,
/// then call to [clearResult] when the state is consumed.
abstract class Command<T> extends ChangeNotifier {
  Command();

  bool _running = false;

  /// True when the action is running.
  bool get running => _running;

  Result<T>? _result;

  /// true if action completed with error
  bool get error => _result is Error;

  /// true if action completed successfully
  bool get completed => _result is Ok;

  /// Get last action result
  Result? get result => _result;

  /// Clear last action result
  void clearResult() {
    _result = null;
    notifyListeners();
  }

  /// Internal execute implementation
  Future<void> _execute(CommandAction0<T> action) async {
    // Ensure the action can't launch multiple times.
    // e.g. avoid multiple taps on button
    if (_running) return;

    // Notify listeners.
    // e.g. button shows loading state
    _running = true;
    _result = null;
    notifyListeners();

    try {
      _result = await action();
    } finally {
      _running = false;
      notifyListeners();
    }
  }
}

/// [Command] without arguments.
/// Takes a [CommandAction0] as action.
class Command0<T> extends Command<T> {
  Command0(this._action);

  final CommandAction0<T> _action;

  /// Executes the action.
  Future<void> execute() async {
    await _execute(_action);
  }
}

/// [Command] with one argument.
/// Takes a [CommandAction1] as action.
class Command1<T, A> extends Command<T> {
  Command1(this._action);

  final CommandAction1<T, A> _action;

  /// Executes the action with the argument.
  Future<void> execute(A argument) async {
    await _execute(() => _action(argument));
  }
}
