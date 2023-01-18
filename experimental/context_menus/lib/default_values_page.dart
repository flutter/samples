import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'constants.dart';
import 'platform_selector.dart';

class DefaultValuesPage extends StatelessWidget {
  DefaultValuesPage({
    super.key,
    required this.onChangedPlatform,
  });

  static const String route = 'default-values';
  static const String title = 'Default API Values Example';
  static const String subtitle =
      'Shows what happens when you pass various things into contextMenuBuilder.';

  final PlatformCallback onChangedPlatform;

  final TextEditingController _controllerNone = TextEditingController(
    text: "When contextMenuBuilder isn't given anything at all.",
  );

  final TextEditingController _controllerNull = TextEditingController(
    text: "When contextMenuBuilder is explicitly given null.",
  );

  final TextEditingController _controllerCustom = TextEditingController(
    text: "When something custom is passed to contextMenuBuilder.",
  );

  static const String url = '$kCodeUrl/default_values_page.dart';

  DialogRoute _showDialog(BuildContext context, String message) {
    return DialogRoute<void>(
      context: context,
      builder: (context) => AlertDialog(title: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(DefaultValuesPage.title),
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
          width: 400.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'This example simply shows what happens when contextMenuBuilder is given null, a custom value, or omitted altogether.',
              ),
              const SizedBox(
                height: 40.0,
              ),
              TextField(
                maxLines: 2,
                minLines: 2,
                controller: _controllerNone,
              ),
              TextField(
                maxLines: 2,
                minLines: 2,
                controller: _controllerNull,
                contextMenuBuilder: null,
              ),
              TextField(
                maxLines: 2,
                minLines: 2,
                controller: _controllerCustom,
                contextMenuBuilder: (context, editableTextState) {
                  return AdaptiveTextSelectionToolbar.buttonItems(
                    anchors: editableTextState.contextMenuAnchors,
                    buttonItems: <ContextMenuButtonItem>[
                      ContextMenuButtonItem(
                        label: 'Custom button',
                        onPressed: () {
                          ContextMenuController.removeAny();
                          Navigator.of(context).push(_showDialog(
                              context, 'You clicked the custom button.'));
                        },
                      ),
                      ...editableTextState.contextMenuButtonItems,
                    ],
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
