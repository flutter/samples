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
      body: Center(
        child: SizedBox(
          width: 400.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 20.0),
              TextField(
                maxLines: 2,
                controller: _controller,
              ),
              const SizedBox(height: 60.0),
              CupertinoTextField(
                maxLines: 2,
                controller: _cupertinoController,
              ),
              const SizedBox(height: 20.0),
              CupertinoTextField(
                maxLines: 2,
                controller: _cupertinoControllerFixed,
                contextMenuBuilder: (BuildContext context, EditableTextState editableTextState) {
                  return AdaptiveTextSelectionToolbar.editableText(
                    editableTextState: editableTextState,
                  );
                },
              ),
              const SizedBox(height: 60.0),
              Container(
                color: Colors.white,
                child: EditableText(
                  maxLines: 2,
                  controller: _editableController,
                  focusNode: FocusNode(),
                  style: Typography.material2021().black.displayMedium!,
                  cursorColor: Colors.blue,
                  backgroundCursorColor: Colors.white,
                  // contextMenuBuilder doesn't do anything here!
                  // EditableText has no built-in gesture detection for
                  // selection. A wrapper would have to implement
                  // TextSelectionGestureDetectorBuilderDelegate, etc.
                  contextMenuBuilder: (BuildContext context, EditableTextState editableTextState) {
                    return AdaptiveTextSelectionToolbar.editableText(
                      editableTextState: editableTextState,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
