import 'package:flutter/material.dart';

import '../theme.dart';

class MarketplaceButton extends StatefulWidget {
  const MarketplaceButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
    required this.icon,
    this.iconRotateAngle,
    this.iconBackgroundColor,
    this.iconColor,
    this.buttonBackgroundColor,
    this.hoverColor,
  });

  final VoidCallback? onPressed;
  final String buttonText;
  final IconData icon;
  final double? iconRotateAngle;
  final Color? iconBackgroundColor;
  final Color? iconColor;
  final Color? buttonBackgroundColor;
  final Color? hoverColor;

  @override
  State<MarketplaceButton> createState() => _MarketplaceButtonState();
}

class _MarketplaceButtonState extends State<MarketplaceButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      icon: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: widget.iconBackgroundColor ?? Colors.transparent,
        ),
        child: Transform.rotate(
          angle: widget.iconRotateAngle ?? 0,
          child: Icon(
            widget.icon,
            color: widget.iconColor ?? Colors.black87,
            size: 20.0,
          ),
        ),
      ),
      label: Text(
        widget.buttonText,
        style: MarketplaceTheme.dossierParagraph,
      ),
      onPressed: widget.onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.hovered)) {
            return widget.hoverColor ??
                MarketplaceTheme.secondary.withOpacity(.3);
          }
          return widget.buttonBackgroundColor ??
              Theme.of(context).splashColor.withOpacity(.3);
        }),
        shape: WidgetStateProperty.resolveWith(
          (states) {
            if (states.contains(WidgetState.hovered)) {
              // TODO: how can I animate between states?
            }
            return const RoundedRectangleBorder(
              side: BorderSide(color: Colors.black26),
              borderRadius: BorderRadius.all(
                Radius.circular(MarketplaceTheme.defaultBorderRadius),
              ),
            );
          },
        ),
        textStyle: WidgetStateTextStyle.resolveWith(
          (states) {
            return MarketplaceTheme.dossierParagraph.copyWith(
              color: Colors.black45,
            );
          },
        ),
      ),
    );
  }
}
