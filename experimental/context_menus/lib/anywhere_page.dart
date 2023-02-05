import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'constants.dart';
import 'context_menu_region.dart';
import 'platform_selector.dart';

class AnywherePage extends StatelessWidget {
  AnywherePage({
    super.key,
    required this.onChangedPlatform,
  });

  static const String route = 'anywhere';
  static const String title = 'Context Menu Anywhere Example';
  static const String subtitle = 'A context menu outside of a text field';

  final PlatformCallback onChangedPlatform;

  final TextEditingController _materialController = TextEditingController(
    text: 'TextField shows the default menu still.',
  );
  final TextEditingController _cupertinoController = TextEditingController(
    text: 'CupertinoTextField shows the default menu still.',
  );
  final TextEditingController _editableController = TextEditingController(
    text: 'EditableText has no default menu, so it shows the custom one.',
  );

  static const String url = '$kCodeUrl/anywhere_page.dart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AnywherePage.title),
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
      body: ContextMenuRegion(
        contextMenuBuilder: (context, primaryAnchor, [secondaryAnchor]) {
          return AdaptiveTextSelectionToolbar.buttonItems(
            anchors: TextSelectionToolbarAnchors(
              primaryAnchor: primaryAnchor,
              secondaryAnchor: secondaryAnchor as Offset?,
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
