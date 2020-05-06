// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ValueTabController<T> extends StatefulWidget {
  /// Creates a default tab controller for the given [child] widget.
  const ValueTabController({
    Key key,
    @required this.child,
    @required this.values,
  }) : super(key: key);

  /// The widget below this widget in the tree.
  ///
  /// Typically a [Scaffold] whose [AppBar] includes a [TabBar].
  ///
  /// {@macro flutter.widgets.child}
  final Widget child;

  final List<T> values;

  /// The closest instance of this class that encloses the given context.
  ///
  /// Typical usage:
  ///
  /// ```dart
  /// TabController controller = DefaultTabBarController.of(context);
  /// ```
  static TabController of(BuildContext context) {
    final scope = context.inheritFromWidgetOfExactType(_ValueTabControllerScope)
        as _ValueTabControllerScope;
    return scope?.controller;
  }

  @override
  _ValueTabControllerState<T> createState() => _ValueTabControllerState<T>();
}

class _ValueTabControllerState<T> extends State<ValueTabController<T>>
    with SingleTickerProviderStateMixin {
  final _notifier = ValueNotifier<T>(null);

  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(
      vsync: this,
      length: widget.values.length,
      initialIndex: 0,
    );

    _notifier.value = widget.values.first;

    _controller.addListener(() {
      _notifier.value = widget.values[_controller.index];
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => _ValueTabControllerScope(
        controller: _controller,
        enabled: TickerMode.of(context),
        child: ValueListenableProvider.value(
          valueListenable: _notifier,
          child: widget.child,
        ),
      );
}

class _ValueTabControllerScope extends InheritedWidget {
  const _ValueTabControllerScope(
      {Key key, this.controller, this.enabled, Widget child})
      : super(key: key, child: child);

  final TabController controller;
  final bool enabled;

  @override
  bool updateShouldNotify(_ValueTabControllerScope old) =>
      enabled != old.enabled || controller != old.controller;
}
