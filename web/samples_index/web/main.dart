import 'dart:html';

import 'package:mdc_web/mdc_web.dart';
import 'package:samples_index/browser.dart';

/// The Material text input for searching
MDCTextField searchBar;
MDCChipSet chipSet;

/// The current set of query parameters that determine how the cards are
/// filtered. e.g. {'search': 'kittens', 'platform': 'ios'}
final queryParams = <String, String>{};
const searchKey = 'search';
const typeKey = 'type';
const platformKey = 'platform';

void main() {
  // Initialize Material components
  MDCFloatingLabel(querySelector('.mdc-floating-label'));
  searchBar = MDCTextField(querySelector('#search-bar'));
  MDCRipple(querySelector('#clear-button'));

  // Listen for hash changes
  window.onHashChange.listen((_) {
    queryParams.clear();
    queryParams.addAll(parseHash(window.location.hash));
    setSearchBarText();
    setSelectedChips();
    filterCards();
  });

  // Use a ripple effect on all cards
  querySelectorAll('.mdc-card__primary-action').forEach((el) => MDCRipple(el)
    // Navigate to the description page when tapped
    ..listen('click', (e) {
      window.location.href = el.attributes['href'];
    }));

  // Filter cards on each keypress
  searchBar.listen('keydown', (Event e) async {
    await Future(() {});
    handleSearch();
  });

  // Update the URL only when the user is done typing in the search bar
  searchBar.listen('change', (Event e) {
    queryParams[searchKey] = searchBar.value;
    updateHash();
  });

  // Update the hash, cards, and text input when the clear button is pressed
  querySelector('#clear-button').onClick.listen((e) {
    queryParams.remove('search');
    updateHash();
    setSearchBarText();
    filterCards();
  });

  // Initialize chips
  chipSet = MDCChipSet(querySelector('.mdc-chip-set'));
  chipSet.listen('MDCChip:selection', (Event e) {
    // Get the query parameters for this chip
    var selectedChipIndex = chipSet.chips.indexWhere((chip) => chip.selected);
    var chipParams = paramsForChip(selectedChipIndex);

    // Overwrite query parameters with new ones
    queryParams.remove(typeKey);
    queryParams.remove(platformKey);
    queryParams.addAll(chipParams);
    updateHash();
    filterCards();
  });

  // Apply the search from the hash in the URL
  queryParams.addAll(parseHash(window.location.hash));
  setSearchBarText();
  setSelectedChips();

  // Filter cards if a filter is being applied
  if (queryParams.isNotEmpty) {
    filterCards();
  }
}

void setSearchBarText() {
  var search = queryParams[searchKey] ?? '';
  searchBar.value = search;
}

void setSelectedChips() {
  var type = queryParams.containsKey(typeKey) ? queryParams[typeKey] : '';
  if (type.isNotEmpty) {
    if (type == 'sample') {
      chipSet.chips[1].selected = true;
    }
    if (type == 'cookbook') {
      chipSet.chips[2].selected = true;
    }
  }

  // Apply the platform from the hash in the URL
  var platform =
      queryParams.containsKey(platformKey) ? queryParams[platformKey] : '';
  if (platform.isNotEmpty) {
    if (platform == 'web') {
      chipSet.chips[3].selected = true;
    }
  }
  if (platform.isEmpty && type.isEmpty) {
    chipSet.chips[0].selected = true;
  }
}

void handleSearch() {
  var search = searchBar.value;
  queryParams[searchKey] = search;
  filterCards();
}

void updateHash() {
  if (queryParams.isEmpty) {
    _replaceHash('');
    return;
  }
  _replaceHash(formatHash(queryParams));
}

void _replaceHash(String hash) {
  var currentUri = Uri.parse(window.location.href);
  window.history
      .replaceState(null, '', currentUri.replace(fragment: hash).toString());
}

void filterCards() {
  // The search query, e.g. 'kittens platform:web'
  var searchQuery = searchQueryFromParams(queryParams);

  // Filter out all elements with non-matching search-attrs
  var elements = querySelectorAll('[search-attrs]');
  for (var element in elements) {
    var searchAttributes = element.attributes['search-attrs'];
    if (matchesQuery(searchQuery, searchAttributes)) {
      element.hidden = false;
    } else {
      element.hidden = true;
    }
  }
}

Map<String, String> paramsForChip(int index) {
  switch (index) {
    case 1:
      return {typeKey: 'sample'};
    case 2:
      return {typeKey: 'cookbook'};
    case 3:
      return {platformKey: 'web'};
    case 0:
    default:
      return {};
  }
}
