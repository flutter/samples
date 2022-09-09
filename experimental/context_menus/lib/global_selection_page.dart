import 'package:flutter/material.dart';

import 'context_menu_region.dart';

class GlobalSelectionPage extends StatelessWidget {
  GlobalSelectionPage({
    Key? key,
  }) : super(key: key);

  static const String route = 'global-selection';
  static const String title = 'Global Selection Example';
  static const String subtitle = 'Context menus in and out of global selection';

  final TextEditingController _controller = TextEditingController(
    text: 'Right click anywhere outside of a field to show a custom menu.',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(GlobalSelectionPage.title),
      ),
      body: ContextMenuRegion(
        contextMenuBuilder: (BuildContext context, Offset primaryAnchor, [Offset? secondaryAnchor]) {
          return AdaptiveTextSelectionToolbarButtonItems(
            primaryAnchor: primaryAnchor,
            secondaryAnchor: secondaryAnchor,
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
        child: Center(
          child: SizedBox(
            width: 200.0,
            child: SelectionArea(
              contextMenuBuilder: (BuildContext context, SelectableRegionState state, Offset primaryAnchor, [Offset? secondaryAnchor]) {
                return SelectableRegionContextMenuButtonItemsBuilder(
                  selectableRegionState: state,
                  builder: (BuildContext context, List<ContextMenuButtonItem> buttonItems) {
                    return AdaptiveTextSelectionToolbarButtonItems(
                      primaryAnchor: primaryAnchor,
                      secondaryAnchor: secondaryAnchor,
                      buttonItems: <ContextMenuButtonItem>[
                        ...buttonItems,
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
                );
              },
              child: ListView(
                children: <Widget>[
                  Container(height: 20.0),
                  const Text('I am selectable.'),
                  Container(height: 200.0),
                  TextField(controller: _controller),
                  Container(height: 100.0),
                  const Text('I am selectable too.'),
                  Container(height: 100.0),
                  const SelectableText('I am SelectableText.'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
