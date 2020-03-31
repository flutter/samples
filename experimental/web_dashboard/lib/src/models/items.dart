import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:web_dashboard/src/api/api.dart';

import 'entries.dart';

class ItemsModel extends ChangeNotifier {
  DashboardApi _api;
  List<Item> _items;
  StreamSubscription _subscription;

  List<Item> get items => _items;

  ItemsModel(this._api) {
    // Subscribe to this user's items
    _subscription = _api.items.allItemsStream().listen(_handleUpdate);
  }

  void _handleUpdate(List<Item> latest) {
    _items = latest;
    notifyListeners();
  }

  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
