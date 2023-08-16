// Copyright 2022, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:collection';
import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/widgets.dart';
import 'package:logging/logging.dart';

import '../settings/settings.dart';
import 'songs.dart';
import 'sounds.dart';

/// Allows playing music and sound. A facade to `package:audioplayers`.
class AudioController {
  static final _log = Logger('AudioController');

  final AudioPlayer _musicPlayer;

  /// This is a list of [AudioPlayer] instances which are rotated to play
  /// sound effects.
  final List<AudioPlayer> _sfxPlayers;

  int _currentSfxPlayer = 0;

  final Queue<Song> _playlist;

  final Random _random = Random();

  SettingsController? _settings;

  ValueNotifier<AppLifecycleState>? _lifecycleNotifier;

  /// Creates an instance that plays music and sound.
  ///
  /// Use [polyphony] to configure the number of sound effects (SFX) that can
  /// play at the same time. A [polyphony] of `1` will always only play one
  /// sound (a new sound will stop the previous one). See discussion
  /// of [_sfxPlayers] to learn why this is the case.
  ///
  /// Background music does not count into the [polyphony] limit. Music will
  /// never be overridden by sound effects because that would be silly.
  AudioController({int polyphony = 2})
      : assert(polyphony >= 1),
        _musicPlayer = AudioPlayer(playerId: 'musicPlayer'),
        _sfxPlayers = Iterable.generate(
                polyphony, (i) => AudioPlayer(playerId: 'sfxPlayer#$i'))
            .toList(growable: false),
        _playlist = Queue.of(List<Song>.of(songs)..shuffle()) {
    _musicPlayer.onPlayerComplete.listen(_changeSong);
  }

  /// Enables the [AudioController] to listen to [AppLifecycleState] events,
  /// and therefore do things like stopping playback when the game
  /// goes into the background.
  void attachLifecycleNotifier(
      ValueNotifier<AppLifecycleState> lifecycleNotifier) {
    _lifecycleNotifier?.removeListener(_handleAppLifecycle);

    lifecycleNotifier.addListener(_handleAppLifecycle);
    _lifecycleNotifier = lifecycleNotifier;
  }

  /// Enables the [AudioController] to track changes to settings.
  /// Namely, when any of [SettingsController.muted],
  /// [SettingsController.musicOn] or [SettingsController.soundsOn] changes,
  /// the audio controller will act accordingly.
  void attachSettings(SettingsController settingsController) {
    if (_settings == settingsController) {
      // Already attached to this instance. Nothing to do.
      return;
    }

    // Remove handlers from the old settings controller if present
    final oldSettings = _settings;
    if (oldSettings != null) {
      oldSettings.muted.removeListener(_mutedHandler);
      oldSettings.musicOn.removeListener(_musicOnHandler);
      oldSettings.soundsOn.removeListener(_soundsOnHandler);
    }

    _settings = settingsController;

    // Add handlers to the new settings controller
    settingsController.muted.addListener(_mutedHandler);
    settingsController.musicOn.addListener(_musicOnHandler);
    settingsController.soundsOn.addListener(_soundsOnHandler);

    if (!settingsController.muted.value && settingsController.musicOn.value) {
      _startMusic();
    }
  }

  void dispose() {
    _lifecycleNotifier?.removeListener(_handleAppLifecycle);
    _stopAllSound();
    _musicPlayer.dispose();
    for (final player in _sfxPlayers) {
      player.dispose();
    }
  }

  /// Preloads all sound effects.
  Future<void> initialize() async {
    _log.info('Preloading sound effects');
    // This assumes there is only a limited number of sound effects in the game.
    // If there are hundreds of long sound effect files, it's better
    // to be more selective when preloading.
    await AudioCache.instance.loadAll(SfxType.values
        .expand(soundTypeToFilename)
        .map((path) => 'sfx/$path')
        .toList());
  }

  /// Plays a single sound effect, defined by [type].
  ///
  /// The controller will ignore this call when the attached settings'
  /// [SettingsController.muted] is `true` or if its
  /// [SettingsController.soundsOn] is `false`.
  void playSfx(SfxType type) {
    final muted = _settings?.muted.value ?? true;
    if (muted) {
      _log.info(() => 'Ignoring playing sound ($type) because audio is muted.');
      return;
    }
    final soundsOn = _settings?.soundsOn.value ?? false;
    if (!soundsOn) {
      _log.info(() =>
          'Ignoring playing sound ($type) because sounds are turned off.');
      return;
    }

    _log.info(() => 'Playing sound: $type');
    final options = soundTypeToFilename(type);
    final filename = options[_random.nextInt(options.length)];
    _log.info(() => '- Chosen filename: $filename');

    final currentPlayer = _sfxPlayers[_currentSfxPlayer];
    currentPlayer.play(AssetSource('sfx/$filename'),
        volume: soundTypeToVolume(type));
    _currentSfxPlayer = (_currentSfxPlayer + 1) % _sfxPlayers.length;
  }

  void _changeSong(void _) {
    _log.info('Last song finished playing.');
    // Put the song that just finished playing to the end of the playlist.
    _playlist.addLast(_playlist.removeFirst());
    // Play the next song.
    _playFirstSongInPlaylist();
  }

  void _handleAppLifecycle() {
    switch (_lifecycleNotifier!.value) {
      case AppLifecycleState.paused:
      case AppLifecycleState.detached:
      case AppLifecycleState.hidden:
        _stopAllSound();
      case AppLifecycleState.resumed:
        if (!_settings!.muted.value && _settings!.musicOn.value) {
          _resumeMusic();
        }
      case AppLifecycleState.inactive:
        // No need to react to this state change.
        break;
    }
  }

  void _musicOnHandler() {
    if (_settings!.musicOn.value) {
      // Music got turned on.
      if (!_settings!.muted.value) {
        _resumeMusic();
      }
    } else {
      // Music got turned off.
      _stopMusic();
    }
  }

  void _mutedHandler() {
    if (_settings!.muted.value) {
      // All sound just got muted.
      _stopAllSound();
    } else {
      // All sound just got un-muted.
      if (_settings!.musicOn.value) {
        _resumeMusic();
      }
    }
  }

  Future<void> _playFirstSongInPlaylist() async {
    _log.info(() => 'Playing ${_playlist.first} now.');
    await _musicPlayer.play(AssetSource('music/${_playlist.first.filename}'));
  }

  Future<void> _resumeMusic() async {
    _log.info('Resuming music');
    switch (_musicPlayer.state) {
      case PlayerState.paused:
        _log.info('Calling _musicPlayer.resume()');
        try {
          await _musicPlayer.resume();
        } catch (e) {
          // Sometimes, resuming fails with an "Unexpected" error.
          _log.severe(e);
          await _playFirstSongInPlaylist();
        }
      case PlayerState.stopped:
        _log.info("resumeMusic() called when music is stopped. "
            "This probably means we haven't yet started the music. "
            "For example, the game was started with sound off.");
        await _playFirstSongInPlaylist();
      case PlayerState.playing:
        _log.warning('resumeMusic() called when music is playing. '
            'Nothing to do.');
      case PlayerState.completed:
        _log.warning('resumeMusic() called when music is completed. '
            "Music should never be 'completed' as it's either not playing "
            "or looping forever.");
        await _playFirstSongInPlaylist();
      default:
        _log.warning('Unhandled PlayerState: ${_musicPlayer.state}');
    }
  }

  void _soundsOnHandler() {
    for (final player in _sfxPlayers) {
      if (player.state == PlayerState.playing) {
        player.stop();
      }
    }
  }

  void _startMusic() {
    _log.info('starting music');
    _playFirstSongInPlaylist();
  }

  void _stopAllSound() {
    if (_musicPlayer.state == PlayerState.playing) {
      _musicPlayer.pause();
    }
    for (final player in _sfxPlayers) {
      player.stop();
    }
  }

  void _stopMusic() {
    _log.info('Stopping music');
    if (_musicPlayer.state == PlayerState.playing) {
      _musicPlayer.pause();
    }
  }
}
