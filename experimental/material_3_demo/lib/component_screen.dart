// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class ComponentScreen extends StatelessWidget {
  const ComponentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
          width: _maxWidthConstraint,
          child: ListView(
            children: [
              const IconToggleButtons(),
              _colDivider,
              const Chips(),
            ],
          ),
        ),
      ),
    );
  }
}

const _colDivider = SizedBox(height: 10);
const double _maxWidthConstraint = 400;

class IconToggleButtons extends StatefulWidget {
  const IconToggleButtons({super.key});

  @override
  State<IconToggleButtons> createState() => _IconToggleButtonsState();
}

class _IconToggleButtonsState extends State<IconToggleButtons> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // Standard IconButton
                children: const <Widget>[
                  IconToggleButton(isEnabled: true),
                  _colDivider,
                  IconToggleButton(isEnabled: false),
                ]),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  // Filled IconButton
                  IconToggleButton(
                    isEnabled: true,
                    getDefaultStyle: enabledFilledButtonStyle,
                  ),
                  _colDivider,
                  IconToggleButton(
                    isEnabled: false,
                    getDefaultStyle: disabledFilledButtonStyle,
                  )
                ]),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  // Filled Tonal IconButton
                  IconToggleButton(
                    isEnabled: true,
                    getDefaultStyle: enabledFilledTonalButtonStyle,
                  ),
                  _colDivider,
                  IconToggleButton(
                    isEnabled: false,
                    getDefaultStyle: disabledFilledTonalButtonStyle,
                  ),
                ]),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  // Outlined IconButton
                  IconToggleButton(
                    isEnabled: true,
                    getDefaultStyle: enabledOutlinedButtonStyle,
                  ),
                  _colDivider,
                  IconToggleButton(
                    isEnabled: false,
                    getDefaultStyle: disabledOutlinedButtonStyle,
                  ),
                ]),
          ]),
    );
  }
}

class IconToggleButton extends StatefulWidget {
  const IconToggleButton(
      {required this.isEnabled, this.getDefaultStyle, super.key});

  final bool isEnabled;
  final ButtonStyle? Function(bool, ColorScheme)? getDefaultStyle;

  @override
  State<IconToggleButton> createState() => _IconToggleButtonState();
}

class _IconToggleButtonState extends State<IconToggleButton> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    final VoidCallback? onPressed = widget.isEnabled
        ? () {
            setState(() {
              selected = !selected;
            });
          }
        : null;
    ButtonStyle? style;
    if (widget.getDefaultStyle != null) {
      style = widget.getDefaultStyle!(selected, colors);
    }

    return IconButton(
      visualDensity: VisualDensity.standard,
      isSelected: selected,
      icon: const Icon(Icons.settings_outlined),
      selectedIcon: const Icon(Icons.settings),
      onPressed: onPressed,
      style: style,
    );
  }
}

ButtonStyle enabledFilledButtonStyle(bool selected, ColorScheme colors) {
  return IconButton.styleFrom(
    foregroundColor: selected ? colors.onPrimary : colors.primary,
    backgroundColor: selected ? colors.primary : colors.surfaceVariant,
    disabledForegroundColor: colors.onSurface.withOpacity(0.38),
    disabledBackgroundColor: colors.onSurface.withOpacity(0.12),
    hoverColor: selected
        ? colors.onPrimary.withOpacity(0.08)
        : colors.primary.withOpacity(0.08),
    focusColor: selected
        ? colors.onPrimary.withOpacity(0.12)
        : colors.primary.withOpacity(0.12),
    highlightColor: selected
        ? colors.onPrimary.withOpacity(0.12)
        : colors.primary.withOpacity(0.12),
  );
}

ButtonStyle disabledFilledButtonStyle(bool selected, ColorScheme colors) {
  return IconButton.styleFrom(
    disabledForegroundColor: colors.onSurface.withOpacity(0.38),
    disabledBackgroundColor: colors.onSurface.withOpacity(0.12),
  );
}

ButtonStyle enabledFilledTonalButtonStyle(bool selected, ColorScheme colors) {
  return IconButton.styleFrom(
    foregroundColor:
        selected ? colors.onSecondaryContainer : colors.onSurfaceVariant,
    backgroundColor:
        selected ? colors.secondaryContainer : colors.surfaceVariant,
    hoverColor: selected
        ? colors.onSecondaryContainer.withOpacity(0.08)
        : colors.onSurfaceVariant.withOpacity(0.08),
    focusColor: selected
        ? colors.onSecondaryContainer.withOpacity(0.12)
        : colors.onSurfaceVariant.withOpacity(0.12),
    highlightColor: selected
        ? colors.onSecondaryContainer.withOpacity(0.12)
        : colors.onSurfaceVariant.withOpacity(0.12),
  );
}

ButtonStyle disabledFilledTonalButtonStyle(bool selected, ColorScheme colors) {
  return IconButton.styleFrom(
    disabledForegroundColor: colors.onSurface.withOpacity(0.38),
    disabledBackgroundColor: colors.onSurface.withOpacity(0.12),
  );
}

ButtonStyle enabledOutlinedButtonStyle(bool selected, ColorScheme colors) {
  return IconButton.styleFrom(
    backgroundColor: selected ? colors.inverseSurface : null,
    hoverColor: selected
        ? colors.onInverseSurface.withOpacity(0.08)
        : colors.onSurfaceVariant.withOpacity(0.08),
    focusColor: selected
        ? colors.onInverseSurface.withOpacity(0.12)
        : colors.onSurfaceVariant.withOpacity(0.12),
    highlightColor: selected
        ? colors.onInverseSurface.withOpacity(0.12)
        : colors.onSurface.withOpacity(0.12),
    side: BorderSide(color: colors.outline),
  ).copyWith(
    foregroundColor:
        MaterialStateProperty.resolveWith((Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return colors.onInverseSurface;
      }
      if (states.contains(MaterialState.pressed)) {
        return colors.onSurface;
      }
      return null;
    }),
  );
}

ButtonStyle disabledOutlinedButtonStyle(bool selected, ColorScheme colors) {
  return IconButton.styleFrom(
    disabledForegroundColor: colors.onSurface.withOpacity(0.38),
    disabledBackgroundColor:
        selected ? colors.onSurface.withOpacity(0.12) : null,
    side: selected ? null : BorderSide(color: colors.outline.withOpacity(0.12)),
  );
}

class Chips extends StatelessWidget {
  const Chips({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            runSpacing: 5,
            children: <Widget>[
              ActionChip(
                  label: const Text('Assist'),
                  avatar: const Icon(Icons.chat_outlined),
                  onPressed: () {}),
              ActionChip(
                  label: const Text('Set alarm'),
                  avatar: const Icon(Icons.alarm_add_outlined),
                  onPressed: () {}),
              const ActionChip(
                  label: Text('No Action'),
                  avatar: Icon(Icons.indeterminate_check_box_outlined)),
            ],
          ),
          _colDivider,
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            runSpacing: 5,
            children: <Widget>[
              FilterChip(
                label: const Text('Filter'),
                onSelected: (s) {},
              ),
              FilterChip(
                label: const Text('OK'),
                selected: true,
                onSelected: (s) {},
              ),
              const FilterChip(
                label: Text('Disabled'),
                selected: true,
                onSelected: null,
              ),
              const FilterChip(
                label: Text('Disabled'),
                onSelected: null,
              )
            ],
          ),
          _colDivider,
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            runSpacing: 5,
            children: <Widget>[
              InputChip(
                label: const Text('Input'),
                onDeleted: () {},
              ),
              InputChip(
                label: const Text('Egg'),
                onDeleted: () {},
              ),
              InputChip(
                label: const Text('Lettuce'),
                showCheckmark: false,
                selected: true,
                onDeleted: () {},
              ),
              const InputChip(
                label: Text('No'),
                isEnabled: false,
              ),
            ],
          ),
          _colDivider,
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            runSpacing: 5,
            children: <Widget>[
              ActionChip(
                label: const Text('Suggestion'),
                onPressed: () {},
              ),
              ActionChip(
                label: const Text('I agree'),
                onPressed: () {},
              ),
              ActionChip(
                label: const Text('LGTM'),
                onPressed: () {},
              ),
              const ActionChip(label: Text('Nope')),
            ],
          ),
        ],
      ),
    );
  }
}
