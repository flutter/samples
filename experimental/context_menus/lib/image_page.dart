import 'package:flutter/material.dart';

import 'context_menu_region.dart';

class ImagePage extends StatelessWidget {
  ImagePage({
    Key? key,
  }) : super(key: key);

  static const String route = 'image';
  static const String title = 'ContextMenu on an Image';
  static const String subtitle = 'A ContextMenu the displays on an Image widget';

  final TextEditingController _controller = TextEditingController(
    text: 'Right click or long press on the image to see a special menu',
  );

  DialogRoute _showDialog (BuildContext context) {
    return DialogRoute<void>(
      context: context,
      builder: (BuildContext context) =>
        const AlertDialog(title: Text('Image saved! (not really though)')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ImagePage.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(height: 200.0),
          ContextMenuRegion(
            contextMenuBuilder: (BuildContext context, Offset primaryAnchor, [Offset? secondaryAnchor]) {
              return AdaptiveTextSelectionToolbarButtonItems(
                primaryAnchor: primaryAnchor,
                secondaryAnchor: secondaryAnchor,
                buttonItems: <ContextMenuButtonItem>[
                  ContextMenuButtonItem(
                    onPressed: () {
                      ContextMenuController.removeAny();
                      Navigator.of(context).push(_showDialog(context));
                    },
                    label: 'Save',
                  ),
                ],
              );
            },
            child: SizedBox(
              width: 200.0,
              height: 200.0,
              child: Image.asset('flutter.jpg'),
            ),
          ),
          Container(height: 20.0),
          TextField(controller: _controller),
        ],
      ),
    );
  }
}
