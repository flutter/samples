import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'constants.dart';
import 'platform_selector.dart';

class ReorderedButtonsPage extends StatelessWidget {
  ReorderedButtonsPage({
    super.key,
    required this.onChangedPlatform,
  });

  static const String route = 'reordered-buttons';
  static const String title = 'Reordered Buttons';
  static const String subtitle = 'The usual buttons, but in a different order.';
  static const String url = '$kCodeUrl/reordered_buttons_page.dart';

  final PlatformCallback onChangedPlatform;

  final TextEditingController _controllerNormal = TextEditingController(
    text: 'This button has the default buttons for reference.',
  );

  final TextEditingController _controllerReordered = TextEditingController(
    text: 'This field has reordered buttons.',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ReorderedButtonsPage.title),
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
              TextField(
                maxLines: 2,
                controller: _controllerNormal,
              ),
              const SizedBox(height: 20.0),
              TextField(
                controller: _controllerReordered,
                maxLines: 2,
                contextMenuBuilder: (context, editableTextState) {
                  // Reorder the button datas by type.
                  final HashMap<ContextMenuButtonType, ContextMenuButtonItem>
                      buttonItemsMap =
                      HashMap<ContextMenuButtonType, ContextMenuButtonItem>();
                  for (ContextMenuButtonItem buttonItem
                      in editableTextState.contextMenuButtonItems) {
                    buttonItemsMap[buttonItem.type] = buttonItem;
                  }
                  final List<ContextMenuButtonItem> reorderedButtonItems =
                      <ContextMenuButtonItem>[
                    if (buttonItemsMap
                        .containsKey(ContextMenuButtonType.selectAll))
                      buttonItemsMap[ContextMenuButtonType.selectAll]!,
                    if (buttonItemsMap.containsKey(ContextMenuButtonType.paste))
                      buttonItemsMap[ContextMenuButtonType.paste]!,
                    if (buttonItemsMap.containsKey(ContextMenuButtonType.copy))
                      buttonItemsMap[ContextMenuButtonType.copy]!,
                    if (buttonItemsMap.containsKey(ContextMenuButtonType.cut))
                      buttonItemsMap[ContextMenuButtonType.cut]!,
                  ];
                  return AdaptiveTextSelectionToolbar.buttonItems(
                    anchors: editableTextState.contextMenuAnchors,
                    buttonItems: reorderedButtonItems,
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
