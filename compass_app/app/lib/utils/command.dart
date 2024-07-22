import 'package:flutter/foundation.dart';

typedef CommandAction0<T> = Future<T> Function();
typedef CommandAction1<T, A> = Future<T> Function(A);
typedef OnComplete<T> = Function(T);
typedef CanExecute = bool Function();

/// Facilitates interaction with a ViewModel.
///
/// Encapsulates an action,
/// ensures that it can't be launched multiple times,
/// and that the [CanExecute] condition is met.
///
/// Use [Command0] for actions without arguments.
/// Use [Command1] for actions with one argument.
 abstract class Command<T> extends ChangeNotifier {
  Command._(
    this._canExecute,
  );

  final CanExecute? _canExecute;

  bool _running = false;

  /// True when the action is running.
  bool get running => _running;

  /// Internal execute implementation
  Future<void> _execute(
    CommandAction0<T> action,
    OnComplete<T>? onComplete,
  ) async {
    // Check if the action can be run
    if (_canExecute != null && !_canExecute()) {
      return;
    }

    // Ensure the action can't launch multiple times.
    // e.g. avoid multiple taps on button
    if (_running) return;

    // Notify listeners.
    // e.g. button shows loading state
    _running = true;
    notifyListeners();

    try {
      final result = await action();
      onComplete?.call(result);
    } finally {
      _running = false;
      notifyListeners();
    }
  }
}

/// [Command] without arguments.
/// Takes a [CommandAction0] as action.
class Command0<T> extends Command<T> {
  Command0(
    this._action, [
    CanExecute? canExecute,
  ]) : super._(canExecute);

  final CommandAction0<T> _action;

  /// Executes the action.
  /// onComplete is called when the action completes.
  Future<void> execute({OnComplete<T>? onComplete}) async {
    await _execute(() => _action(), onComplete);
  }
}

/// [Command] with one argument.
/// Takes a [CommandAction1] as action.
class Command1<T, A> extends Command<T> {
  Command1(
    this._action, [
    CanExecute? canExecute,
  ]) : super._(canExecute);

  final CommandAction1<T, A> _action;

  /// Executes the action with the argument.
  /// onComplete is called when the action completes.
  Future<void> execute({required A argument, OnComplete<T>? onComplete}) async {
    await _execute(() => _action(argument), onComplete);
  }
}
