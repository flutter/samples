// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing_app/models/favorites.dart';

class FavoritesPage extends StatelessWidget {
  static String routeName = '/favorites_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),

      /// Build a ListView using the items in the [Favorites] Model.
      body: Consumer<Favorites>(
        builder: (context, value, child) => ListView.builder(
          itemCount: value.items.length,
          padding: const EdgeInsets.symmetric(vertical: 16),
          itemBuilder: (context, index) => FavoriteItemTile(value.items[index]),
        ),
      ),
    );
  }
}

class FavoriteItemTile extends StatelessWidget {
  final int itemNo;

  const FavoriteItemTile(
    this.itemNo,
  );

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
        ),
        trailing: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            // Remove the item from favorites.
            Provider.of<Favorites>(context, listen: false).remove(itemNo);
            // Show the user the message using Snackbar.
            Scaffold.of(context).showSnackBar(
              SnackBar(
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
