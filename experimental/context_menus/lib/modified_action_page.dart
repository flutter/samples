import 'package:flutter/material.dart';

class ModifiedActionPage extends StatelessWidget {
  ModifiedActionPage({
    Key? key,
  }) : super(key: key);

  static const String route = 'modified-action';
  static const String title = 'Modified Action';
  static const String subtitle = 'The copy button copies but also shows a menu.';

  final TextEditingController _controller = TextEditingController(
    text: 'Try using the copy button.',
  );

  DialogRoute _showDialog (BuildContext context) {
    return DialogRoute<void>(
      context: context,
      builder: (BuildContext context) =>
        const AlertDialog(title: Text('Copied, but also showed this dialog.')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ModifiedActionPage.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            controller: _controller,
            contextMenuBuilder: (BuildContext context, EditableTextState editableTextState, Offset primaryAnchor, [Offset? secondaryAnchor]) {
              return EditableTextContextMenuButtonItemsBuilder(
                editableTextState: editableTextState,
                builder: (BuildContext context, List<ContextMenuButtonItem> buttonItems) {
                  // Modify the copy buttonItem to show a dialog after copying.
                  final int copyButtonIndex = buttonItems.indexWhere(
                    (ContextMenuButtonItem buttonItem) {
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
                  return AdaptiveTextSelectionToolbarButtonItems(
                    primaryAnchor: primaryAnchor,
                    secondaryAnchor: secondaryAnchor,
                    buttonItems: buttonItems,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
