// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'api/item.dart';

/// This is the widget responsible for building the item in the list,
/// once we have the actual data [item].
class ItemTile extends StatelessWidget {
  final Item item;

  ItemTile({required this.item, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: AspectRatio(
          aspectRatio: 1,
          child: Container(
            color: item.color,
          ),
        ),
        title: Text(item.name, style: Theme.of(context).textTheme.headline6),
        trailing: Text('\$ ${(item.price / 100).toStringAsFixed(2)}'),
      ),
    );
  }
}

/// This is the widget responsible for building the "still loading" item
/// in the list (represented with "..." and a crossed square).
class LoadingItemTile extends StatelessWidget {
  const LoadingItemTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: AspectRatio(
          aspectRatio: 1,
          child: Placeholder(),
        ),
        title: Text('...', style: Theme.of(context).textTheme.headline6),
        trailing: Text('\$ ...'),
      ),
    );
  }
}
