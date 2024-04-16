import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

typedef StarRatingCallback = void Function(int);

class StartRating extends StatefulWidget {
  const StartRating({
    super.key,
    required this.starColor,
    required this.onTap,
    this.initialRating = -1,
  });

  final Color starColor;
  final int initialRating;

  /// If [onTap] is not null, the stars are interactive
  final StarRatingCallback? onTap;

  @override
  State<StartRating> createState() => _StartRatingState();
}

class _StartRatingState extends State<StartRating> {
  late int selectedIdx;

  @override
  void initState() {
    selectedIdx = widget.initialRating - 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          5,
          (index) => GestureDetector(
            onTap: widget.onTap != null
                ? () {
                    setState(() {
                      selectedIdx = index;
                    });
                    widget.onTap!(index);
                  }
                : null,
            child: Icon(
              Symbols.kid_star,
              color: widget.starColor,
              fill: selectedIdx >= index ? 1 : 0,
            ),
          ),
        )
      ],
    );
  }
}
