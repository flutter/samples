import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

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

  static const text = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    height: 0,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const title = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    height: 0,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const hint = TextStyle(
    color: AppColors.grey3,
    fontSize: 18.0,
    fontWeight: FontWeight.w400,
    textBaseline: TextBaseline.alphabetic,
  );
}
