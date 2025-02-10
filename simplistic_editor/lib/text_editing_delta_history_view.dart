import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_state_manager.dart';

class TextEditingDeltaHistoryView extends StatelessWidget {
  const TextEditingDeltaHistoryView({super.key});

  List<Widget> _buildTextEditingDeltaHistoryViews(
    List<TextEditingDelta> textEditingDeltas,
  ) {
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

  Widget _buildTextEditingDeltaViewHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 10.0),
      child: Row(
        children: [
          Expanded(
            child: Tooltip(
              message:
                  'The type of text input that is occurring.'
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

  Widget _buildTextEditingDeltaViewHeading(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w600,
        decoration: TextDecoration.underline,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final AppStateManager manager = AppStateManager.of(context);

    return Column(
      children: [
        _buildTextEditingDeltaViewHeader(),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            itemBuilder: (context, index) {
              return _buildTextEditingDeltaHistoryViews(
                manager.appState.textEditingDeltaHistory,
              )[index];
            },
            itemCount: manager.appState.textEditingDeltaHistory.length,
            separatorBuilder: (context, index) {
              return const SizedBox(height: 2.0);
            },
          ),
        ),
        const SizedBox(height: 10),
      ],
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
      case 'Deletion':
        rowColor = Colors.redAccent.shade100;
      case 'Replacement':
        rowColor = Colors.yellowAccent.shade100;
      case 'NonTextUpdate':
        rowColor = Colors.blueAccent.shade100;
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
