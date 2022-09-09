import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FieldTypesPage extends StatelessWidget {
  FieldTypesPage({
    Key? key,
  }) : super(key: key);

  static const String route = 'field-types';
  static const String title = 'The Context Menu in Different Field Types';
  static const String subtitle = 'How contextual menus work in TextField, CupertinoTextField, and EditableText';

  final TextEditingController _controller = TextEditingController(
    text: 'Material text field shows the menu for any platform by default.',
  );

  final TextEditingController _cupertinoController = TextEditingController(
    text: "CupertinoTextField can't show Material menus by default.",
  );

  final TextEditingController _cupertinoControllerFixed = TextEditingController(
    text: 'But CupertinoTextField can be made to show any menu.',
  );

  final TextEditingController _editableController = TextEditingController(
    text: "EditableText doesn't show any selection menu by itself, even when contextMenuBuilder is passed.",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(FieldTypesPage.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 20.0),
          TextField(controller: _controller),
          const SizedBox(height: 100.0),
          CupertinoTextField(controller: _cupertinoController),
          const SizedBox(height: 20.0),
          CupertinoTextField(
            controller: _cupertinoControllerFixed,
            contextMenuBuilder: (BuildContext context, EditableTextState editableTextState, Offset primaryAnchor, [Offset? secondaryAnchor]) {
              return AdaptiveTextSelectionToolbarEditableText(
                primaryAnchor: primaryAnchor,
                secondaryAnchor: secondaryAnchor,
                editableTextState: editableTextState,
              );
            },
          ),
          const SizedBox(height: 100.0),
          Container(
            color: Colors.white,
            child: EditableText(
              controller: _editableController,
              focusNode: FocusNode(),
              style: Typography.material2018().black.subtitle1!,
              cursorColor: Colors.blue,
              backgroundCursorColor: Colors.white,
              // contextMenuBuilder doesn't do anything here!
              // EditableText has no built-in gesture detection for
              // selection. A wrapper would have to implement
              // TextSelectionGestureDetectorBuilderDelegate, etc.
              contextMenuBuilder: (BuildContext context, EditableTextState editableTextState, Offset primaryAnchor, [Offset? secondaryAnchor]) {
                return AdaptiveTextSelectionToolbarEditableText(
                  primaryAnchor: primaryAnchor,
                  secondaryAnchor: secondaryAnchor,
                  editableTextState: editableTextState,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

