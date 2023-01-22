import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'constants.dart';
import 'platform_selector.dart';

class FieldTypesPage extends StatelessWidget {
  FieldTypesPage({
    super.key,
    required this.onChangedPlatform,
  });

  static const String route = 'field-types';
  static const String title = 'The Context Menu in Different Field Types';
  static const String subtitle =
      'How contextual menus work in TextField, CupertinoTextField, and EditableText';
  static const String url = '$kCodeUrl/field_types_page.dart';

  final PlatformCallback onChangedPlatform;

  final TextEditingController _controller = TextEditingController(
    text:
        "Material text field shows the menu for any platform by default. You'll see the correct menu for your platform here.",
  );

  final TextEditingController _cupertinoController = TextEditingController(
    text:
        "CupertinoTextField can't show Material menus by default. On non-Apple platforms, you'll still see a Cupertino menu here.",
  );

  final TextEditingController _cupertinoControllerFixed = TextEditingController(
    text:
        "But CupertinoTextField can be made to adaptively show any menu. You'll see the correct menu for your platform here.",
  );

  final TextEditingController _cupertinoControllerForced =
      TextEditingController(
    text: 'Or forced to always show a specific menu (Material desktop menu).',
  );

  final TextEditingController _editableController = TextEditingController(
    text:
        "EditableText doesn't show any selection menu by itself, even when contextMenuBuilder is passed.",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(FieldTypesPage.title),
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
              TextField(
                maxLines: 3,
                controller: _controller,
              ),
              const SizedBox(height: 60.0),
              CupertinoTextField(
                maxLines: 3,
                controller: _cupertinoController,
              ),
              const SizedBox(height: 20.0),
              CupertinoTextField(
                maxLines: 3,
                controller: _cupertinoControllerFixed,
                contextMenuBuilder: (context, editableTextState) {
                  return AdaptiveTextSelectionToolbar.editableText(
                    editableTextState: editableTextState,
                  );
                },
              ),
              const SizedBox(height: 20.0),
              CupertinoTextField(
                maxLines: 3,
                controller: _cupertinoControllerForced,
                contextMenuBuilder: (context, editableTextState) {
                  return DesktopTextSelectionToolbar(
                    anchor: editableTextState.contextMenuAnchors.primaryAnchor,
                    children: AdaptiveTextSelectionToolbar.getAdaptiveButtons(
                      context,
                      editableTextState.contextMenuButtonItems,
                    ).toList(),
                  );
                },
              ),
              const SizedBox(height: 60.0),
              Container(
                color: Colors.white,
                child: EditableText(
                  maxLines: 3,
                  controller: _editableController,
                  focusNode: FocusNode(),
                  style: Typography.material2021().black.displayMedium!,
                  cursorColor: Colors.blue,
                  backgroundCursorColor: Colors.white,
                  // contextMenuBuilder doesn't do anything here!
                  // EditableText has no built-in gesture detection for
                  // selection. A wrapper would have to implement
                  // TextSelectionGestureDetectorBuilderDelegate, etc.
                  contextMenuBuilder: (context, editableTextState) {
                    return AdaptiveTextSelectionToolbar.editableText(
                      editableTextState: editableTextState,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
