import 'package:flutter_web/material.dart';
import 'package:provider/provider.dart';

import 'shared_theme.dart';
import 'theme_plaster.dart';
import 'theme_seattle.dart';
import 'theme_simple.dart';

const themes = [
  ThemeSimple(),
  ThemeSeattle(),
  ThemePlaster(),
];

class PuzzleThemeTabController extends StatefulWidget {
  /// Creates a default tab controller for the given [child] widget.
  const PuzzleThemeTabController({
    Key key,
    @required this.child,
  }) : super(key: key);

  /// The widget below this widget in the tree.
  ///
  /// Typically a [Scaffold] whose [AppBar] includes a [TabBar].
  ///
  /// {@macro flutter.widgets.child}
  final Widget child;

  /// The closest instance of this class that encloses the given context.
  ///
  /// Typical usage:
  ///
  /// ```dart
  /// TabController controller = DefaultTabBarController.of(context);
  /// ```
  static TabController of(BuildContext context) {
    final scope =
        context.inheritFromWidgetOfExactType(_PuzzleThemeTabControllerScope)
            as _PuzzleThemeTabControllerScope;
    return scope?.controller;
  }

  @override
  _PuzzleThemeTabControllerState createState() =>
      _PuzzleThemeTabControllerState();
}

class _PuzzleThemeTabControllerState extends State<PuzzleThemeTabController>
    with SingleTickerProviderStateMixin {
  final _notifier = ValueNotifier<SharedTheme>(themes.first);

  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(
      vsync: this,
      length: themes.length,
      initialIndex: 0,
    );

    _controller.addListener(() {
      _notifier.value = themes[_controller.index];
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => _PuzzleThemeTabControllerScope(
        controller: _controller,
        enabled: TickerMode.of(context),
        child: ValueListenableProvider.value(
          valueListenable: _notifier,
          child: widget.child,
        ),
      );
}

class _PuzzleThemeTabControllerScope extends InheritedWidget {
  const _PuzzleThemeTabControllerScope(
      {Key key, this.controller, this.enabled, Widget child})
      : super(key: key, child: child);

  final TabController controller;
  final bool enabled;

  @override
  bool updateShouldNotify(_PuzzleThemeTabControllerScope old) =>
      enabled != old.enabled || controller != old.controller;
}
