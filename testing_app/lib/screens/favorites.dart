// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing_app/models/favorites.dart';

class FavoritesPage extends StatelessWidget {
  static const routeName = 'favorites_page';
  static const fullPath = '/$routeName';

  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
      ),
      body: Consumer<Favorites>(
        builder: (context, value, child) => value.items.isNotEmpty
            ? ListView.builder(
                itemCount: value.items.length,
                padding: const EdgeInsets.symmetric(vertical: 16),
                itemBuilder: (context, index) =>
                    FavoriteItemTile(value.items[index]),
              )
            : const Center(
                child: Text('No favorites added.'),
              ),
      ),
    );
  }
}

class FavoriteItemTile extends StatelessWidget {
  final int itemNo;

  const FavoriteItemTile(this.itemNo, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.primaries[itemNo % Colors.primaries.length],
        ),
        title: Text(
          'Item $itemNo',
          key: Key('favorites_text_$itemNo'),
        ),
        trailing: IconButton(
          key: Key('remove_icon_$itemNo'),
          icon: const Icon(Icons.close),
          onPressed: () {
            context.read<Favorites>().remove(itemNo);
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Removed from favorites.'),
                duration: Duration(seconds: 1),
              ),
            );
          },
        ),
      ),
    );
  }
}
