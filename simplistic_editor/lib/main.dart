import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'basic_text_field.dart';
import 'replacements.dart';
import 'text_editing_delta_history_manager.dart';
import 'toggle_button_state_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simplistic Editor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Simplistic Editor'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ReplacementTextEditingController _replacementTextEditingController =
      ReplacementTextEditingController(
    text: 'The quick brown fox jumps over the lazy dog.',
  );
  final FocusNode _focusNode = FocusNode();
  final List<bool> _isSelected = [false, false, false];
  final List<TextEditingDelta> _textEditingDeltaHistory = [];

  void _updateTextEditingDeltaHistory(
      List<TextEditingDelta> textEditingDeltas) {
    for (final TextEditingDelta delta in textEditingDeltas) {
      _textEditingDeltaHistory.add(delta);
    }

    setState(() {});
  }

  List<Widget> _buildTextEditingDeltaHistoryViews(
      List<TextEditingDelta> textEditingDeltas) {
    List<Widget> textEditingDeltaViews = [];

    for (final TextEditingDelta delta in textEditingDeltas) {
      final TextEditingDeltaView deltaView;

      if (delta is TextEditingDeltaInsertion) {
        deltaView = TextEditingDeltaView(
          deltaType: 'Insertion',
          deltaText: delta.textInserted,
          deltaRange: TextRange.collapsed(delta.insertionOffset),
          newSelection: delta.selection,
          newComposing: delta.composing,
        );
      } else if (delta is TextEditingDeltaDeletion) {
        deltaView = TextEditingDeltaView(
          deltaType: 'Deletion',
          deltaText: delta.textDeleted,
          deltaRange: delta.deletedRange,
          newSelection: delta.selection,
          newComposing: delta.composing,
        );
      } else if (delta is TextEditingDeltaReplacement) {
        deltaView = TextEditingDeltaView(
          deltaType: 'Replacement',
          deltaText: delta.replacementText,
          deltaRange: delta.replacedRange,
          newSelection: delta.selection,
          newComposing: delta.composing,
        );
      } else if (delta is TextEditingDeltaNonTextUpdate) {
        deltaView = TextEditingDeltaView(
          deltaType: 'NonTextUpdate',
          deltaText: '',
          deltaRange: TextRange.empty,
          newSelection: delta.selection,
          newComposing: delta.composing,
        );
      } else {
        deltaView = const TextEditingDeltaView(
          deltaType: 'Error',
          deltaText: 'Error',
          deltaRange: TextRange.empty,
          newSelection: TextRange.empty,
          newComposing: TextRange.empty,
        );
      }

      textEditingDeltaViews.add(deltaView);
    }

    return textEditingDeltaViews.reversed.toList();
  }

  void _updateToggleButtonsStateOnSelectionChanged(TextSelection selection) {
    // When the selection changes we want to check the replacements at the new
    // selection. Enable/disable toggle buttons based on the replacements found
    // at the new selection.
    final List<TextStyle> replacementStyles =
        _replacementTextEditingController.getReplacementsAtSelection(selection);
    final List<bool> hasChanged = [false, false, false];

    if (replacementStyles.isEmpty) {
      _isSelected.fillRange(0, _isSelected.length, false);
    }

    for (final TextStyle style in replacementStyles) {
      if (style.fontWeight != null && !hasChanged[0]) {
        _isSelected[0] = true;
        hasChanged[0] = true;
      }

      if (style.fontStyle != null && !hasChanged[1]) {
        _isSelected[1] = true;
        hasChanged[1] = true;
      }

      if (style.decoration != null && !hasChanged[2]) {
        _isSelected[2] = true;
        hasChanged[2] = true;
      }
    }

    for (final TextStyle style in replacementStyles) {
      if (style.fontWeight == null && !hasChanged[0]) {
        _isSelected[0] = false;
        hasChanged[0] = true;
      }

      if (style.fontStyle == null && !hasChanged[1]) {
        _isSelected[1] = false;
        hasChanged[1] = true;
      }

      if (style.decoration == null && !hasChanged[2]) {
        _isSelected[2] = false;
        hasChanged[2] = true;
      }
    }

    setState(() {});
  }

  void _updateToggleButtonsStateOnButtonPressed(int index) {
    Map<int, TextStyle> attributeMap = const <int, TextStyle>{
      0: TextStyle(fontWeight: FontWeight.bold),
      1: TextStyle(fontStyle: FontStyle.italic),
      2: TextStyle(decoration: TextDecoration.underline),
    };

    final TextRange replacementRange = TextRange(
      start: _replacementTextEditingController.selection.start,
      end: _replacementTextEditingController.selection.end,
    );

    _isSelected[index] = !_isSelected[index];
    if (_isSelected[index]) {
      _replacementTextEditingController.applyReplacement(
        TextEditingInlineSpanReplacement(
          replacementRange,
          (string, range) => TextSpan(text: string, style: attributeMap[index]),
          true,
        ),
      );
      setState(() {});
    } else {
      _replacementTextEditingController.disableExpand(attributeMap[index]!);
      _replacementTextEditingController.removeReplacementsAtRange(
          replacementRange, attributeMap[index]);
      setState(() {});
    }
  }

  Widget _buildTextEditingDeltaViewHeading(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w600,
        decoration: TextDecoration.underline,
      ),
    );
  }

  Widget _buildTextEditingDeltaViewHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 10.0),
      child: Row(
        children: [
          Expanded(
            child: Tooltip(
              message: 'The type of text input that is occurring.'
                  ' Check out the documentation for TextEditingDelta for more information.',
              child: _buildTextEditingDeltaViewHeading('Delta Type'),
            ),
          ),
          Expanded(
            child: Tooltip(
              message: 'The text that is being inserted or deleted',
              child: _buildTextEditingDeltaViewHeading('Delta Text'),
            ),
          ),
          Expanded(
            child: Tooltip(
              message:
                  'The offset in the text where the text input is occurring.',
              child: _buildTextEditingDeltaViewHeading('Delta Offset'),
            ),
          ),
          Expanded(
            child: Tooltip(
              message:
                  'The new text selection range after the text input has occurred.',
              child: _buildTextEditingDeltaViewHeading('New Selection'),
            ),
          ),
          Expanded(
            child: Tooltip(
              message:
                  'The new composing range after the text input has occurred.',
              child: _buildTextEditingDeltaViewHeading('New Composing'),
            ),
          ),
        ],
      ),
    );
  }

  static Route<Object?> _aboutDialogBuilder(
      BuildContext context, Object? arguments) {
    const String aboutContent =
        'TextEditingDeltas are a new feature in the latest Flutter stable release that give the user'
        ' finer grain control over the changes that occur during text input. There are four types of'
        ' deltas: Insertion, Deletion, Replacement, and NonTextUpdate. To gain access to these TextEditingDeltas'
        ' you must implement DeltaTextInputClient, and set enableDeltaModel to true in the TextInputConfiguration.'
        ' Before Flutter only provided the TextInputClient, which does not provide a delta between the current'
        ' and previous text editing states. DeltaTextInputClient does provide these deltas, allowing the user to build'
        ' more powerful rich text editing applications such as this small example. This feature is supported on all platforms.';
    return DialogRoute<void>(
      context: context,
      builder: (context) => const AlertDialog(
        title: Center(child: Text('About')),
        content: Text(aboutContent),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).restorablePush(_aboutDialogBuilder);
            },
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: ToggleButtonsStateManager(
            isToggleButtonsSelected: _isSelected,
            updateToggleButtonsStateOnButtonPressed:
                _updateToggleButtonsStateOnButtonPressed,
            updateToggleButtonStateOnSelectionChanged:
                _updateToggleButtonsStateOnSelectionChanged,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ToggleButtonsStateManager(
                        isToggleButtonsSelected: _isSelected,
                        updateToggleButtonsStateOnButtonPressed:
                            _updateToggleButtonsStateOnButtonPressed,
                        updateToggleButtonStateOnSelectionChanged:
                            _updateToggleButtonsStateOnSelectionChanged,
                        child: Builder(builder: (innerContext) {
                          final ToggleButtonsStateManager manager =
                              ToggleButtonsStateManager.of(innerContext);

                          return ToggleButtons(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(4.0)),
                            isSelected: manager.toggleButtonsState,
                            onPressed: (index) => manager
                                .updateToggleButtonsOnButtonPressed(index),
                            children: const [
                              Icon(Icons.format_bold),
                              Icon(Icons.format_italic),
                              Icon(Icons.format_underline),
                            ],
                          );
                        }),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35.0),
                    child: ToggleButtonsStateManager(
                      isToggleButtonsSelected: _isSelected,
                      updateToggleButtonsStateOnButtonPressed:
                          _updateToggleButtonsStateOnButtonPressed,
                      updateToggleButtonStateOnSelectionChanged:
                          _updateToggleButtonsStateOnSelectionChanged,
                      child: TextEditingDeltaHistoryManager(
                        history: _textEditingDeltaHistory,
                        updateHistoryOnInput: _updateTextEditingDeltaHistory,
                        child: BasicTextField(
                          controller: _replacementTextEditingController,
                          style: const TextStyle(
                              fontSize: 18.0, color: Colors.black),
                          focusNode: _focusNode,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      _buildTextEditingDeltaViewHeader(),
                      Expanded(
                        child: TextEditingDeltaHistoryManager(
                          history: _textEditingDeltaHistory,
                          updateHistoryOnInput: _updateTextEditingDeltaHistory,
                          child: Builder(
                            builder: (innerContext) {
                              final TextEditingDeltaHistoryManager manager =
                                  TextEditingDeltaHistoryManager.of(
                                      innerContext);
                              return ListView.separated(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 35.0),
                                itemBuilder: (context, index) {
                                  return _buildTextEditingDeltaHistoryViews(
                                      manager.textEditingDeltaHistory)[index];
                                },
                                itemCount:
                                    manager.textEditingDeltaHistory.length,
                                separatorBuilder: (context, index) {
                                  return const SizedBox(height: 2.0);
                                },
                              );
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextEditingDeltaView extends StatelessWidget {
  const TextEditingDeltaView({
    super.key,
    required this.deltaType,
    required this.deltaText,
    required this.deltaRange,
    required this.newSelection,
    required this.newComposing,
  });

  final String deltaType;
  final String deltaText;
  final TextRange deltaRange;
  final TextRange newSelection;
  final TextRange newComposing;

  @override
  Widget build(BuildContext context) {
    late final Color rowColor;

    switch (deltaType) {
      case 'Insertion':
        rowColor = Colors.greenAccent.shade100;
        break;
      case 'Deletion':
        rowColor = Colors.redAccent.shade100;
        break;
      case 'Replacement':
        rowColor = Colors.yellowAccent.shade100;
        break;
      case 'NonTextUpdate':
        rowColor = Colors.blueAccent.shade100;
        break;
      default:
        rowColor = Colors.white;
    }
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
        color: rowColor,
      ),
      padding: const EdgeInsets.only(top: 4.0, bottom: 4.0, left: 8.0),
      child: Row(
        children: [
          Expanded(child: Text(deltaType)),
          Expanded(child: Text(deltaText)),
          Expanded(child: Text('(${deltaRange.start}, ${deltaRange.end})')),
          Expanded(child: Text('(${newSelection.start}, ${newSelection.end})')),
          Expanded(child: Text('(${newComposing.start}, ${newComposing.end})')),
        ],
      ),
    );
  }
}
