import 'package:flutter/material.dart';

import '../theme.dart';

class HighlightBorderOnHoverWidget extends StatefulWidget {
  const HighlightBorderOnHoverWidget({
    super.key,
    required this.child,
    this.color = MarketplaceTheme.secondary,
    required this.borderRadius,
  });

  final Widget child;
  final Color color;
  final BorderRadius borderRadius;

  @override
  State<HighlightBorderOnHoverWidget> createState() =>
      _HighlightBorderOnHoverWidgetState();
}

class _HighlightBorderOnHoverWidgetState
    extends State<HighlightBorderOnHoverWidget> {
  bool hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          hovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          hovered = false;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).splashColor.withOpacity(.1),
          border: Border.all(
            color: hovered ? widget.color : MarketplaceTheme.borderColor,
          ),
          borderRadius: widget.borderRadius,
        ),
        child: widget.child,
      ),
    );
  }
}
