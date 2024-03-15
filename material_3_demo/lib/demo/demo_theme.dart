import 'package:flutter/material.dart';

class DemoTheme extends StatelessWidget {
  const DemoTheme({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    // Fully traverse this list before moving on.
    return Theme(
      data: theme.copyWith(
        iconTheme: const IconThemeData(size: 20),
        checkboxTheme: CheckboxThemeData(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        ),
        cardTheme: const CardTheme(shadowColor: Colors.transparent),
        inputDecorationTheme: InputDecorationTheme(
          // prefixStyle: TextStyle(fontSize: 12),
          // suffixStyle: TextStyle(fontSize: 12),
          contentPadding: const EdgeInsets.symmetric(vertical: 2),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
        shadowColor: Colors.transparent,
        filledButtonTheme: FilledButtonThemeData(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(50),
            // minimumSize: const Size.fromHeight(54),
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
      child: child,
    );
  }
}
