import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'context_menu_region.dart';

class FullPage extends StatelessWidget {
  FullPage({
    Key? key,
  }) : super(key: key);

  static const String route = 'full';
  static const String title = 'Full Example';
  static const String subtitle = 'Combining everything';

  final TextEditingController _controller = TextEditingController(
    text: 'Custom menus everywhere. me@example.com',
  );

  DialogRoute _showDialog (BuildContext context, String message) {
    return DialogRoute<void>(
      context: context,
      builder: (BuildContext context) =>
        AlertDialog(title: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(FullPage.title),
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ContextMenuRegion(
              contextMenuBuilder: (BuildContext context, Offset primaryAnchor, [Offset? secondaryAnchor]) {
                return AdaptiveTextSelectionToolbarButtonItems(
                  primaryAnchor: primaryAnchor,
                  secondaryAnchor: secondaryAnchor,
                  buttonItems: <ContextMenuButtonItem>[
                    ContextMenuButtonItem(
                      onPressed: () {
                        ContextMenuController.removeAny();
                        Navigator.of(context).push(_showDialog(context, 'Image saved! (not really though)'));
                      },
                      label: 'Save',
                    ),
                  ],
                );
              },
              child: SizedBox(
                width: 200.0,
                height: 200.0,
                child: Image.asset('flutter.jpg'),
              ),
            ),
            Container(height: 20.0),
            TextField(
              controller: _controller,
              contextMenuBuilder: (BuildContext context, EditableTextState editableTextState, Offset primaryAnchor, [Offset? secondaryAnchor]) {
                return EditableTextContextMenuButtonItemsBuilder(
                  editableTextState: editableTextState,
                  builder: (BuildContext context, List<ContextMenuButtonItem> buttonItems) {
                    final TextEditingValue value = editableTextState.textEditingValue;
                    if (_isValidEmail(value.selection.textInside(value.text))) {
                      buttonItems.insert(0, ContextMenuButtonItem(
                        label: 'Send email',
                        onPressed: () {
                          ContextMenuController.removeAny();
                          Navigator.of(context).push(_showDialog(context, 'You clicked send email'));
                        },
                      ));
                    }
                    return AdaptiveTextSelectionToolbar(
                      primaryAnchor: primaryAnchor,
                      secondaryAnchor: secondaryAnchor,
                      // Build the default buttons, but make them look crazy.
                      // Note that in a real project you may want to build
                      // different buttons depending on the platform.
                      children: buttonItems.map((ContextMenuButtonItem buttonItem) {
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
                              CupertinoTextSelectionToolbarButtonsBuilder.getButtonLabel(context, buttonItem),
                            ),
                          ),
                        );
                      }).toList(),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

bool _isValidEmail(String text) {
  return RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
    .hasMatch(text);
}
