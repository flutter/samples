import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:game_template/src/player_progress/persistence/player_progress_persistence.dart';

class PlayerProgress extends ChangeNotifier {
  final PlayerProgressPersistence _store;

  int _highestLevelReached = 0;

  PlayerProgress(this._store);

  int get highestLevelReached => _highestLevelReached;

  Future<void> getLatestFromStore() async {
    final level = await _store.getHighestLevelReached();
    if (level > _highestLevelReached) {
      _highestLevelReached = level;
      notifyListeners();
    } else if (level < _highestLevelReached) {
      _store.saveHighestLevelReached(_highestLevelReached);
    }
  }

  void reset() {
    _highestLevelReached = 0;
    notifyListeners();
    _store.saveHighestLevelReached(_highestLevelReached);
  }

  static const maxHighestScoresPerPlayer = 10;

  void setLevelReached(int level) {
    if (level > _highestLevelReached) {
      _highestLevelReached = level;
      notifyListeners();

      unawaited(_store.saveHighestLevelReached(level));
    }
  }
}
