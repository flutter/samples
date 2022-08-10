import 'package:flutter/material.dart';

import 'app_state.dart';
import 'replacements.dart';
import 'toggle_buttons_state_manager.dart';

class FormattingToolbar extends StatelessWidget {
  const FormattingToolbar({super.key, required this.controller});

  final ReplacementTextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final ToggleButtonsStateManager manager =
        ToggleButtonsStateManager.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ToggleButtons(
            borderRadius:
                const BorderRadius.all(Radius.circular(4.0)),
            isSelected: [
              manager.toggleButtonsState
                  .contains(ToggleButtonsState.bold),
              manager.toggleButtonsState
                  .contains(ToggleButtonsState.italic),
              manager.toggleButtonsState
                  .contains(ToggleButtonsState.underline),
            ],
            onPressed: (index) => AppStateWidget.of(context).updateToggleButtonsStateOnButtonPressed(index, controller),
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
