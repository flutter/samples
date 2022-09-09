import 'package:flutter/material.dart';

class EmailButtonPage extends StatelessWidget {
  EmailButtonPage({
    Key? key,
  }) : super(key: key);

  static const String route = 'email-button';
  static const String title = 'Email Button';
  static const String subtitle = 'A selection-aware email button';

  final TextEditingController _controller = TextEditingController(
    text: 'Select the email address and open the menu: me@example.com',
  );

  DialogRoute _showDialog (BuildContext context) {
    return DialogRoute<void>(
      context: context,
      builder: (BuildContext context) =>
        const AlertDialog(title: Text('You clicked send email!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(EmailButtonPage.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
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
                        Navigator.of(context).push(_showDialog(context));
                      },
                    ));
                  }
                  return AdaptiveTextSelectionToolbarButtonItems(
                    primaryAnchor: primaryAnchor,
                    secondaryAnchor: secondaryAnchor,
                    buttonItems: buttonItems,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

bool _isValidEmail(String text) {
  return RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
    .hasMatch(text);
}
