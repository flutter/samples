import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'constants.dart';
import 'platform_selector.dart';

class GlobalSelectionPage extends StatelessWidget {
  GlobalSelectionPage({
    super.key,
    required this.onChangedPlatform,
  });

  static const String route = 'global-selection';
  static const String title = 'Global Selection Example';
  static const String subtitle = 'Context menus in and out of global selection';
  static const String url = '$kCodeUrl/global_selection_page.dart';

  final PlatformCallback onChangedPlatform;

  final TextEditingController _controller = TextEditingController(
    text: 'TextFields still show their specific context menu.',
  );

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      contextMenuBuilder: (context, selectableRegionState) {
        return AdaptiveTextSelectionToolbar.buttonItems(
          anchors: selectableRegionState.contextMenuAnchors,
          buttonItems: <ContextMenuButtonItem>[
            ...selectableRegionState.contextMenuButtonItems,
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
      child: Scaffold(
        appBar: AppBar(
          title: const Text(GlobalSelectionPage.title),
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
            child: ListView(
              children: <Widget>[
                const SizedBox(height: 20.0),
                const Text(
                  'This entire page is wrapped in a SelectionArea with a custom context menu. Clicking on any of the plain text, including the AppBar title, will show the custom menu.',
                ),
                const SizedBox(height: 40.0),
                TextField(controller: _controller),
                const SizedBox(height: 40.0),
                const SelectableText(
                    'SelectableText also shows its own separate context menu.'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
