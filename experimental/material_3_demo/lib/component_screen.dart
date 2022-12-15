// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class FirstComponentList extends StatelessWidget {
  const FirstComponentList({
    super.key,
    required this.showNavBottomBar,
    required this.scaffoldKey,
    required this.showSecondList,
  });

  final bool showNavBottomBar;
  final GlobalKey<ScaffoldState> scaffoldKey;
  final bool showSecondList;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        const Actions(),
        const Communication(),
        const Containment(),
        Navigation(scaffoldKey: scaffoldKey),
        if (!showSecondList) ...[const Selection(), const TextInputs()],
      ],
    );
  }
}

class SecondComponentList extends StatelessWidget {
  const SecondComponentList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: const <Widget>[
        Selection(),
        TextInputs(),
      ],
    );
  }
}

const rowDivider = SizedBox(width: 20);
const colDivider = SizedBox(height: 10);
const double cardWidth = 115;
const double widthConstraint = 450;

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

class Actions extends StatelessWidget {
  const Actions({super.key});

  @override
  Widget build(BuildContext context) {
    return const ComponentGroupDecoration(label: 'Actions', children: <Widget>[
      Buttons(),
      FloatingActionButtons(),
      IconToggleButtons(),
      SegmentedButtons(),
    ]);
  }
}

class Communication extends StatelessWidget {
  const Communication({super.key});

  @override
  Widget build(BuildContext context) {
    return const ComponentGroupDecoration(label: 'Communication', children: [
      NavigationBars(
        selectedIndex: 1,
        isExampleBar: true,
        isBadgeExample: true,
      ),
      ProgressIndicators(),
      SnackBarSection(),
    ]);
  }
}

class Containment extends StatelessWidget {
  const Containment({super.key});

  @override
  Widget build(BuildContext context) {
    return const ComponentGroupDecoration(label: 'Containment', children: [
      BottomSheetSection(),
      Cards(),
      Dialogs(),
    ]);
  }
}

class Navigation extends StatelessWidget {
  const Navigation({super.key, required this.scaffoldKey});

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return ComponentGroupDecoration(label: 'Navigation', children: [
      const BottomAppBars(),
      const NavigationBars(
        selectedIndex: 0,
        isExampleBar: true,
      ),
      NavigationDrawers(scaffoldKey: scaffoldKey),
      const Tabs(),
    ]);
  }
}

class Selection extends StatelessWidget {
  const Selection({super.key});

  @override
  Widget build(BuildContext context) {
    return const ComponentGroupDecoration(label: 'Selection', children: [
      Chips(),
      DropdownMenus(),
      Radios(),
      Checkboxes(),
      Sliders(),
      Switches(),
    ]);
  }
}

class TextInputs extends StatelessWidget {
  const TextInputs({super.key});

  @override
  Widget build(BuildContext context) {
    return const ComponentGroupDecoration(
        label: 'Text inputs', children: [TextFields()]);
  }
}

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return ComponentDecoration(
      label: 'Common Buttons',
      tooltipMessage:
          'Common buttons include: \nElevatedButton, FilledButton, FilledButton.tonal, OutlinedButton and TextButton',
      child: Wrap(
        alignment: WrapAlignment.spaceAround,
        children: const <Widget>[
          ButtonsWithoutIcon(isDisabled: false),
          ButtonsWithIcon(),
          ButtonsWithoutIcon(isDisabled: true),
        ],
      ),
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
    return ComponentDecoration(
      label: 'Floating action buttons',
      tooltipMessage:
          'Floating action buttons include: \nFloatingActionButton.small, FloatingActionButton, FloatingActionButton.extended, and FloatingActionButton.large',
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
    return ComponentDecoration(
      label: 'Cards',
      tooltipMessage: 'Card has 3 types: elevated, filled and outlined',
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: cardWidth,
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
          SizedBox(
            width: cardWidth,
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
          SizedBox(
            width: cardWidth,
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
        ],
      ),
    );
  }
}

class TextFields extends StatelessWidget {
  const TextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return ComponentDecoration(
      label: 'Text Fields',
      tooltipMessage:
          'Use TextField with different decoration to show text fields',
      child: Column(
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
                Flexible(
                  child: SizedBox(
                    width: 180,
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
                ),
                Flexible(
                  child: SizedBox(
                    width: 180,
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
                    Flexible(
                      child: SizedBox(
                        width: 180,
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
                    ),
                    Flexible(
                      child: SizedBox(
                        width: 180,
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
                    ),
                  ])),
        ],
      ),
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
    return Center(
      child: ComponentDecoration(
        label: 'Dialog',
        tooltipMessage: 'Use AlertDialog to show dialogs',
        child: UnconstrainedBox(
          child: TextButton(
            child: const Text(
              'Open Dialog',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: () => openDialog(context),
          ),
        ),
      ),
    );
  }
}

class Switches extends StatelessWidget {
  const Switches({super.key});

  @override
  Widget build(BuildContext context) {
    return ComponentDecoration(
      label: 'Switches',
      tooltipMessage: 'Use Switch to show switches',
      child: Column(
        children: const <Widget>[
          SwitchRow(isEnabled: true),
          SwitchRow(isEnabled: false),
        ],
      ),
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
    return ComponentDecoration(
      label: 'Checkboxes',
      tooltipMessage: 'Use Checkbox to show checkboxes',
      child: Column(
        children: const <Widget>[
          CheckboxRow(
            isError: false,
          ),
          CheckboxRow(
            isError: true,
          )
        ],
      ),
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
      mainAxisAlignment: MainAxisAlignment.spaceAround,
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
    return ComponentDecoration(
      label: 'Radio button',
      tooltipMessage: 'Use Radio<T> to show radio buttons',
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
      ),
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

    return ComponentDecoration(
      label: 'Progress indicators',
      tooltipMessage:
          'There are 2 types of progress indicators: \nCircularProgressIndicator and LinearProgressIndicator',
      child: Column(
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
      ),
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

List<Widget> barWithBadgeDestinations = [
  NavigationDestination(
    tooltip: '',
    icon: Badge.count(count: 1000, child: const Icon(Icons.mail_outlined)),
    label: 'Mail',
    selectedIcon: Badge.count(count: 1000, child: const Icon(Icons.mail)),
  ),
  const NavigationDestination(
    tooltip: '',
    icon: Badge(label: Text('10'), child: Icon(Icons.chat_bubble_outline)),
    label: 'Chat',
    selectedIcon: Badge(label: Text('10'), child: Icon(Icons.chat_bubble)),
  ),
  const NavigationDestination(
    tooltip: '',
    icon: Badge(child: Icon(Icons.group_outlined)),
    label: 'Rooms',
    selectedIcon: Badge(child: Icon(Icons.group_rounded)),
  ),
  NavigationDestination(
    tooltip: '',
    icon: Badge.count(count: 3, child: const Icon(Icons.videocam_outlined)),
    label: 'Meet',
    selectedIcon: Badge.count(count: 3, child: const Icon(Icons.videocam)),
  )
];

class NavigationBars extends StatefulWidget {
  const NavigationBars({
    super.key,
    this.onSelectItem,
    required this.selectedIndex,
    required this.isExampleBar,
    this.isBadgeExample,
  });

  final void Function(int)? onSelectItem;
  final int selectedIndex;
  final bool isExampleBar;
  final bool? isBadgeExample;

  @override
  State<NavigationBars> createState() => _NavigationBarsState();
}

class _NavigationBarsState extends State<NavigationBars> {
  late int selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.selectedIndex;
  }

  @override
  void didUpdateWidget(covariant NavigationBars oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.selectedIndex != oldWidget.selectedIndex) {
      selectedIndex = widget.selectedIndex;
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isBadgeExample = widget.isBadgeExample ?? false;
    Widget navigationBar = NavigationBar(
      selectedIndex: selectedIndex,
      onDestinationSelected: (index) {
        setState(() {
          selectedIndex = index;
        });
        if (!widget.isExampleBar) widget.onSelectItem!(index);
      },
      destinations: widget.isExampleBar && isBadgeExample
          ? barWithBadgeDestinations
          : widget.isExampleBar
              ? exampleBarDestinations
              : appBarDestinations,
    );

    if (widget.isExampleBar && isBadgeExample) {
      navigationBar = ComponentDecoration(
          label: 'Badges',
          tooltipMessage: 'Use Badge or Badge.count to show badges',
          child: navigationBar);
    } else if (widget.isExampleBar) {
      navigationBar = ComponentDecoration(
          label: 'Navigation bar',
          tooltipMessage: 'Use NavigationBar to show navigation bars',
          child: navigationBar);
    }

    return navigationBar;
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
    return ComponentDecoration(
      label: 'Icon buttons',
      tooltipMessage:
          'IconButton has 4 types: standard, filled, filled tonal, and outlined',
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            // Standard IconButton
            children: const <Widget>[
              IconToggleButton(isEnabled: true),
              colDivider,
              IconToggleButton(isEnabled: false),
            ],
          ),
          Column(
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
    return ComponentDecoration(
      label: 'Chips',
      tooltipMessage:
          'Use ActionChip, FilterChip, and InputChip to show chips. \nActionChip can also be used for suggestion chip',
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

class SegmentedButtons extends StatelessWidget {
  const SegmentedButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return ComponentDecoration(
      label: 'Segmented buttons',
      tooltipMessage:
          'SegmentedButton has 2 types: single choice and multiple choice',
      child: Column(
        children: const <Widget>[
          SingleChoice(),
          colDivider,
          MultipleChoice(),
        ],
      ),
    );
  }
}

enum Calendar { day, week, month, year }

class SingleChoice extends StatefulWidget {
  const SingleChoice({super.key});

  @override
  State<SingleChoice> createState() => _SingleChoiceState();
}

class _SingleChoiceState extends State<SingleChoice> {
  Calendar calendarView = Calendar.day;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Calendar>(
      segments: const <ButtonSegment<Calendar>>[
        ButtonSegment<Calendar>(
            value: Calendar.day,
            label: Text('Day'),
            icon: Icon(Icons.calendar_view_day)),
        ButtonSegment<Calendar>(
            value: Calendar.week,
            label: Text('Week'),
            icon: Icon(Icons.calendar_view_week)),
        ButtonSegment<Calendar>(
            value: Calendar.month,
            label: Text('Month'),
            icon: Icon(Icons.calendar_view_month)),
        ButtonSegment<Calendar>(
            value: Calendar.year,
            label: Text('Year'),
            icon: Icon(Icons.calendar_today)),
      ],
      selected: <Calendar>{calendarView},
      onSelectionChanged: (newSelection) {
        setState(() {
          // By default there is only a single segment that can be
          // selected at one time, so its value is always the first
          // item in the selected set.
          calendarView = newSelection.first;
        });
      },
    );
  }
}

enum Sizes { extraSmall, small, medium, large, extraLarge }

class MultipleChoice extends StatefulWidget {
  const MultipleChoice({super.key});

  @override
  State<MultipleChoice> createState() => _MultipleChoiceState();
}

class _MultipleChoiceState extends State<MultipleChoice> {
  Set<Sizes> selection = <Sizes>{Sizes.large, Sizes.extraLarge};

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Sizes>(
      segments: const <ButtonSegment<Sizes>>[
        ButtonSegment<Sizes>(value: Sizes.extraSmall, label: Text('XS')),
        ButtonSegment<Sizes>(value: Sizes.small, label: Text('S')),
        ButtonSegment<Sizes>(value: Sizes.medium, label: Text('M')),
        ButtonSegment<Sizes>(
          value: Sizes.large,
          label: Text('L'),
        ),
        ButtonSegment<Sizes>(value: Sizes.extraLarge, label: Text('XL')),
      ],
      selected: selection,
      onSelectionChanged: (newSelection) {
        setState(() {
          selection = newSelection;
        });
      },
      multiSelectionEnabled: true,
    );
  }
}

class SnackBarSection extends StatelessWidget {
  const SnackBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ComponentDecoration(
      label: 'Snackbar',
      tooltipMessage: 'Use SnackBar to show snack bars',
      child: TextButton(
        onPressed: handlePressed(context, false, 'A TextButton'),
        child: const Text(
          'Show Snackbar',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class BottomSheetSection extends StatelessWidget {
  const BottomSheetSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> buttonList = <Widget>[
      IconButton(onPressed: () {}, icon: const Icon(Icons.share_outlined)),
      IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
      IconButton(onPressed: () {}, icon: const Icon(Icons.delete_outline)),
      IconButton(onPressed: () {}, icon: const Icon(Icons.archive_outlined)),
      IconButton(onPressed: () {}, icon: const Icon(Icons.settings_outlined)),
      IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border)),
    ];
    List<Text> labelList = const <Text>[
      Text('Share'),
      Text('Add to'),
      Text('Trash'),
      Text('Move to\n archive'),
      Text('Settings'),
      Text('Favorite')
    ];

    buttonList = List.generate(
        buttonList.length,
        (index) => Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  buttonList[index],
                  labelList[index],
                ],
              ),
            ));

    return ComponentDecoration(
      label: 'Bottom sheet',
      tooltipMessage:
          'Use showModalBottomSheet<T> to show a modal bottom sheet',
      child: TextButton(
        child: const Text(
          'Show Modal bottom sheet',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (context) {
              return SizedBox(
                height: 250,
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: buttonList,
                      ),
                    ),
                    const Divider(
                      indent: 20,
                      endIndent: 20,
                      thickness: 2,
                    ),
                    Expanded(
                        flex: 2,
                        child: Center(
                          child: FilledButton.tonal(
                            child: const Text('Close BottomSheet'),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ))
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class BottomAppBars extends StatelessWidget {
  const BottomAppBars({super.key});

  @override
  Widget build(BuildContext context) {
    return ComponentDecoration(
      label: 'Bottom app bar',
      tooltipMessage: 'Use BottomAppBar to show bottom app bars below',
      child: Column(
        children: [
          SizedBox(
            height: 80,
            child: Scaffold(
              floatingActionButton: FloatingActionButton(
                onPressed: () {},
                elevation: 0.0,
                child: const Icon(Icons.add),
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.endContained,
              bottomNavigationBar: BottomAppBar(
                elevation: 0.0,
                child: Row(
                  children: <Widget>[
                    IconButton(
                      tooltip: 'Open popup menu',
                      icon: const Icon(Icons.more_vert),
                      onPressed: () {
                        final SnackBar snackBar = SnackBar(
                          content: const Text('Yay! A SnackBar!'),
                          action: SnackBarAction(
                            label: 'Undo',
                            onPressed: () {},
                          ),
                        );

                        // Find the ScaffoldMessenger in the widget tree
                        // and use it to show a SnackBar.
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                    ),
                    IconButton(
                      tooltip: 'Search',
                      icon: const Icon(Icons.search),
                      onPressed: () {},
                    ),
                    IconButton(
                      tooltip: 'Favorite',
                      icon: const Icon(Icons.favorite),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          SizedBox(
            height: 80,
            child: Scaffold(
              floatingActionButton: FloatingActionButton(
                onPressed: () {},
                elevation: 0.0,
                child: const Icon(Icons.add),
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.endContained,
              bottomNavigationBar: BottomAppBar(
                child: Row(
                  children: <Widget>[
                    IconButton(
                      tooltip: 'Open popup menu',
                      icon: const Icon(Icons.more_vert),
                      onPressed: () {
                        final SnackBar snackBar = SnackBar(
                          content: const Text('Yay! A SnackBar!'),
                          action: SnackBarAction(
                            label: 'Undo',
                            onPressed: () {},
                          ),
                        );

                        // Find the ScaffoldMessenger in the widget tree
                        // and use it to show a SnackBar.
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                    ),
                    IconButton(
                      tooltip: 'Search',
                      icon: const Icon(Icons.search),
                      onPressed: () {},
                    ),
                    IconButton(
                      tooltip: 'Favorite',
                      icon: const Icon(Icons.favorite),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NavigationDrawers extends StatelessWidget {
  const NavigationDrawers({super.key, required this.scaffoldKey});
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return ComponentDecoration(
      label: 'Navigation drawer',
      tooltipMessage:
          'Use NavigationDrawer to show navigation drawer or end drawer',
      child: UnconstrainedBox(
        child: TextButton(
          child: const Text('Open End Drawer',
              style: TextStyle(fontWeight: FontWeight.bold)),
          onPressed: () {
            scaffoldKey.currentState!.openEndDrawer();
          },
        ),
      ),
    );
  }
}

class NavigationDrawerSection extends StatefulWidget {
  const NavigationDrawerSection({super.key});

  @override
  State<NavigationDrawerSection> createState() =>
      _NavigationDrawerSectionState();
}

class _NavigationDrawerSectionState extends State<NavigationDrawerSection> {
  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      onDestinationSelected: (selectedIndex) {
        setState(() {
          navDrawerIndex = selectedIndex;
        });
      },
      selectedIndex: navDrawerIndex,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(28, 16, 16, 10),
          child: Text(
            'Mail',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        ...destinations.map((destination) {
          return NavigationDrawerDestination(
            label: Text(destination.label),
            icon: destination.icon,
            selectedIcon: destination.selectedIcon,
          );
        }),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 28),
          child: Divider(),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(28, 16, 16, 10),
          child: Text(
            'Labels',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        ...labelDestinations.map((destination) {
          return NavigationDrawerDestination(
            label: Text(destination.label),
            icon: destination.icon,
            selectedIcon: destination.selectedIcon,
          );
        }),
      ],
    );
  }
}

class ExampleDestination {
  const ExampleDestination(this.label, this.icon, this.selectedIcon);

  final String label;
  final Widget icon;
  final Widget selectedIcon;
}

const List<ExampleDestination> destinations = <ExampleDestination>[
  ExampleDestination('Inbox', Icon(Icons.inbox_outlined), Icon(Icons.inbox)),
  ExampleDestination('Outbox', Icon(Icons.send_outlined), Icon(Icons.send)),
  ExampleDestination(
      'Favorites', Icon(Icons.favorite_outline), Icon(Icons.favorite)),
  ExampleDestination('Trash', Icon(Icons.delete_outline), Icon(Icons.delete)),
];

const List<ExampleDestination> labelDestinations = <ExampleDestination>[
  ExampleDestination(
      'Family', Icon(Icons.bookmark_border), Icon(Icons.bookmark)),
  ExampleDestination(
      'School', Icon(Icons.bookmark_border), Icon(Icons.bookmark)),
  ExampleDestination('Work', Icon(Icons.bookmark_border), Icon(Icons.bookmark)),
];

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return ComponentDecoration(
      label: 'Tabs',
      tooltipMessage: 'Use TabBar to show tabs',
      child: SizedBox(
        height: 80,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              controller: _tabController,
              tabs: const <Widget>[
                Tab(
                  icon: Icon(Icons.videocam_outlined),
                  text: 'Video',
                  iconMargin: EdgeInsets.only(bottom: 0.0),
                ),
                Tab(
                  icon: Icon(Icons.photo_outlined),
                  text: 'Photos',
                  iconMargin: EdgeInsets.only(bottom: 0.0),
                ),
                Tab(
                  icon: Icon(Icons.audiotrack_sharp),
                  text: 'Audio',
                  iconMargin: EdgeInsets.only(bottom: 0.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DropdownMenus extends StatefulWidget {
  const DropdownMenus({super.key});

  @override
  State<DropdownMenus> createState() => _DropdownMenusState();
}

class _DropdownMenusState extends State<DropdownMenus> {
  final TextEditingController colorController = TextEditingController();
  final TextEditingController iconController = TextEditingController();
  IconLabel? selectedIcon = IconLabel.smile;
  ColorLabel? selectedColor;

  @override
  Widget build(BuildContext context) {
    final List<DropdownMenuEntry<ColorLabel>> colorEntries =
        <DropdownMenuEntry<ColorLabel>>[];
    for (final ColorLabel color in ColorLabel.values) {
      colorEntries.add(DropdownMenuEntry<ColorLabel>(
          value: color, label: color.label, enabled: color.label != 'Grey'));
    }

    final List<DropdownMenuEntry<IconLabel>> iconEntries =
        <DropdownMenuEntry<IconLabel>>[];
    for (final IconLabel icon in IconLabel.values) {
      iconEntries
          .add(DropdownMenuEntry<IconLabel>(value: icon, label: icon.label));
    }

    return ComponentDecoration(
      label: 'Dropdown menus',
      tooltipMessage: 'Use DropdownMenu<T> to show dropdown menus',
      child: Wrap(
        alignment: WrapAlignment.spaceAround,
        runAlignment: WrapAlignment.start,
        crossAxisAlignment: WrapCrossAlignment.center,
        runSpacing: 20,
        children: [
          DropdownMenu<ColorLabel>(
            controller: colorController,
            label: const Text('Color'),
            enableFilter: true,
            dropdownMenuEntries: colorEntries,
            inputDecorationTheme: const InputDecorationTheme(filled: true),
            onSelected: (color) {
              setState(() {
                selectedColor = color;
              });
            },
          ),
          DropdownMenu<IconLabel>(
            initialSelection: IconLabel.smile,
            controller: iconController,
            leadingIcon: const Icon(Icons.search),
            label: const Text('Icon'),
            dropdownMenuEntries: iconEntries,
            onSelected: (icon) {
              setState(() {
                selectedIcon = icon;
              });
            },
          ),
          Icon(
            selectedIcon?.icon,
            color: selectedColor?.color ?? Colors.grey.withOpacity(0.5),
          )
        ],
      ),
    );
  }
}

enum ColorLabel {
  blue('Blue', Colors.blue),
  pink('Pink', Colors.pink),
  green('Green', Colors.green),
  yellow('Yellow', Colors.yellow),
  grey('Grey', Colors.grey);

  const ColorLabel(this.label, this.color);
  final String label;
  final Color color;
}

enum IconLabel {
  smile('Smile', Icons.sentiment_satisfied_outlined),
  cloud(
    'Cloud',
    Icons.cloud_outlined,
  ),
  brush('Brush', Icons.brush_outlined),
  heart('Heart', Icons.favorite);

  const IconLabel(this.label, this.icon);
  final String label;
  final IconData icon;
}

class Sliders extends StatefulWidget {
  const Sliders({super.key});

  @override
  State<Sliders> createState() => _SlidersState();
}

class _SlidersState extends State<Sliders> {
  double sliderValue0 = 30.0;
  double sliderValue1 = 20.0;

  @override
  Widget build(BuildContext context) {
    return ComponentDecoration(
        label: 'Sliders',
        tooltipMessage: 'Use Slider to show sliders',
        child: Column(
          children: <Widget>[
            Slider(
              max: 100,
              value: sliderValue0,
              onChanged: (value) {
                setState(() {
                  sliderValue0 = value;
                });
              },
            ),
            Slider(
              max: 100,
              divisions: 5,
              value: sliderValue1,
              label: sliderValue1.round().toString(),
              onChanged: (value) {
                setState(() {
                  sliderValue1 = value;
                });
              },
            ),
          ],
        ));
  }
}

class ComponentDecoration extends StatelessWidget {
  const ComponentDecoration({
    super.key,
    required this.label,
    required this.child,
    this.tooltipMessage = '',
  });

  final String label;
  final Widget child;
  final String? tooltipMessage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(label, style: Theme.of(context).textTheme.titleSmall),
              Tooltip(
                message: tooltipMessage,
                child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Icon(Icons.info_outline, size: 16)),
              ),
            ],
          ),
          ConstrainedBox(
            constraints: const BoxConstraints.tightFor(width: widthConstraint),
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Theme.of(context).colorScheme.outline,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(12)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: child,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ComponentGroupDecoration extends StatelessWidget {
  const ComponentGroupDecoration(
      {super.key, required this.label, required this.children});

  final String label;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Theme.of(context).colorScheme.surfaceVariant.withOpacity(0.3),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              Text(label, style: Theme.of(context).textTheme.titleLarge),
              ...children
            ],
          ),
        ),
      ),
    );
  }
}
