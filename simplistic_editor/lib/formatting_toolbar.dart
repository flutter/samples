import 'package:flutter/material.dart';

import 'app_state.dart';
import 'app_state_manager.dart';

/// The toggle buttons that can be selected.
enum ToggleButtonsState { bold, italic, underline }

class FormattingToolbar extends StatelessWidget {
  const FormattingToolbar({super.key});

  @override
  Widget build(BuildContext context) {
    final AppStateManager manager = AppStateManager.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ToggleButtons(
            borderRadius: const BorderRadius.all(Radius.circular(4.0)),
            isSelected: [
              manager.appState.toggleButtonsState.contains(
                ToggleButtonsState.bold,
              ),
              manager.appState.toggleButtonsState.contains(
                ToggleButtonsState.italic,
              ),
              manager.appState.toggleButtonsState.contains(
                ToggleButtonsState.underline,
              ),
            ],
            onPressed:
                (index) => AppStateWidget.of(
                  context,
                ).updateToggleButtonsStateOnButtonPressed(index),
            children: const [
              Icon(Icons.format_bold),
              Icon(Icons.format_italic),
              Icon(Icons.format_underline),
            ],
          ),
        ],
      ),
    );
  }
}
