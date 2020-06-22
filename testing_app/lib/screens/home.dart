// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing_app/models/favorites.dart';
import 'package:testing_app/screens/favorites.dart';

class HomePage extends StatelessWidget {
  static String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Testing Sample'),
        actions: <Widget>[
          FlatButton.icon(
            textColor: Colors.white,
            onPressed: () {
              /// Open [FavoritesPage] to show list of favorites.
              Navigator.pushNamed(context, FavoritesPage.routeName);
            },
            icon: Icon(Icons.favorite_border),
            label: Text('Favorites'),
          ),
        ],
      ),

      /// Show a ListView with [ItemTile] as items.
      body: ListView.builder(
        itemCount: 50,
        padding: const EdgeInsets.symmetric(vertical: 16),
        itemBuilder: (context, index) => ItemTile(index),
      ),
    );
  }
}

class ItemTile extends StatelessWidget {
  final int itemNo;

  const ItemTile(
    this.itemNo,
  );

  @override
  Widget build(BuildContext context) {
    // Create a reference of the Favorites Model.
    var favoritesList = Provider.of<Favorites>(context);

    // Check if the item is present in the favorites list.
    var isFavorite = favoritesList.items.contains(itemNo);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.primaries[itemNo % Colors.primaries.length],
        ),
        title: Text(
          'Item $itemNo',
          key: Key('text_$itemNo'),
        ),
        trailing: IconButton(
          key: Key('icon_$itemNo'),
          // Show a solid favorite icon if the item is a favorite,
          // else show a favorite icon with border.
          icon: isFavorite ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
          onPressed: () {
            // Add the item to favorites if not present in the list,
            // else remove it.
            !isFavorite
                ? favoritesList.add(itemNo)
                : favoritesList.remove(itemNo);
            isFavorite = favoritesList.items.contains(itemNo);
            // Show the message of performed task to the user.
            Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text(isFavorite
                    ? 'Added to favorites.'
                    : 'Removed from favorites.'),
                duration: Duration(seconds: 1),
              ),
            );
          },
        ),
      ),
    );
  }
}
