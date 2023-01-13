// Copyright 2023 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

class PuzzleModel {
  final int dim; // num tiles in any one dir; dim x dim board

  // 2d array like a board
  // x is the tileID and its position in the array mirrors the board
  List<List<int>> positions = [<int>[]];

  // rotation states, where index == tileID
  // x is num of CCW rotations off from correct (x % 4 == 0 indicates correct)
  List<int> status = [];

  PuzzleModel({required this.dim}) {
    for (int i = 0; i < dim; i++) {
      if (positions[positions.length - 1].length == dim) {
        positions.add(<int>[]);
      }
      positions[positions.length - 1].add(i);
      status.add(0);
    }
  }

  bool allRotationsCorrect() {
    for (int i = 0; i < status.length; i++) {
      if (status[i] % 4 != 0) {
        return false;
      }
    }
    return true;
  }

  void setTileStatus(int tileID, int newStatus) {
    status[tileID] = newStatus;
  }

  int getTileStatus(int tileID) {
    return status[tileID];
  }

  void rotateTile(int tileID) {
    status[tileID]--;
  }

  int getRotationOfTile(int tileID) {
    return status[tileID];
  }
}
