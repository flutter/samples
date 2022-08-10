import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';

/// The toggle buttons that can be selected.
enum ToggleButtonsState {
  bold,
  italic,
  underline,
}

class ToggleButtonsStateManager extends InheritedWidget {
  const ToggleButtonsStateManager({
    super.key,
    required super.child,
    required Set<ToggleButtonsState> isToggleButtonsSelected,
  })  : _isToggleButtonsSelected = isToggleButtonsSelected;

  static ToggleButtonsStateManager of(BuildContext context) {
    final ToggleButtonsStateManager? result =
        context.dependOnInheritedWidgetOfExactType<ToggleButtonsStateManager>();
    assert(result != null, 'No ToggleButtonsStateManager found in context');
    return result!;
  }

  final Set<ToggleButtonsState> _isToggleButtonsSelected;

  Set<ToggleButtonsState> get toggleButtonsState => _isToggleButtonsSelected;

  static const _equality = DeepCollectionEquality();

  @override
  bool updateShouldNotify(ToggleButtonsStateManager oldWidget) {
    return !_equality.equals(toggleButtonsState, oldWidget.toggleButtonsState);
  }
}
