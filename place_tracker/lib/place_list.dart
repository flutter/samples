// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'place.dart';
import 'place_details.dart';
import 'place_tracker_app.dart';

class PlaceList extends StatefulWidget {
  const PlaceList({Key? key}) : super(key: key);

  @override
  PlaceListState createState() => PlaceListState();
}

class PlaceListState extends State<PlaceList> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    var state = Provider.of<AppState>(context);
    return Column(
      children: [
        _ListCategoryButtonBar(
          selectedCategory: state.selectedCategory,
          onCategoryChanged: (value) => _onCategoryChanged(value),
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 8.0),
            controller: _scrollController,
            shrinkWrap: true,
            children: state.places
                .where((place) => place.category == state.selectedCategory)
                .map((place) => _PlaceListTile(
                      place: place,
                      onPlaceChanged: (value) => _onPlaceChanged(value),
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }

  void _onCategoryChanged(PlaceCategory newCategory) {
    _scrollController.jumpTo(0.0);
    Provider.of<AppState>(context, listen: false)
        .setSelectedCategory(newCategory);
  }

  void _onPlaceChanged(Place value) {
    // Replace the place with the modified version.
    final newPlaces =
        List<Place>.from(Provider.of<AppState>(context, listen: false).places);
    final index = newPlaces.indexWhere((place) => place.id == value.id);
    newPlaces[index] = value;

    Provider.of<AppState>(context, listen: false).setPlaces(newPlaces);
  }
}

class _CategoryButton extends StatelessWidget {
  final PlaceCategory category;

  final bool selected;
  final ValueChanged<PlaceCategory> onCategoryChanged;
  const _CategoryButton({
    Key? key,
    required this.category,
    required this.selected,
    required this.onCategoryChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late String _buttonText;
    switch (category) {
      case PlaceCategory.favorite:
        _buttonText = 'Favorites';
        break;
      case PlaceCategory.visited:
        _buttonText = 'Visited';
        break;
      case PlaceCategory.wantToGo:
        _buttonText = 'Want To Go';
    }

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: selected ? Colors.blue : Colors.transparent,
          ),
        ),
      ),
      child: ButtonTheme(
        height: 50.0,
        child: TextButton(
          child: Text(
            _buttonText,
            style: TextStyle(
              fontSize: selected ? 20.0 : 18.0,
              color: selected ? Colors.blue : Colors.black87,
            ),
          ),
          onPressed: () => onCategoryChanged(category),
        ),
      ),
    );
  }
}

class _ListCategoryButtonBar extends StatelessWidget {
  final PlaceCategory selectedCategory;

  final ValueChanged<PlaceCategory> onCategoryChanged;
  const _ListCategoryButtonBar({
    Key? key,
    required this.selectedCategory,
    required this.onCategoryChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _CategoryButton(
          category: PlaceCategory.favorite,
          selected: selectedCategory == PlaceCategory.favorite,
          onCategoryChanged: onCategoryChanged,
        ),
        _CategoryButton(
          category: PlaceCategory.visited,
          selected: selectedCategory == PlaceCategory.visited,
          onCategoryChanged: onCategoryChanged,
        ),
        _CategoryButton(
          category: PlaceCategory.wantToGo,
          selected: selectedCategory == PlaceCategory.wantToGo,
          onCategoryChanged: onCategoryChanged,
        ),
      ],
    );
  }
}

class _PlaceListTile extends StatelessWidget {
  final Place place;

  final ValueChanged<Place> onPlaceChanged;
  const _PlaceListTile({
    Key? key,
    required this.place,
    required this.onPlaceChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push<void>(
        context,
        MaterialPageRoute(builder: (context) {
          return PlaceDetails(
            place: place,
            onChanged: (value) => onPlaceChanged(value),
          );
        }),
      ),
      child: Container(
        padding: const EdgeInsets.only(top: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              place.name,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
              maxLines: 3,
            ),
            Row(
              children: List.generate(5, (index) {
                return Icon(
                  Icons.star,
                  size: 28.0,
                  color: place.starRating > index
                      ? Colors.amber
                      : Colors.grey[400],
                );
              }).toList(),
            ),
            Text(
              place.description ?? '',
              style: Theme.of(context).textTheme.subtitle1,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 16.0),
            Divider(
              height: 2.0,
              color: Colors.grey[700],
            ),
          ],
        ),
      ),
    );
  }
}
