import 'package:flutter/services.dart' show TextEditingDelta;
import 'package:flutter/widgets.dart';

/// Signature for the callback that updates text editing delta history when a new delta
/// is received.
typedef TextEditingDeltaHistoryUpdateCallback = void Function(List<TextEditingDelta> textEditingDeltas);

class TextEditingDeltaHistoryManager extends InheritedWidget {
  const TextEditingDeltaHistoryManager({
    Key? key,
    required Widget child,
    required List<TextEditingDelta> history,
    required TextEditingDeltaHistoryUpdateCallback updateHistoryOnInput,
  })
      : _textEditingDeltaHistory = history,
        _updateTextEditingDeltaHistoryOnInput = updateHistoryOnInput,
        super(key: key, child: child);

  static TextEditingDeltaHistoryManager of(BuildContext context) {
    final TextEditingDeltaHistoryManager? result = context.dependOnInheritedWidgetOfExactType<TextEditingDeltaHistoryManager>();
    assert(result != null, 'No ToggleButtonsStateManager found in context');
    return result!;
  }

  final List<TextEditingDelta> _textEditingDeltaHistory;
  final TextEditingDeltaHistoryUpdateCallback _updateTextEditingDeltaHistoryOnInput;

  List<TextEditingDelta> get textEditingDeltaHistory => _textEditingDeltaHistory;
  TextEditingDeltaHistoryUpdateCallback get updateTextEditingDeltaHistoryOnInput => _updateTextEditingDeltaHistoryOnInput;

  @override
  bool updateShouldNotify(TextEditingDeltaHistoryManager oldWidget) {
    return textEditingDeltaHistory != oldWidget.textEditingDeltaHistory;
  }
}