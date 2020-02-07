// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

abstract class BackLayerItem extends StatefulWidget {
  final int index;

  BackLayerItem({Key key, this.index}) : super(key: key);
}

class BackLayer extends StatefulWidget {
  final List<BackLayerItem> backLayerItems;
  final TabController tabController;

  const BackLayer({Key key, this.backLayerItems, this.tabController})
      : super(key: key);

  @override
  _BackLayerState createState() => _BackLayerState();
}

class _BackLayerState extends State<BackLayer> {
  @override
  void initState() {
    super.initState();
    widget.tabController.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    final tabIndex = widget.tabController.index;
    return DefaultFocusTraversal(
      policy: WidgetOrderFocusTraversalPolicy(),
      child: IndexedStack(
        index: tabIndex,
        children: [
          for (BackLayerItem backLayerItem in widget.backLayerItems)
            Focus(
              canRequestFocus: backLayerItem.index == tabIndex,
              debugLabel: 'backLayerItem: $backLayerItem',
              child: backLayerItem,
            )
        ],
      ),
    );
  }
}
