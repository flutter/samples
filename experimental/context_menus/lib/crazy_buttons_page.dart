import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CrazyButtonsPage extends StatelessWidget {
  CrazyButtonsPage({
    Key? key,
  }) : super(key: key);

  static const String route = 'crazy-buttons';
  static const String title = 'Crazy Buttons';
  static const String subtitle = 'The usual buttons, but crazy looking';

  final TextEditingController _controller = TextEditingController(
    text: 'Show the menu to see weird-looking buttons.\nmultiline text\nmultiline text\nmultiline text\nmultiline text\nmultiline text',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(CrazyButtonsPage.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(height: 20.0),
          TextField(
            controller: _controller,
            maxLines: 4,
            minLines: 4,
            contextMenuBuilder: (BuildContext context, EditableTextState editableTextState) {
              return AdaptiveTextSelectionToolbar(
                anchors: AdaptiveTextSelectionToolbar.getAnchorsEditable(editableTextState),
                // Build the default buttons, but make them look crazy.
                // Note that in a real project you may want to build
                // different buttons depending on the platform.
                children: editableTextState.contextMenuButtonItems.map((ContextMenuButtonItem buttonItem) {
                  return CupertinoButton(
                    borderRadius: null,
                    color: const Color(0xffaaaa00),
                    disabledColor: const Color(0xffaaaaff),
                    onPressed: buttonItem.onPressed,
                    padding: const EdgeInsets.all(10.0),
                    pressedOpacity: 0.7,
                    child: SizedBox(
                      width: 200.0,
                      child: Text(
                        CupertinoAdaptiveTextSelectionToolbar.getButtonLabel(context, buttonItem),
                      ),
                    ),
                  );
                }).toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}
