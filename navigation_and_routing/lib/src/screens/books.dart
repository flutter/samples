// Copyright 2021, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BooksScreen extends StatefulWidget {
  final Widget child;
  final ValueChanged<int> onTap;

  const BooksScreen({
    required this.child,
    required this.onTap,
    super.key,
  });

  @override
  State<BooksScreen> createState() => _BooksScreenState();
}

class _BooksScreenState extends State<BooksScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this)
      ..addListener(_handleTabIndexChanged);
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabIndexChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _tabController.index = _getSelectedIndex(GoRouter.of(context).location);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Books'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              text: 'Popular',
              icon: Icon(Icons.people),
            ),
            Tab(
              text: 'New',
              icon: Icon(Icons.new_releases),
            ),
            Tab(
              text: 'All',
              icon: Icon(Icons.list),
            ),
          ],
        ),
      ),
      body: widget.child,
    );
  }

  void _handleTabIndexChanged() {
    if (_tabController.index != _getSelectedIndex(GoRouter.of(context).location)) {
      widget.onTap(_tabController.index);
    }
  }

  int _getSelectedIndex(String pathTemplate) {
    if (pathTemplate.startsWith('/books/popular')) return 0;
    if (pathTemplate.startsWith('/books/new')) return 1;
    if (pathTemplate.startsWith('/books/all')) return 2;
    return 0;
  }
}
