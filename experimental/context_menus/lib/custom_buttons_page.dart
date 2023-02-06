import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'constants.dart';
import 'platform_selector.dart';

class CustomButtonsPage extends StatelessWidget {
  CustomButtonsPage({
    super.key,
    required this.onChangedPlatform,
  });

  static const String route = 'custom-buttons';
  static const String title = 'Custom Buttons';
  static const String subtitle =
      'The usual buttons, but with a custom appearance.';

  final PlatformCallback onChangedPlatform;

  final TextEditingController _controller = TextEditingController(
    text:
        'Show the menu to see the usual default buttons, but with a custom appearance.',
  );

  static const String url = '$kCodeUrl/custom_buttons_page.dart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(CustomButtonsPage.title),
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
          child: TextField(
            controller: _controller,
            maxLines: 4,
            minLines: 2,
            contextMenuBuilder: (context, editableTextState) {
              return AdaptiveTextSelectionToolbar(
                anchors: editableTextState.contextMenuAnchors,
                // Build the default buttons, but make them look custom.
                // Note that in a real project you may want to build
                // different buttons depending on the platform.
                children:
                    editableTextState.contextMenuButtonItems.map((buttonItem) {
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
                        CupertinoTextSelectionToolbarButton.getButtonLabel(
                            context, buttonItem),
                      ),
                    ),
                  );
                }).toList(),
              );
            },
          ),
        ),
      ),
    );
  }
}
