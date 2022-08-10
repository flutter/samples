import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';

import 'app_state.dart';

class AppStateManager extends InheritedWidget {
  const AppStateManager({
    super.key,
    required super.child,
    required AppState state,
  })  : _appState = state;

  static AppStateManager of(BuildContext context) {
    final AppStateManager? result = context
        .dependOnInheritedWidgetOfExactType<AppStateManager>();
    assert(
        result != null, 'No AppStateManager found in context');
    return result!;
  }

  final AppState _appState;

  AppState get appState =>
      _appState;

  static const _equality = DeepCollectionEquality();

  @override
  bool updateShouldNotify(AppStateManager oldWidget) {
    return !_equality.equals(appState, oldWidget.appState);
  }
}
