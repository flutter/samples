import 'dart:async';

import 'package:games_services/games_services.dart' as gs;
import 'package:logging/logging.dart';

import 'score.dart';

class GamesServicesController {
  static final Logger _log = Logger('GamesServicesController');

  final Completer<bool> _signedInCompleter = Completer();

  Future<bool> get signedIn => _signedInCompleter.future;

  Future<void> awardAchievement(
      {required String iOS, required String android}) async {
    if (!await signedIn) {
      _log.severe('Trying to award achievement when not logged in.');
      return;
    }

    try {
      await gs.GamesServices.unlock(
        achievement: gs.Achievement(
          androidID: android,
          iOSID: iOS,
        ),
      );
    } catch (e) {
      _log.severe('Cannot award achievement: $e');
    }
  }

  Future<void> initialize() async {
    try {
      await gs.GamesServices.signIn();
      // The API is unclear so we're checking to be sure. The above call
      // returns a String, not a boolean, and there's no documentation
      // as to whether every non-error result means we're safely signed in.
      final signedIn = await gs.GamesServices.isSignedIn;
      _signedInCompleter.complete(signedIn);
    } catch (e) {
      _log.severe('Cannot log into GamesServices: $e');
      _signedInCompleter.complete(false);
    }
  }

  Future<void> showAchievements() async {
    if (!await signedIn) {
      _log.severe('Trying to show achievements when not logged in.');
      return;
    }

    try {
      await gs.GamesServices.showAchievements();
    } catch (e) {
      _log.severe('Cannot show achievements: $e');
    }
  }

  Future<void> showLeaderboard() async {
    if (!await signedIn) {
      _log.severe('Trying to show leaderboard when not logged in.');
      return;
    }

    try {
      await gs.GamesServices.showLeaderboards(
        iOSLeaderboardID: "game_template.highest_score",
        androidLeaderboardID: "sOmE_iD_fRoM_gPlAy",
      );
    } catch (e) {
      _log.severe('Cannot show leaderboard: $e');
    }
  }

  Future<void> submitLeaderboardScore(Score score) async {
    if (!await signedIn) {
      _log.severe('Trying to award achievement when not logged in.');
      return;
    }

    _log.info('Submitting $score to leaderboard.');

    try {
      await gs.GamesServices.submitScore(
        score: gs.Score(
          iOSLeaderboardID: 'game_template.highest_score',
          androidLeaderboardID: 'sOmE_iD_fRoM_gPlAy',
          value: score.score,
        ),
      );
    } catch (e) {
      _log.severe('Cannot submit leaderboard score: $e');
    }
  }
}
