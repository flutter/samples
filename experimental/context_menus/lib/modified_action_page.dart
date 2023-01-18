import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'constants.dart';
import 'platform_selector.dart';

class ModifiedActionPage extends StatelessWidget {
  ModifiedActionPage({
    super.key,
    required this.onChangedPlatform,
  });

  static const String route = 'modified-action';
  static const String title = 'Modified Action';
  static const String subtitle =
      'The copy button copies but also shows a menu.';
  static const String url = '$kCodeUrl/modified_action_page.dart';

  final PlatformCallback onChangedPlatform;

  final TextEditingController _controller = TextEditingController(
    text: 'Try using the copy button.',
  );

  DialogRoute _showDialog(BuildContext context) {
    return DialogRoute<void>(
      context: context,
      builder: (context) => const AlertDialog(
          title: Text('Copied, but also showed this dialog.')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ModifiedActionPage.title),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'This example shows adding to the behavior of a default button.',
              ),
              const SizedBox(
                height: 30.0,
              ),
              TextField(
                controller: _controller,
                contextMenuBuilder: (context, editableTextState) {
                  final List<ContextMenuButtonItem> buttonItems =
                      editableTextState.contextMenuButtonItems;
                  // Modify the copy buttonItem to show a dialog after copying.
                  final int copyButtonIndex = buttonItems.indexWhere(
                    (buttonItem) {
                      return buttonItem.type == ContextMenuButtonType.copy;
                    },
                  );
                  if (copyButtonIndex >= 0) {
                    final ContextMenuButtonItem copyButtonItem =
                        buttonItems[copyButtonIndex];
                    buttonItems[copyButtonIndex] = copyButtonItem.copyWith(
                      onPressed: () {
                        copyButtonItem.onPressed();
                        Navigator.of(context).push(_showDialog(context));
                      },
                    );
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
