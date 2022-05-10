import 'package:flutter/widgets.dart';

/// Signature for the callback that updates toggle button state when the user changes the selection
/// (including the cursor location).
typedef UpdateToggleButtonsStateOnSelectionChangedCallback = void Function(
    TextSelection selection);

/// Signature for the callback that updates toggle button state when the user
/// presses the toggle button.
typedef UpdateToggleButtonsStateOnButtonPressedCallback = void Function(
    int index);

class ToggleButtonsStateManager extends InheritedWidget {
  const ToggleButtonsStateManager({
    Key? key,
    required Widget child,
    required List<bool> isToggleButtonsSelected,
    required UpdateToggleButtonsStateOnButtonPressedCallback
        updateToggleButtonsStateOnButtonPressed,
    required UpdateToggleButtonsStateOnSelectionChangedCallback
        updateToggleButtonStateOnSelectionChanged,
  })  : _isToggleButtonsSelected = isToggleButtonsSelected,
        _updateToggleButtonsStateOnButtonPressed =
            updateToggleButtonsStateOnButtonPressed,
        _updateToggleButtonStateOnSelectionChanged =
            updateToggleButtonStateOnSelectionChanged,
        super(key: key, child: child);

  static ToggleButtonsStateManager of(BuildContext context) {
    final ToggleButtonsStateManager? result =
        context.dependOnInheritedWidgetOfExactType<ToggleButtonsStateManager>();
    assert(result != null, 'No ToggleButtonsStateManager found in context');
    return result!;
  }

  final List<bool> _isToggleButtonsSelected;
  final UpdateToggleButtonsStateOnButtonPressedCallback
      _updateToggleButtonsStateOnButtonPressed;
  final UpdateToggleButtonsStateOnSelectionChangedCallback
      _updateToggleButtonStateOnSelectionChanged;

  List<bool> get toggleButtonsState => _isToggleButtonsSelected;
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
