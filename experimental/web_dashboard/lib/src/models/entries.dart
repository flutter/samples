import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:web_dashboard/src/api/api.dart';

class EntriesModel extends ChangeNotifier {
  final Item _item;
  List<Entry> _entries;
  DashboardApi _api;
  StreamSubscription _subscription;

  List<Entry> get entries => _entries;

  EntriesModel(DashboardApi api, Item item)
      : _api = api,
        _item = item {
    // Subscribe to the entries associated with this item
    _api.entries.allEntriesStream(_item.id).listen(_handleUpdate);
  }

  void _handleUpdate(List<Entry> latest) {
    _entries = latest;
    notifyListeners();
  }

  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
