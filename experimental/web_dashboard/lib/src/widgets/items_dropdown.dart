import 'dart:async';

import 'package:flutter/material.dart';
import 'package:web_dashboard/src/api/api.dart';

/// Subscribes to the latest list of items and allows the user to select one.
class ItemsDropdown extends StatefulWidget {
  final ItemApi api;
  final ValueChanged<Item> onSelected;

  ItemsDropdown({
    @required this.api,
    @required this.onSelected,
  });

  @override
  _ItemsDropdownState createState() => _ItemsDropdownState();
}

class _ItemsDropdownState extends State<ItemsDropdown> {
  Item _selectedItem;
  List<Item> _items = [];
  StreamSubscription _itemSubscription;

  void initState() {
    super.initState();
    _fetchItems();
    _itemSubscription = widget.api.allItemsStream().listen((items) {
      setState(() {
        _items = items;
      });
    });
  }

  void dispose() {
    _itemSubscription.cancel();
    super.dispose();
  }

  Future _fetchItems() async {
    var items = await widget.api.list();

    if (items.isEmpty) {
      return;
    }

    setState(() {
      _items = items;
    });

    // Select the first item.
    _selectedItem = items.first;
    widget.onSelected(items.first);
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: _selectedItem,
      items: _items
          .map((i) => DropdownMenuItem<Item>(child: Text(i.name), value: i))
          .toList(),
      onChanged: (item) {
        setState(() {
          _selectedItem = item;
        });

        widget.onSelected(item);
      },
    );
  }
}
