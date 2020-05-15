// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class DataTreeRule extends StatelessWidget {
  const DataTreeRule({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2,
      color: Theme.of(context).colorScheme.onBackground.withOpacity(0.1),
    );
  }
}

class DataTreeInkWell extends StatefulWidget {
  const DataTreeInkWell({Key key, this.onTap, this.isSelected, this.child})
      : super(key: key);

  final VoidCallback onTap;
  final bool isSelected;
  final Widget child;

  @override
  _DataTreeInkWellState createState() => _DataTreeInkWellState();
}

class _DataTreeInkWellState extends State<DataTreeInkWell>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation selectionColor;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 100), vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(DataTreeInkWell oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isSelected) {
      controller.forward();
    } else {
      controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    final backgroundColor = controller
        .drive(CurveTween(curve: Curves.fastOutSlowIn))
        .drive(ColorTween(
          begin: colorScheme.primary.withOpacity(0.0),
          end: colorScheme.primary.withOpacity(0.08),
        ));

    final iconColor = controller
        .drive(CurveTween(curve: Curves.fastOutSlowIn))
        .drive(ColorTween(
          begin: colorScheme.onBackground.withOpacity(0.54),
          end: colorScheme.onBackground.withOpacity(0.87),
        ));

    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return IconTheme(
          data: IconThemeData(color: iconColor.value),
          child: Container(
            color: backgroundColor.value,
            child: child,
          ),
        );
      },
      child: InkWell(
        onTap: widget.onTap,
        splashFactory: InkRipple.splashFactory,
        splashColor: colorScheme.primary.withOpacity(0.14),
        highlightColor: Colors.transparent,
        child: widget.child,
      ),
    );
  }
}

class DataTreeNode extends StatefulWidget {
  const DataTreeNode({
    Key key,
    this.leading,
    @required this.title,
    this.backgroundColor,
    this.onExpansionChanged,
    this.onSelectionChanged,
    this.children = const <Widget>[],
    this.initiallyExpanded = false,
    this.indent = 0,
    this.height = 36,
  })  : assert(initiallyExpanded != null),
        assert(indent != null && indent >= 0),
        super(key: key);

  final Widget leading;
  final Widget title;
  final ValueChanged<bool> onExpansionChanged;
  final ValueChanged<bool> onSelectionChanged;
  final List<Widget> children;
  final Color backgroundColor;
  final bool initiallyExpanded;
  final double indent;
  final double height;

  @override
  _DataTreeNodeState createState() => _DataTreeNodeState();
}

class _DataTreeNodeState extends State<DataTreeNode>
    with SingleTickerProviderStateMixin {
  static final Animatable<double> _easeInTween =
      CurveTween(curve: Curves.easeIn);
  static final Animatable<double> _halfTween =
      Tween<double>(begin: 0.0, end: 0.25);

  AnimationController _controller;
  Animation<double> _iconTurns;
  Animation<double> _heightFactor;

  bool _isExpanded = false;
  bool _isSelected = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 200), vsync: this);
    _heightFactor = _controller.drive(_easeInTween);
    _iconTurns = _controller.drive(_halfTween.chain(_easeInTween));
    _isExpanded = (PageStorage.of(context)?.readState(context) ??
        widget.initiallyExpanded) as bool;
    if (_isExpanded) {
      _controller.value = 1.0;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleNodeTap() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse().then<void>((value) {
          if (!mounted) {
            return;
          }
          setState(() {
            // Rebuild without widget.children.
          });
        });
      }
      PageStorage.of(context)?.writeState(context, _isExpanded);
    });
    if (widget.onExpansionChanged != null) {
      widget.onExpansionChanged(_isExpanded);
    }
  }

  void _handleLeafTap() {
    _isSelected = !_isSelected;
    if (widget.onSelectionChanged != null) {
      widget.onSelectionChanged(_isSelected);
    }
  }

  Widget _buildChildren(BuildContext context, Widget child) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        DataTreeInkWell(
          onTap: _handleNodeTap,
          isSelected: _isExpanded,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: widget.indent),
              RotationTransition(
                turns: _iconTurns,
                child: Icon(
                  Icons.arrow_right,
                  size: 20,
                ),
              ),
              const SizedBox(width: 8),
              Icon(
                Icons.folder,
                size: 20,
              ),
              const SizedBox(width: 16),
              widget.title,
            ],
          ),
        ),
        if (child != null) // If child == null, then this DataNode is closed.
          const DataTreeRule(),
        if (child != null)
          ClipRect(
            child: Align(
              alignment: Alignment.topLeft,
              heightFactor: _heightFactor.value,
              child: child,
            ),
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textColor = colorScheme.onBackground.withOpacity(0.87);

    final closed = !_isExpanded && _controller.isDismissed;

    return widget.children.isEmpty
        // Leaf node.
        ? DataTreeInkWell(
            onTap: _handleLeafTap,
            isSelected: _isSelected,
            child: Row(
              children: <Widget>[
                SizedBox(width: widget.indent),
                Icon(
                  Icons.web_asset,
                  size: 20,
                ),
                const SizedBox(width: 16),
                DefaultTextStyle(
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        color: textColor,
                      ),
                  child: widget.title,
                ),
              ],
            ),
          )
        // Not a leaf node.
        : AnimatedBuilder(
            animation: _controller.view,
            builder: _buildChildren,
            child: closed
                ? null
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      for (int index = 0;
                          index < (widget.children.length * 2) - 1;
                          index += 1)
                        (index % 2 == 1)
                            ? const DataTreeRule()
                            : widget.children[index ~/ 2],
                    ],
                  ),
          );
  }
}

// One entry in the multilevel list displayed by this app.
class Entry {
  Entry(this.title, [this.children = const <Entry>[]]);
  final String title;
  final List<Entry> children;
  bool isSelected = false;
  bool isEnabled = true;
}

// A visualization of one Entry based on DataTreeNode.
class EntryItem extends StatefulWidget {
  const EntryItem({Key key, this.entry}) : super(key: key);

  final Entry entry;

  @override
  _EntryItemState createState() => _EntryItemState();
}

class _EntryItemState extends State<EntryItem> {
  Widget _buildNodes(Entry root, double indent) {
    return DataTreeNode(
      key: PageStorageKey<Entry>(root),
      onSelectionChanged: (isSelected) {
        setState(() {
          root.isSelected = isSelected;
        });
      },
      title: Container(
        alignment: AlignmentDirectional.centerStart,
        height: 36,
        child: Text(root.title),
      ),
      indent: indent,
      children: root.children.map<Widget>((entry) {
        return _buildNodes(entry, indent + 28);
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildNodes(widget.entry, 16);
  }
}

class DataTree extends StatelessWidget {
  DataTree(this.entries)
      : assert(entries != null),
        assert(entries.isNotEmpty);
  final List<Entry> entries;

  @override
  Widget build(BuildContext context) => ListView.builder(
        itemCount: entries.length * 2 - 1,
        itemBuilder: (context, index) {
          if (index % 2 == 1) {
            return const DataTreeRule();
          }
          return EntryItem(
            entry: entries[index ~/ 2],
          );
        },
      );
}
