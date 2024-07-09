import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// TODO: Maybe the text styles here should be moved to the respective widgets
class TextStyles {
  // Note: original Figma file uses Nikkei Maru
  // which is not available on GoogleFonts
  // Note: Card title theme doesn't change based on light/dark mode
  static final cardTitleStyle = GoogleFonts.rubik(
    textStyle: const TextStyle(
      fontWeight: FontWeight.w800,
      fontSize: 15.0,
      color: Colors.white,
      letterSpacing: 1,
      shadows: [
        // Helps to read the text a bit better
        Shadow(
          blurRadius: 3.0,
          color: Colors.black,
        )
      ],
    ),
  );
}
