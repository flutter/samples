import 'package:flutter/widgets.dart';

/// Signature for the callback that updates toggle button state when the user changes the selection
/// (including the cursor location).
typedef UpdateToggleButtonsStateOnSelectionChangedCallback = void Function(
    TextSelection selection);

/// Signature for the callback that updates toggle button state when the user
/// presses the toggle button.
typedef UpdateToggleButtonsStateOnButtonPressedCallback = void Function(
    int index);

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
    required UpdateToggleButtonsStateOnButtonPressedCallback
        updateToggleButtonsStateOnButtonPressed,
    required UpdateToggleButtonsStateOnSelectionChangedCallback
        updateToggleButtonStateOnSelectionChanged,
  })  : _isToggleButtonsSelected = isToggleButtonsSelected,
        _updateToggleButtonsStateOnButtonPressed =
            updateToggleButtonsStateOnButtonPressed,
        _updateToggleButtonStateOnSelectionChanged =
            updateToggleButtonStateOnSelectionChanged;

  static ToggleButtonsStateManager of(BuildContext context) {
    final ToggleButtonsStateManager? result =
        context.dependOnInheritedWidgetOfExactType<ToggleButtonsStateManager>();
    assert(result != null, 'No ToggleButtonsStateManager found in context');
    return result!;
  }

  final Set<ToggleButtonsState> _isToggleButtonsSelected;
  final UpdateToggleButtonsStateOnButtonPressedCallback
      _updateToggleButtonsStateOnButtonPressed;
  final UpdateToggleButtonsStateOnSelectionChangedCallback
      _updateToggleButtonStateOnSelectionChanged;

  Set<ToggleButtonsState> get toggleButtonsState => _isToggleButtonsSelected;
  UpdateToggleButtonsStateOnButtonPressedCallback
      get updateToggleButtonsOnButtonPressed =>
          _updateToggleButtonsStateOnButtonPressed;
  UpdateToggleButtonsStateOnSelectionChangedCallback
      get updateToggleButtonsOnSelection =>
          _updateToggleButtonStateOnSelectionChanged;

  @override
  bool updateShouldNotify(ToggleButtonsStateManager oldWidget) =>
      toggleButtonsState != oldWidget.toggleButtonsState;
}
