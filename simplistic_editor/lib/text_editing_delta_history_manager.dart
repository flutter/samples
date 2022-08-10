import 'package:collection/collection.dart';
import 'package:flutter/services.dart' show TextEditingDelta;
import 'package:flutter/widgets.dart';

class TextEditingDeltaHistoryManager extends InheritedWidget {
  const TextEditingDeltaHistoryManager({
    super.key,
    required super.child,
    required List<TextEditingDelta> history,
  })  : _textEditingDeltaHistory = history;

  static TextEditingDeltaHistoryManager of(BuildContext context) {
    final TextEditingDeltaHistoryManager? result = context
        .dependOnInheritedWidgetOfExactType<TextEditingDeltaHistoryManager>();
    assert(
        result != null, 'No TextEditingDeltaHistoryManager found in context');
    return result!;
  }

  final List<TextEditingDelta> _textEditingDeltaHistory;

  List<TextEditingDelta> get textEditingDeltaHistory =>
      _textEditingDeltaHistory;

  static const _equality = DeepCollectionEquality();

  @override
  bool updateShouldNotify(TextEditingDeltaHistoryManager oldWidget) {
    return !_equality.equals(oldWidget.textEditingDeltaHistory, textEditingDeltaHistory);
  }
}
