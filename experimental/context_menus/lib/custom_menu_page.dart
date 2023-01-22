import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'constants.dart';
import 'platform_selector.dart';

class CustomMenuPage extends StatelessWidget {
  CustomMenuPage({
    super.key,
    required this.onChangedPlatform,
  });

  static const String route = 'custom-menu';
  static const String title = 'Custom Menu';
  static const String subtitle =
      'A custom menu built from scratch, but using the default buttons.';

  final PlatformCallback onChangedPlatform;

  final TextEditingController _controller = TextEditingController(
    text: 'Show the menu to see a custom menu with the default buttons.',
  );

  static const String url = '$kCodeUrl/custom_menu_page.dart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(CustomMenuPage.title),
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
              return _MyContextMenu(
                anchor: editableTextState.contextMenuAnchors.primaryAnchor,
                children: AdaptiveTextSelectionToolbar.getAdaptiveButtons(
                  context,
                  editableTextState.contextMenuButtonItems,
                ).toList(),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _MyContextMenu extends StatelessWidget {
  const _MyContextMenu({
    required this.anchor,
    required this.children,
  });

  final Offset anchor;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: anchor.dy,
          left: anchor.dx,
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.amberAccent,
            child: Column(
              children: children,
            ),
          ),
        ),
      ],
    );
  }
}
