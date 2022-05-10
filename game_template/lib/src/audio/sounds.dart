// Copyright 2022, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

List<String> soundTypeToFilename(SfxType type) {
  switch (type) {
    case SfxType.huhsh:
      return const [
        'hash1.mp3',
        'hash2.mp3',
        'hash3.mp3',
      ];
    case SfxType.wssh:
      return const [
        'wssh1.mp3',
        'wssh2.mp3',
        'dsht1.mp3',
        'ws1.mp3',
        'spsh1.mp3',
        'hh1.mp3',
        'hh2.mp3',
        'kss1.mp3',
      ];
    case SfxType.buttonTap:
      return const [
        'k1.mp3',
        'k2.mp3',
        'p1.mp3',
        'p2.mp3',
      ];
    case SfxType.congrats:
      return const [
        'yay1.mp3',
        'wehee1.mp3',
        'oo1.mp3',
      ];
    case SfxType.erase:
      return const [
        'fwfwfwfwfw1.mp3',
        'fwfwfwfw1.mp3',
      ];
    case SfxType.swishSwish:
      return const [
        'swishswish1.mp3',
      ];
  }
}

/// Allows control over loudness of different SFX types.
double soundTypeToVolume(SfxType type) {
  switch (type) {
    case SfxType.huhsh:
      return 0.4;
    case SfxType.wssh:
      return 0.2;
    case SfxType.buttonTap:
    case SfxType.congrats:
    case SfxType.erase:
    case SfxType.swishSwish:
      return 1.0;
  }
}

enum SfxType {
  huhsh,
  wssh,
  buttonTap,
  congrats,
  erase,
  swishSwish,
}
