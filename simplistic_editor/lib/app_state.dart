import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_state_manager.dart';
import 'formatting_toolbar.dart' show ToggleButtonsState;
import 'replacements.dart';

class AppState {
  const AppState({
    required this.replacementsController,
    required this.textEditingDeltaHistory,
    required this.toggleButtonsState,
  });

  final ReplacementTextEditingController replacementsController;
  final List<TextEditingDelta> textEditingDeltaHistory;
  final Set<ToggleButtonsState> toggleButtonsState;

  AppState copyWith({
    ReplacementTextEditingController? replacementsController,
    List<TextEditingDelta>? textEditingDeltaHistory,
    Set<ToggleButtonsState>? toggleButtonsState,
  }) {
    return AppState(
      replacementsController:
          replacementsController ?? this.replacementsController,
      textEditingDeltaHistory:
          textEditingDeltaHistory ?? this.textEditingDeltaHistory,
      toggleButtonsState: toggleButtonsState ?? this.toggleButtonsState,
    );
  }
}

class AppStateWidget extends StatefulWidget {
  const AppStateWidget({super.key, required this.child});

  final Widget child;

  static AppStateWidgetState of(BuildContext context) {
    return context.findAncestorStateOfType<AppStateWidgetState>()!;
  }

  @override
  State<AppStateWidget> createState() => AppStateWidgetState();
}

class AppStateWidgetState extends State<AppStateWidget> {
  AppState _data = AppState(
    replacementsController: ReplacementTextEditingController(
      text: 'The quick brown fox jumps over the lazy dog.',
    ),
    textEditingDeltaHistory: <TextEditingDelta>[],
    toggleButtonsState: <ToggleButtonsState>{},
  );

  void updateTextEditingDeltaHistory(List<TextEditingDelta> textEditingDeltas) {
    _data = _data.copyWith(
      textEditingDeltaHistory: <TextEditingDelta>[
        ..._data.textEditingDeltaHistory,
        ...textEditingDeltas,
      ],
    );
    setState(() {});
  }

  void updateToggleButtonsStateOnSelectionChanged(
    TextSelection selection,
    ReplacementTextEditingController controller,
  ) {
    // When the selection changes we want to check the replacements at the new
    // selection. Enable/disable toggle buttons based on the replacements found
    // at the new selection.
    final List<TextStyle> replacementStyles = controller
        .getReplacementsAtSelection(selection);
    final Set<ToggleButtonsState> hasChanged = {};

    if (replacementStyles.isEmpty) {
      _data = _data.copyWith(
        toggleButtonsState: Set.from(_data.toggleButtonsState)..removeAll({
          ToggleButtonsState.bold,
          ToggleButtonsState.italic,
          ToggleButtonsState.underline,
        }),
      );
    }

    for (final TextStyle style in replacementStyles) {
      // See [_updateToggleButtonsStateOnButtonPressed] for how
      // Bold, Italic and Underline are encoded into [style]
      if (style.fontWeight != null &&
          !hasChanged.contains(ToggleButtonsState.bold)) {
        _data = _data.copyWith(
          toggleButtonsState: Set.from(_data.toggleButtonsState)
            ..add(ToggleButtonsState.bold),
        );
        hasChanged.add(ToggleButtonsState.bold);
      }

      if (style.fontStyle != null &&
          !hasChanged.contains(ToggleButtonsState.italic)) {
        _data = _data.copyWith(
          toggleButtonsState: Set.from(_data.toggleButtonsState)
            ..add(ToggleButtonsState.italic),
        );
        hasChanged.add(ToggleButtonsState.italic);
      }

      if (style.decoration != null &&
          !hasChanged.contains(ToggleButtonsState.underline)) {
        _data = _data.copyWith(
          toggleButtonsState: Set.from(_data.toggleButtonsState)
            ..add(ToggleButtonsState.underline),
        );
        hasChanged.add(ToggleButtonsState.underline);
      }
    }

    for (final TextStyle style in replacementStyles) {
      if (style.fontWeight == null &&
          !hasChanged.contains(ToggleButtonsState.bold)) {
        _data = _data.copyWith(
          toggleButtonsState: Set.from(_data.toggleButtonsState)
            ..remove(ToggleButtonsState.bold),
        );
        hasChanged.add(ToggleButtonsState.bold);
      }

      if (style.fontStyle == null &&
          !hasChanged.contains(ToggleButtonsState.italic)) {
        _data = _data.copyWith(
          toggleButtonsState: Set.from(_data.toggleButtonsState)
            ..remove(ToggleButtonsState.italic),
        );
        hasChanged.add(ToggleButtonsState.italic);
      }

      if (style.decoration == null &&
          !hasChanged.contains(ToggleButtonsState.underline)) {
        _data = _data.copyWith(
          toggleButtonsState: Set.from(_data.toggleButtonsState)
            ..remove(ToggleButtonsState.underline),
        );
        hasChanged.add(ToggleButtonsState.underline);
      }
    }

    setState(() {});
  }

  void updateToggleButtonsStateOnButtonPressed(int index) {
    Map<int, TextStyle> attributeMap = const <int, TextStyle>{
      0: TextStyle(fontWeight: FontWeight.bold),
      1: TextStyle(fontStyle: FontStyle.italic),
      2: TextStyle(decoration: TextDecoration.underline),
    };

    final ReplacementTextEditingController controller =
        _data.replacementsController;

    final TextRange replacementRange = TextRange(
      start: controller.selection.start,
      end: controller.selection.end,
    );

    final targetToggleButtonState = ToggleButtonsState.values[index];

    if (_data.toggleButtonsState.contains(targetToggleButtonState)) {
      _data = _data.copyWith(
        toggleButtonsState: Set.from(_data.toggleButtonsState)
          ..remove(targetToggleButtonState),
      );
    } else {
      _data = _data.copyWith(
        toggleButtonsState: Set.from(_data.toggleButtonsState)
          ..add(targetToggleButtonState),
      );
    }

    if (_data.toggleButtonsState.contains(targetToggleButtonState)) {
      controller.applyReplacement(
        TextEditingInlineSpanReplacement(
          replacementRange,
          (string, range) => TextSpan(text: string, style: attributeMap[index]),
          true,
        ),
      );
      _data = _data.copyWith(replacementsController: controller);
      setState(() {});
    } else {
      controller.disableExpand(attributeMap[index]!);
      controller.removeReplacementsAtRange(
        replacementRange,
        attributeMap[index],
      );
      _data = _data.copyWith(replacementsController: controller);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppStateManager(state: _data, child: widget.child);
  }
}
