import 'package:flutter/material.dart';

import 'is_valid_email.dart';

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
      body: Center(
        child: SizedBox(
          width: 300.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 20.0),
              const Text(
                'This example shows how to add a special button to the context menu depending on the current selection.',
              ),
              const SizedBox(height: 40.0),
              TextField(
                maxLines: 2,
                controller: _controller,
                contextMenuBuilder: (BuildContext context, EditableTextState editableTextState) {
                  final TextEditingValue value = editableTextState.textEditingValue;
                  final List<ContextMenuButtonItem> buttonItems =
                      editableTextState.contextMenuButtonItems;
                  if (isValidEmail(value.selection.textInside(value.text))) {
                    buttonItems.insert(0, ContextMenuButtonItem(
                      label: 'Send email',
                      onPressed: () {
                        ContextMenuController.removeAny();
                        Navigator.of(context).push(_showDialog(context));
                      },
                    ));
                  }
                  return AdaptiveTextSelectionToolbar.buttonItems(
                    anchors: AdaptiveTextSelectionToolbar.getAnchorsEditable(editableTextState),
                    buttonItems: buttonItems,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
