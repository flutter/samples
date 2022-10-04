// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class ComponentScreen extends StatelessWidget {
  const ComponentScreen({super.key, required this.showNavBottomBar});

  final bool showNavBottomBar;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
            width: maxWidthConstraint,
            child: ListView(
              shrinkWrap: true,
              children: [
                colDivider,
                colDivider,
                const Buttons(),
                colDivider,
                colDivider,
                const IconToggleButtons(),
                colDivider,
                const FloatingActionButtons(),
                colDivider,
                const Chips(),
                colDivider,
                const Cards(),
                colDivider,
                const TextFields(),
                colDivider,
                const Dialogs(),
                colDivider,
                const Switches(),
                colDivider,
                const Checkboxes(),
                colDivider,
                const Radios(),
                colDivider,
                const ProgressIndicators(),
                colDivider,
                showNavBottomBar
                    ? const NavigationBars(
                        selectedIndex: 0,
                        isExampleBar: true,
                      )
                    : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

const rowDivider = SizedBox(width: 10);
const colDivider = SizedBox(height: 10);
const double cardWidth = 115;
const double maxWidthConstraint = 400;

void Function()? handlePressed(
    BuildContext context, bool isDisabled, String buttonName) {
  return isDisabled
      ? null
      : () {
          final snackBar = SnackBar(
            content: Text(
              'Yay! $buttonName is clicked!',
              style: TextStyle(color: Theme.of(context).colorScheme.surface),
            ),
            action: SnackBarAction(
              textColor: Theme.of(context).colorScheme.surface,
              label: 'Close',
              onPressed: () {},
            ),
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        };
}

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceEvenly,
      children: const <Widget>[
        ButtonsWithoutIcon(isDisabled: false),
        rowDivider,
        ButtonsWithIcon(),
        rowDivider,
        ButtonsWithoutIcon(isDisabled: true),
      ],
    );
  }
}

class ButtonsWithoutIcon extends StatelessWidget {
  final bool isDisabled;

  const ButtonsWithoutIcon({super.key, required this.isDisabled});

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ElevatedButton(
            onPressed: handlePressed(context, isDisabled, 'ElevatedButton'),
            child: const Text('Elevated'),
          ),
          colDivider,
          FilledButton(
            onPressed: handlePressed(context, isDisabled, 'FilledButton'),
            child: const Text('Filled'),
          ),
          colDivider,
          FilledButton.tonal(
            onPressed: handlePressed(context, isDisabled, 'FilledTonalButton'),
            child: const Text('Filled Tonal'),
          ),
          colDivider,
          OutlinedButton(
            onPressed: handlePressed(context, isDisabled, 'OutlinedButton'),
            child: const Text('Outlined'),
          ),
          colDivider,
          TextButton(
              onPressed: handlePressed(context, isDisabled, 'TextButton'),
              child: const Text('Text')),
        ],
      ),
    );
  }
}

class ButtonsWithIcon extends StatelessWidget {
  const ButtonsWithIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ElevatedButton.icon(
            onPressed:
                handlePressed(context, false, 'ElevatedButton with Icon'),
            icon: const Icon(Icons.add),
            label: const Text('Icon'),
          ),
          colDivider,
          FilledButton.icon(
            onPressed: handlePressed(context, false, 'FilledButton with Icon'),
            label: const Text('Icon'),
            icon: const Icon(Icons.add),
          ),
          colDivider,
          FilledButton.tonalIcon(
            onPressed:
                handlePressed(context, false, 'FilledTonalButton with Icon'),
            label: const Text('Icon'),
            icon: const Icon(Icons.add),
          ),
          colDivider,
          OutlinedButton.icon(
            onPressed:
                handlePressed(context, false, 'OutlinedButton with Icon'),
            icon: const Icon(Icons.add),
            label: const Text('Icon'),
          ),
          colDivider,
          TextButton.icon(
            onPressed: handlePressed(context, false, 'TextButton with Icon'),
            icon: const Icon(Icons.add),
            label: const Text('Icon'),
          )
        ],
      ),
    );
  }
}

class FloatingActionButtons extends StatelessWidget {
  const FloatingActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          FloatingActionButton.small(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          rowDivider,
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          rowDivider,
          FloatingActionButton.extended(
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: const Text('Create'),
          ),
          rowDivider,
          FloatingActionButton.large(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: cardWidth,
            child: Tooltip(
              margin: const EdgeInsets.only(top: 20),
              message: 'Elevated Card',
              child: Card(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: const [
                      Align(
                        alignment: Alignment.topRight,
                        child: Icon(Icons.more_vert),
                      ),
                      SizedBox(height: 35),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text('Elevated'),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: cardWidth,
            child: Tooltip(
              margin: const EdgeInsets.only(top: 20),
              message: 'Filled Card',
              child: Card(
                color: Theme.of(context).colorScheme.surfaceVariant,
                elevation: 0,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: const [
                      Align(
                        alignment: Alignment.topRight,
                        child: Icon(Icons.more_vert),
                      ),
                      SizedBox(height: 35),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text('Filled'),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: cardWidth,
            child: Tooltip(
              margin: const EdgeInsets.only(top: 20),
              message: 'Outlined Card',
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: const [
                      Align(
                        alignment: Alignment.topRight,
                        child: Icon(Icons.more_vert),
                      ),
                      SizedBox(height: 35),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text('Outlined'),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TextFields extends StatelessWidget {
  const TextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.clear),
              labelText: 'Filled',
              hintText: 'hint text',
              helperText: 'supporting text',
              filled: true,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SizedBox(
                width: 170,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.clear),
                    labelText: 'Filled',
                    hintText: 'hint text',
                    helperText: 'supporting text',
                    filled: true,
                    errorText: 'error text',
                  ),
                ),
              ),
              SizedBox(
                width: 170,
                child: TextField(
                  enabled: false,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.clear),
                    labelText: 'Disabled',
                    hintText: 'hint text',
                    helperText: 'supporting text',
                    filled: true,
                  ),
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.clear),
              labelText: 'Outlined',
              hintText: 'hint text',
              helperText: 'supporting text',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SizedBox(
                    width: 170,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.clear),
                        labelText: 'Outlined',
                        hintText: 'hint text',
                        helperText: 'supporting text',
                        errorText: 'error text',
                        border: OutlineInputBorder(),
                        filled: true,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 170,
                    child: TextField(
                      enabled: false,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.clear),
                        labelText: 'Disabled',
                        hintText: 'hint text',
                        helperText: 'supporting text',
                        border: OutlineInputBorder(),
                        filled: true,
                      ),
                    ),
                  ),
                ])),
      ],
    );
  }
}

class Dialogs extends StatefulWidget {
  const Dialogs({super.key});

  @override
  State<Dialogs> createState() => _DialogsState();
}

class _DialogsState extends State<Dialogs> {
  void openDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Basic Dialog Title'),
        content: const Text(
            'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made.'),
        actions: <Widget>[
          TextButton(
            child: const Text('Dismiss'),
            onPressed: () => Navigator.of(context).pop(),
          ),
          TextButton(
            child: const Text('Action'),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextButton(
        child: const Text(
          'Open Dialog',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        onPressed: () => openDialog(context),
      ),
    );
  }
}

class Switches extends StatelessWidget {
  const Switches({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        SwitchRow(isEnabled: true),
        SwitchRow(isEnabled: false),
      ],
    );
  }
}

class SwitchRow extends StatefulWidget {
  const SwitchRow({super.key, required this.isEnabled});

  final bool isEnabled;

  @override
  State<SwitchRow> createState() => _SwitchRowState();
}

class _SwitchRowState extends State<SwitchRow> {
  bool value0 = false;
  bool value1 = true;

  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>((states) {
    if (states.contains(MaterialState.selected)) {
      return const Icon(Icons.check);
    }
    return const Icon(Icons.close);
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Switch(
          value: value0,
          onChanged: widget.isEnabled
              ? (value) {
                  setState(() {
                    value0 = value;
                  });
                }
              : null,
        ),
        Switch(
          thumbIcon: thumbIcon,
          value: value1,
          onChanged: widget.isEnabled
              ? (value) {
                  setState(() {
                    value1 = value;
                  });
                }
              : null,
        ),
      ],
    );
  }
}

class Checkboxes extends StatelessWidget {
  const Checkboxes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        CheckboxRow(
          isError: false,
        ),
        CheckboxRow(
          isError: true,
        )
      ],
    );
  }
}

class CheckboxRow extends StatefulWidget {
  const CheckboxRow({super.key, required this.isError});

  final bool isError;

  @override
  State<CheckboxRow> createState() => _CheckboxRowState();
}

class _CheckboxRowState extends State<CheckboxRow> {
  bool? isChecked0 = true;
  bool? isChecked1;
  bool? isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Checkbox(
          isError: widget.isError,
          tristate: true,
          value: isChecked0,
          onChanged: (value) {
            setState(() {
              isChecked0 = value;
            });
          },
        ),
        Checkbox(
          isError: widget.isError,
          tristate: true,
          value: isChecked1,
          onChanged: (value) {
            setState(() {
              isChecked1 = value;
            });
          },
        ),
        Checkbox(
          isError: widget.isError,
          tristate: true,
          value: isChecked2,
          onChanged: (value) {
            setState(() {
              isChecked2 = value;
            });
          },
        ),
        Checkbox(
          isError: widget.isError,
          tristate: true,
          value: true,
          onChanged: null,
        ),
      ],
    );
  }
}

enum Value { first, second }

class Radios extends StatefulWidget {
  const Radios({super.key});

  @override
  State<Radios> createState() => _RadiosState();
}

class _RadiosState extends State<Radios> {
  Value? _value = Value.first;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Radio<Value>(
          value: Value.first,
          groupValue: _value,
          onChanged: (value) {
            setState(() {
              _value = value;
            });
          },
        ),
        Radio<Value>(
          value: Value.second,
          groupValue: _value,
          onChanged: (value) {
            setState(() {
              _value = value;
            });
          },
        ),
      ],
    );
  }
}

class ProgressIndicators extends StatefulWidget {
  const ProgressIndicators({super.key});

  @override
  State<ProgressIndicators> createState() => _ProgressIndicatorsState();
}

class _ProgressIndicatorsState extends State<ProgressIndicators> {
  bool playProgressIndicator = false;

  @override
  Widget build(BuildContext context) {
    final double? progressValue = playProgressIndicator ? null : 0.7;

    return Column(
      children: <Widget>[
        Row(
          children: [
            IconButton(
              isSelected: playProgressIndicator,
              selectedIcon: const Icon(Icons.pause),
              icon: const Icon(Icons.play_arrow),
              onPressed: () {
                setState(() {
                  playProgressIndicator = !playProgressIndicator;
                });
              },
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  CircularProgressIndicator(
                    value: progressValue,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: LinearProgressIndicator(
                      value: progressValue,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

const List<NavigationDestination> appBarDestinations = [
  NavigationDestination(
    tooltip: 'Updated component list',
    icon: Icon(Icons.widgets_outlined),
    label: 'Components',
    selectedIcon: Icon(Icons.widgets),
  ),
  NavigationDestination(
    tooltip: 'Color palettes in light and dark modes',
    icon: Icon(Icons.format_paint_outlined),
    label: 'Color',
    selectedIcon: Icon(Icons.format_paint),
  ),
  NavigationDestination(
    tooltip: 'Different text styles for the default TextTheme',
    icon: Icon(Icons.text_snippet_outlined),
    label: 'Typography',
    selectedIcon: Icon(Icons.text_snippet),
  ),
  NavigationDestination(
    tooltip:
        'Different ways of elevation with a new supported feature "surfaceTintColor"',
    icon: Icon(Icons.invert_colors_on_outlined),
    label: 'Elevation',
    selectedIcon: Icon(Icons.opacity),
  )
];

final List<NavigationRailDestination> navRailDestinations = appBarDestinations
    .map(
      (destination) => NavigationRailDestination(
        icon: Tooltip(
          message: destination.label,
          child: destination.icon,
        ),
        selectedIcon: Tooltip(
          message: destination.label,
          child: destination.selectedIcon,
        ),
        label: Text(destination.label),
      ),
    )
    .toList();

const List<Widget> exampleBarDestinations = [
  NavigationDestination(
    tooltip: '',
    icon: Icon(Icons.explore_outlined),
    label: 'Explore',
    selectedIcon: Icon(Icons.explore),
  ),
  NavigationDestination(
    tooltip: '',
    icon: Icon(Icons.pets_outlined),
    label: 'Pets',
    selectedIcon: Icon(Icons.pets),
  ),
  NavigationDestination(
    tooltip: '',
    icon: Icon(Icons.account_box_outlined),
    label: 'Account',
    selectedIcon: Icon(Icons.account_box),
  )
];

class NavigationBars extends StatefulWidget {
  final void Function(int)? onSelectItem;
  final int selectedIndex;
  final bool isExampleBar;

  const NavigationBars({
    super.key,
    this.onSelectItem,
    required this.selectedIndex,
    required this.isExampleBar,
  });

  @override
  State<NavigationBars> createState() => _NavigationBarsState();
}

class _NavigationBarsState extends State<NavigationBars> {
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.selectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: selectedIndex,
      onDestinationSelected: (index) {
        setState(() {
          selectedIndex = index;
        });
        if (!widget.isExampleBar) widget.onSelectItem!(index);
      },
      destinations:
          widget.isExampleBar ? exampleBarDestinations : appBarDestinations,
    );
  }
}

class NavigationRailSection extends StatefulWidget {
  final void Function(int) onSelectItem;
  final int selectedIndex;

  const NavigationRailSection(
      {super.key, required this.onSelectItem, required this.selectedIndex});

  @override
  State<NavigationRailSection> createState() => _NavigationRailSectionState();
}

class _NavigationRailSectionState extends State<NavigationRailSection> {
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.selectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      minWidth: 50,
      destinations: navRailDestinations,
      selectedIndex: selectedIndex,
      useIndicator: true,
      onDestinationSelected: (index) {
        setState(() {
          selectedIndex = index;
        });
        widget.onSelectItem(index);
      },
    );
  }
}

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
              colDivider,
              IconToggleButton(isEnabled: false),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              // Filled IconButton
              IconToggleButton(
                isEnabled: true,
                getDefaultStyle: enabledFilledButtonStyle,
              ),
              colDivider,
              IconToggleButton(
                isEnabled: false,
                getDefaultStyle: disabledFilledButtonStyle,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              // Filled Tonal IconButton
              IconToggleButton(
                isEnabled: true,
                getDefaultStyle: enabledFilledTonalButtonStyle,
              ),
              colDivider,
              IconToggleButton(
                isEnabled: false,
                getDefaultStyle: disabledFilledTonalButtonStyle,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              // Outlined IconButton
              IconToggleButton(
                isEnabled: true,
                getDefaultStyle: enabledOutlinedButtonStyle,
              ),
              colDivider,
              IconToggleButton(
                isEnabled: false,
                getDefaultStyle: disabledOutlinedButtonStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class IconToggleButton extends StatefulWidget {
  const IconToggleButton({
    required this.isEnabled,
    this.getDefaultStyle,
    super.key,
  });

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
    ButtonStyle? style = widget.getDefaultStyle?.call(selected, colors);

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
    foregroundColor: MaterialStateProperty.resolveWith((states) {
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
                avatar: Icon(Icons.indeterminate_check_box_outlined),
              ),
            ],
          ),
          colDivider,
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            runSpacing: 5,
            children: <Widget>[
              FilterChip(
                label: const Text('Filter'),
                onSelected: (isSelected) {},
              ),
              FilterChip(
                label: const Text('OK'),
                selected: true,
                onSelected: (isSelected) {},
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
          colDivider,
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
          colDivider,
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
