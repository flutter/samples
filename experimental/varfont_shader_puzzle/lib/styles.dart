// Copyright 2023 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'package:flutter/material.dart';

class TextStyles {
  const TextStyles({Key? key});

  static TextStyle bodyStyle() {
    return const TextStyle(
      fontFamily: 'Roboto',
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.w400,
      height: 1.5,
    );
  }

  static TextStyle headlineStyle() {
    return const TextStyle(
      fontFamily: 'Roboto',
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.w700,
      height: 1.5,
    );
  }
}

class ButtonStyles {
  static ButtonStyle style() {
    return ButtonStyle(
      fixedSize:
          MaterialStateProperty.resolveWith<Size>((Set<MaterialState> states) {
        return const Size(100, 36);
      }),
      shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
          (Set<MaterialState> states) {
        return const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(18)));
      }),
      overlayColor: null,
      backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered)) {
          return Colors.black; // Hovered bg (for desktop with mouse)
        }
        return Colors.grey[600]; // Default bg
      }),
    );
  }
}
