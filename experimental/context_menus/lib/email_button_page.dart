import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'constants.dart';
import 'is_valid_email.dart';
import 'platform_selector.dart';

class EmailButtonPage extends StatelessWidget {
  EmailButtonPage({
    super.key,
    required this.onChangedPlatform,
  });

  static const String route = 'email-button';
  static const String title = 'Email Button';
  static const String subtitle = 'A selection-aware email button';
  static const String url = '$kCodeUrl/email_button_page.dart';

  final PlatformCallback onChangedPlatform;

  final TextEditingController _controller = TextEditingController(
    text: 'Select the email address and open the menu: me@example.com',
  );

  DialogRoute _showDialog(BuildContext context) {
    return DialogRoute<void>(
      context: context,
      builder: (context) =>
          const AlertDialog(title: Text('You clicked send email!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(EmailButtonPage.title),
        actions: <Widget>[
          PlatformSelector(
            onChangedPlatform: onChangedPlatform,
          ),
          IconButton(
            icon: const Icon(Icons.code),
            onPressed: () async {
              if (!await launchUrl(Uri.parse(url))) {
                throw 'Could not launch $url';
              }
            },
          ),
        ],
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
                contextMenuBuilder: (context, editableTextState) {
                  final TextEditingValue value =
                      editableTextState.textEditingValue;
                  final List<ContextMenuButtonItem> buttonItems =
                      editableTextState.contextMenuButtonItems;
                  if (isValidEmail(value.selection.textInside(value.text))) {
                    buttonItems.insert(
                        0,
                        ContextMenuButtonItem(
                          label: 'Send email',
                          onPressed: () {
                            ContextMenuController.removeAny();
                            Navigator.of(context).push(_showDialog(context));
                          },
                        ));
                  }
                  return AdaptiveTextSelectionToolbar.buttonItems(
                    anchors: editableTextState.contextMenuAnchors,
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
