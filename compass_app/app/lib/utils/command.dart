import 'package:flutter/cupertino.dart';

typedef CommandAction<T> = Future<T> Function();
typedef OnComplete<T> = Function(T);
typedef CanExecute = bool Function();

/// A Command facilitates interaction with a ViewModel.
///
/// - If a Command is already running, the execute call is ignored.
/// - If [OnComplete] is provided to the execute call,
///   it will be called with the result.
/// - If [CanExecute] callback is provided, the execute call
///   will evaluate it before running.
/// - As a Command does not accept arguments,
///   those must be part of the ViewModel.
///
class Command<T> extends ChangeNotifier {
  Command(this._action, [this._canExecute]);

  final CommandAction<T> _action;
  final CanExecute? _canExecute;

  bool _running = false;

  bool get running => _running;

  Future<void> execute([OnComplete<T>? onComplete]) async {
    // check if command can execute if provided
    if (_canExecute != null && !_canExecute()) {
      return;
    }

    // e.g. avoid multiple taps on button
    if (_running) return;

    // notify listeners e.g. button shows loading state
    _running = true;
    notifyListeners();

    try {
      final result = await _action();
      onComplete?.call(result);
    } finally {
      _running = false;
      notifyListeners();
    }
  }
}
