// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'api/fetch.dart';
import 'api/item.dart';
import 'api/page.dart';

/// The [Catalog] holds items in memory, provides a synchronous access
/// to them via [getByIndex], and notifies listeners when there is any change.
class Catalog extends ChangeNotifier {
  /// This is the maximum number of the items we want in memory in each
  /// direction from the current position. For example, if the user
  /// is currently looking at item number 400, we don't want item number
  /// 0 to be kept in memory.
  static const maxCacheDistance = 100;

  /// The internal store of pages that we got from [fetchPage].
  /// The key of the map is the starting index of the page, for faster
  /// access.
  final Map<int, ItemPage> _pages = {};

  /// A set of pages (represented by their starting index) that have started
  /// the fetch process but haven't ended it yet.
  ///
  /// This is to prevent fetching of a page several times in a row. When a page
  /// is already being fetched, we don't initiate another fetch request.
  final Set<int> _pagesBeingFetched = {};

  /// The size of the catalog. This is `null` at first, and only when the user
  /// reaches the end of the catalog, it will hold the actual number.
  int? itemCount;

  /// After the catalog is disposed, we don't allow it to call
  /// [notifyListeners].
  bool _isDisposed = false;

  @override
  void dispose() {
    _isDisposed = true;
    super.dispose();
  }

  /// This is a synchronous method that returns the item at [index].
  ///
  /// If the item is already in memory, this will just return it. Otherwise,
  /// this method will initiate a fetch of the corresponding page, and will
  /// return [Item.loading].
  ///
  /// The UI will be notified via [notifyListeners] when the fetch
  /// is completed. At that time, calling this method will return the newly
  /// fetched item.
  Item getByIndex(int index) {
    // Compute the starting index of the page where this item is located.
    // For example, if [index] is `42` and [itemsPerPage] is `20`,
    // then `index ~/ itemsPerPage` (integer division)
    // evaluates to `2`, and `2 * 20` is `40`.
    var startingIndex = (index ~/ itemsPerPage) * itemsPerPage;

    // If the corresponding page is already in memory, return immediately.
    if (_pages.containsKey(startingIndex)) {
      var item = _pages[startingIndex]!.items[index - startingIndex];
      return item;
    }

    // We don't have the data yet. Start fetching it.
    _fetchPage(startingIndex);

    // In the meantime, return a placeholder.
    return Item.loading();
  }

  /// This method initiates fetching of the [ItemPage] at [startingIndex].
  Future<void> _fetchPage(int startingIndex) async {
    if (_pagesBeingFetched.contains(startingIndex)) {
      // Page is already being fetched. Ignore the redundant call.
      return;
    }

    _pagesBeingFetched.add(startingIndex);
    final page = await fetchPage(startingIndex);
    _pagesBeingFetched.remove(startingIndex);

    if (!page.hasNext) {
      // The returned page has no next page. This means we now know the size
      // of the catalog.
      itemCount = startingIndex + page.items.length;
    }

    // Store the new page.
    _pages[startingIndex] = page;
    _pruneCache(startingIndex);

    if (!_isDisposed) {
      // Notify the widgets that are listening to the catalog that they
      // should rebuild.
      notifyListeners();
    }
  }

  /// Removes item pages that are too far away from [currentStartingIndex].
  void _pruneCache(int currentStartingIndex) {
    // It's bad practice to modify collections while iterating over them.
    // So instead, we'll store the keys to remove in a separate Set.
    final keysToRemove = <int>{};
    for (final key in _pages.keys) {
      if ((key - currentStartingIndex).abs() > maxCacheDistance) {
        // This page's starting index is too far away from the current one.
        // We'll remove it.
        keysToRemove.add(key);
      }
    }
    for (final key in keysToRemove) {
      _pages.remove(key);
    }
  }
}
