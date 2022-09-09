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

  final TextEditingController _controller = TextEditingController(
    text: 'Right click anywhere outside of a field to show a custom menu.',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AnywherePage.title),
      ),
      body: ContextMenuRegion(
        contextMenuBuilder: (BuildContext context, Offset primaryAnchor, [Offset? secondaryAnchor]) {
          return AdaptiveTextSelectionToolbarButtonItems(
            primaryAnchor: primaryAnchor,
            secondaryAnchor: secondaryAnchor,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(height: 20.0),
            const CupertinoTextField(),
            Container(height: 200.0),
            TextField(controller: _controller),
            Container(height: 100.0),
            Container(
              color: Colors.white,
              child: EditableText(
                controller: TextEditingController(),
                focusNode: FocusNode(),
                style: Typography.material2018().black.subtitle1!,
                cursorColor: Colors.blue,
                backgroundCursorColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
