import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'context_menu_region.dart';

class AnywherePage extends StatelessWidget {
  AnywherePage({
    Key? key,
  }) : super(key: key);

  static const String route = 'anywhere';
  static const String title = 'Context Menu Anywhere Example';
  static const String subtitle = 'A ContextMenu outside of a text field';

  final TextEditingController _materialController = TextEditingController(
    text: 'TextField shows the default menu still.',
  );
  final TextEditingController _cupertinoController = TextEditingController(
    text: 'CupertinoTextField shows the default menu still.',
  );
  final TextEditingController _editableController = TextEditingController(
    text: 'EditableText has no default menu, so it shows the custom one.',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AnywherePage.title),
      ),
      body: ContextMenuRegion(
        contextMenuBuilder: (BuildContext context, Offset primaryAnchor, [Offset? secondaryAnchor]) {
          return AdaptiveTextSelectionToolbar.buttonItems(
            anchors: TextSelectionToolbarAnchors(
              primaryAnchor: primaryAnchor,
              secondaryAnchor: secondaryAnchor,
            ),
            buttonItems: <ContextMenuButtonItem>[
              ContextMenuButtonItem(
                onPressed: () {
                  ContextMenuController.removeAny();
                  Navigator.of(context).pop();
                },
                label: 'Back',
              ),
            ],
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 64.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(height: 20.0),
              const Text(
                'Right click anywhere outside of a field to show a custom menu.',
              ),
              Container(height: 140.0),
              CupertinoTextField(controller: _cupertinoController),
              Container(height: 40.0),
              TextField(controller: _materialController),
              Container(height: 40.0),
              Container(
                color: Colors.white,
                child: EditableText(
                  controller: _editableController,
                  focusNode: FocusNode(),
                  style: Typography.material2021().black.displayMedium!,
                  cursorColor: Colors.blue,
                  backgroundCursorColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
