import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  // Note: original Figma file uses Nikkei Maru
  // which is not available on GoogleFonts
  static final cardTitleStyle = GoogleFonts.anton(
    textStyle: const TextStyle(
      fontWeight: FontWeight.w800,
      fontSize: 15.0,
      color: Colors.white,
      letterSpacing: 1,
    ),
  );

  // Note: original Figma file uses Google Sans
  // which is not available on GoogleFonts
  static final chipTagStyle = GoogleFonts.openSans(
    textStyle: const TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 10,
      color: Colors.white,
      textBaseline: TextBaseline.alphabetic,
    ),
  );
}
