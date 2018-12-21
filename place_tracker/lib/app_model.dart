import 'package:flutter/material.dart';

class _AppModelScope<T> extends InheritedWidget {
  const _AppModelScope({
    Key key,
    this.appModelState,
    Widget child,
  }) : super(key: key, child: child);

  final _AppModelState<T> appModelState;

  @override
  bool updateShouldNotify(_AppModelScope oldWidget) => true;
}

class AppModel<T> extends StatefulWidget {
  AppModel({
    Key key,
    @required this.initialState,
    this.child,
  })  : assert(initialState != null),
        super(key: key);

  final T initialState;
  final Widget child;

  _AppModelState<T> createState() => _AppModelState<T>();

  static _typeOf<T>() => T;

  static T of<T>(BuildContext context) {
    final Type appModelScopeType = _typeOf<_AppModelScope<T>>();
    final _AppModelScope<T> scope =
        context.inheritFromWidgetOfExactType(appModelScopeType);
    return scope.appModelState.currentState;
  }

  static void update<T>(BuildContext context, T newState) {
    final Type appModelScopeType = _typeOf<_AppModelScope<T>>();
    final _AppModelScope<T> scope =
        context.inheritFromWidgetOfExactType(appModelScopeType);
    scope.appModelState.updateState(newState);
  }
}

class _AppModelState<T> extends State<AppModel<T>> {
  @override
  void initState() {
    super.initState();
    currentState = widget.initialState;
  }

  T currentState;

  void updateState(T newState) {
    if (newState != currentState) {
      setState(() {
        currentState = newState;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return _AppModelScope<T>(
      appModelState: this,
      child: widget.child,
    );
  }
}
