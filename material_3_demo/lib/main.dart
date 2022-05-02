import 'package:flutter/material.dart';
import 'package:material_3_demo/surface_tones_screen.dart';
import 'package:material_3_demo/typography_screen.dart';

import 'color_palettes_screen.dart';

void main() {
  runApp(const Material3Demo());
}

class Material3Demo extends StatefulWidget {
  const Material3Demo({Key? key}) : super(key: key);

  @override
  State<Material3Demo> createState() => _Material3DemoState();
}

const Color m3BaseColor = Color(0xff6750a4);
const List<Color> colorOptions = [
  m3BaseColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink
];
const List colorText = [
  "M3 Base Color",
  "Blue",
  "Teal",
  "Green",
  "Yellow",
  "Orange",
  "Pink",
];

class _Material3DemoState extends State<Material3Demo> {
  bool onMaterial3 = true;
  bool onLightMode = true;
  Color colorSeed = m3BaseColor;
  int colorSelected = 0;
  int screenIndex = 0;

  ThemeData lightTheme =
      ThemeData(colorSchemeSeed: m3BaseColor, useMaterial3: true);
  ThemeData darkTheme = ThemeData(
      colorSchemeSeed: m3BaseColor,
      useMaterial3: true,
      brightness: Brightness.dark);

  void onNavigationSelect(selectedScreen) {
    setState(() {
      screenIndex = selectedScreen;
    });
  }

  void handleModeChange() {
    setState(() {
      onLightMode = !onLightMode;
    });
  }

  void handleVersionChange() {
    setState(() {
      onMaterial3 = !onMaterial3;
      lightTheme =
          ThemeData(colorSchemeSeed: colorSeed, useMaterial3: onMaterial3);
      darkTheme = ThemeData(
          colorSchemeSeed: colorSeed,
          useMaterial3: onMaterial3,
          brightness: Brightness.dark);
    });
  }

  void handleColorSelect(value) {
    setState(() {
      colorSelected = value;
      colorSeed = colorOptions[value];
      lightTheme =
          ThemeData(colorSchemeSeed: colorSeed, useMaterial3: onMaterial3);
      darkTheme = ThemeData(
          colorSchemeSeed: colorSeed,
          useMaterial3: onMaterial3,
          brightness: Brightness.dark);
    });
  }

  Widget handleScreenChange(screenIndex, showNavBarExample) {
    switch (screenIndex) {
      case 0:
        return ComponentScreen(showNavBottomBar: showNavBarExample);
      case 1:
        return const ColorPalettesScreen();
      case 2:
        return const TypographyScreen();
      case 3:
        return const SurfaceTonesScreen();
      default:
        return ComponentScreen(showNavBottomBar: showNavBarExample);
    }
  }

  PreferredSizeWidget handleAppBar() {
    return AppBar(
      title: onMaterial3 ? const Text("Material 3") : const Text("Material 2"),
      actions: [
        IconButton(
          icon: onLightMode
              ? const Icon(Icons.wb_sunny_outlined)
              : const Icon(Icons.wb_sunny),
          onPressed: handleModeChange,
        ),
        IconButton(
            onPressed: handleVersionChange,
            icon: onMaterial3
                ? const Icon(Icons.filter_3)
                : const Icon(Icons.filter_2)),
        PopupMenuButton(
          icon: const Icon(Icons.more_vert),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          itemBuilder: (context) {
            return List.generate(colorOptions.length, (index) {
              return PopupMenuItem(
                  value: index,
                  child: Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Icon(
                          index == colorSelected
                              ? Icons.color_lens
                              : Icons.color_lens_outlined,
                          color: colorOptions[index],
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(colorText[index]))
                    ],
                  ));
            });
          },
          onSelected: handleColorSelect,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material 3',
      themeMode: onLightMode ? ThemeMode.light : ThemeMode.dark,
      theme: onLightMode ? lightTheme : darkTheme,
      home: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 450) {
          return Scaffold(
            appBar: handleAppBar(),
            body: Row(children: <Widget>[
              handleScreenChange(screenIndex, false),
            ]),
            bottomNavigationBar: NavigationBars(
              onSelectItem: onNavigationSelect,
              selectedIndex: screenIndex,
              isExampleBar: false,
            ),
          );
        } else {
          return Scaffold(
            appBar: handleAppBar(),
            body: SafeArea(
              bottom: false,
              top: false,
              child: Row(children: <Widget>[
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: NavigationRailSection(
                        onSelectItem: onNavigationSelect,
                        selectedIndex: screenIndex)),
                const VerticalDivider(thickness: 1, width: 1),
                handleScreenChange(screenIndex, true),
              ]),
            ),
          );
        }
      }),
    );
  }
}

class ComponentScreen extends StatelessWidget {
  final bool showNavBottomBar;

  const ComponentScreen({Key? key, required this.showNavBottomBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          shrinkWrap: true,
          children: [
            _colDivider,
            _colDivider,
            const Buttons(),
            _colDivider,
            const FloatingActionButtons(),
            _colDivider,
            const Cards(),
            _colDivider,
            const Dialogs(),
            _colDivider,
            showNavBottomBar
                ? const NavigationBars(
                    selectedIndex: 0,
                    isExampleBar: true,
                  )
                : Container(),
            // SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

const _rowDivider = SizedBox(width: 10);
const _colDivider = SizedBox(height: 10);
const double cardWidth = 115;

void Function()? handlePressed(context, isDisabled, buttonName) {
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
  const Buttons({Key? key}) : super(key: key);

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
        _rowDivider,
        ButtonsWithIcon(),
        _rowDivider,
        ButtonsWithoutIcon(isDisabled: true),
      ],
    );
  }
}

class ButtonsWithoutIcon extends StatelessWidget {
  final bool isDisabled;

  const ButtonsWithoutIcon({Key? key, required this.isDisabled})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ElevatedButton(
            onPressed: handlePressed(context, isDisabled, "ElevatedButton"),
            child: const Text("Elevated"),
          ),
          _colDivider,
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              // Foreground color
              onPrimary: Theme.of(context).colorScheme.onPrimary,
              // Background color
              primary: Theme.of(context).colorScheme.primary,
            ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
            onPressed: handlePressed(context, isDisabled, "FilledButton"),
            child: const Text('Filled'),
          ),
          _colDivider,
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              // Foreground color
              onPrimary: Theme.of(context).colorScheme.onSecondaryContainer,
              // Background color
              primary: Theme.of(context).colorScheme.secondaryContainer,
            ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
            onPressed: handlePressed(context, isDisabled, "FilledTonalButton"),
            child: const Text('Filled Tonal'),
          ),
          _colDivider,
          OutlinedButton(
            onPressed: handlePressed(context, isDisabled, "OutlinedButton"),
            child: const Text("Outlined"),
          ),
          _colDivider,
          TextButton(
              onPressed: handlePressed(context, isDisabled, "TextButton"),
              child: const Text("Text")),
        ],
      ),
    );
  }
}

class ButtonsWithIcon extends StatelessWidget {
  const ButtonsWithIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ElevatedButton.icon(
            onPressed:
                handlePressed(context, false, "ElevatedButton with Icon"),
            icon: const Icon(Icons.add),
            label: const Text("Icon"),
          ),
          _colDivider,
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              // Foreground color
              onPrimary: Theme.of(context).colorScheme.onPrimary,
              // Background color
              primary: Theme.of(context).colorScheme.primary,
            ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
            onPressed: handlePressed(context, false, "FilledButton with Icon"),
            label: const Text('Icon'),
            icon: const Icon(Icons.add),
          ),
          _colDivider,
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              // Foreground color
              onPrimary: Theme.of(context).colorScheme.onSecondaryContainer,
              // Background color
              primary: Theme.of(context).colorScheme.secondaryContainer,
            ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
            onPressed:
                handlePressed(context, false, "FilledTonalButton with Icon"),
            label: const Text('Icon'),
            icon: const Icon(Icons.add),
          ),
          _colDivider,
          OutlinedButton.icon(
            onPressed:
                handlePressed(context, false, "OutlinedButton with Icon"),
            icon: const Icon(Icons.add),
            label: const Text("Icon"),
          ),
          _colDivider,
          TextButton.icon(
            onPressed: handlePressed(context, false, "TextButton with Icon"),
            icon: const Icon(Icons.add),
            label: const Text("Icon"),
          )
        ],
      ),
    );
  }
}

class FloatingActionButtons extends StatelessWidget {
  const FloatingActionButtons({Key? key}) : super(key: key);

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
          _rowDivider,
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          _rowDivider,
          FloatingActionButton.extended(
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: const Text("Create"),
          ),
          _rowDivider,
          FloatingActionButton.large(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          // const SizedBox(height: 5),
        ],
      ),
    );
  }
}

class Cards extends StatelessWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
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
                    _colDivider,
                    _colDivider,
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text("Elevated"),
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
                    _colDivider,
                    _colDivider,
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text("Filled"),
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
                    _colDivider,
                    _colDivider,
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text("Outlined"),
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

class Dialogs extends StatefulWidget {
  const Dialogs({Key? key}) : super(key: key);

  @override
  State<Dialogs> createState() => _DialogsState();
}

class _DialogsState extends State<Dialogs> {
  void openDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text("Basic Dialog Title"),
              content: const Text(
                  "A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made."),
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
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      // M3 Dialog
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextButton(
        child: const Text(
          "Open Dialog",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        onPressed: () => openDialog(context),
      ),
    );
  }
}

class NavigationBars extends StatefulWidget {
  final void Function(int)? onSelectItem;
  final int selectedIndex;
  final bool isExampleBar;

  const NavigationBars(
      {Key? key,
      this.onSelectItem,
      required this.selectedIndex,
      required this.isExampleBar})
      : super(key: key);

  @override
  State<NavigationBars> createState() => _NavigationBarsState();
}

class _NavigationBarsState extends State<NavigationBars> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex;
  }

  static const List<Widget> appBarDestinations = [
    NavigationDestination(
      tooltip: "",
      icon: Icon(Icons.widgets_outlined),
      label: 'Components',
      selectedIcon: Icon(Icons.widgets),
    ),
    NavigationDestination(
      tooltip: "",
      icon: Icon(Icons.format_paint_outlined),
      label: 'Colors',
      selectedIcon: Icon(Icons.format_paint),
    ),
    NavigationDestination(
      tooltip: "",
      icon: Icon(Icons.text_snippet_outlined),
      label: 'Typography',
      selectedIcon: Icon(Icons.text_snippet),
    ),
    NavigationDestination(
      tooltip: "",
      icon: Icon(Icons.invert_colors_on_outlined),
      label: 'Surface Tint',
      selectedIcon: Icon(Icons.opacity),
    )
  ];

  static const List<Widget> exampleBarDestinations = [
    NavigationDestination(
      tooltip: "",
      icon: Icon(Icons.explore_outlined),
      label: 'Explore',
      selectedIcon: Icon(Icons.explore),
    ),
    NavigationDestination(
      tooltip: "",
      icon: Icon(Icons.pets_outlined),
      label: 'Pets',
      selectedIcon: Icon(Icons.pets),
    ),
    NavigationDestination(
      tooltip: "",
      icon: Icon(Icons.account_box_outlined),
      label: 'Account',
      selectedIcon: Icon(Icons.account_box),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: _selectedIndex,
      onDestinationSelected: (index) {
        setState(() {
          _selectedIndex = index;
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
      {Key? key, required this.onSelectItem, required this.selectedIndex})
      : super(key: key);

  @override
  State<NavigationRailSection> createState() => _NavigationRailSectionState();
}

class _NavigationRailSectionState extends State<NavigationRailSection> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      minWidth: 50,
      destinations: const <NavigationRailDestination>[
        NavigationRailDestination(
          padding: EdgeInsets.only(top: 12),
          icon: Tooltip(
            message: "Components",
            child: Icon(Icons.widgets_outlined),
          ),
          selectedIcon: Tooltip(
            message: "Components",
            child: Icon(Icons.widgets),
          ),
          label: Text("Components"),
        ),
        NavigationRailDestination(
          icon: Tooltip(
              message: "Colors", child: Icon(Icons.format_paint_outlined)),
          selectedIcon:
              Tooltip(message: "Colors", child: Icon(Icons.format_paint)),
          label: Text("Colors"),
        ),
        NavigationRailDestination(
          icon: Tooltip(
              message: "Typography", child: Icon(Icons.text_snippet_outlined)),
          selectedIcon:
              Tooltip(message: "Typography", child: Icon(Icons.text_snippet)),
          label: Text("Typography"),
        ),
        NavigationRailDestination(
          icon: Tooltip(
              message: "Surface Tint Overlay",
              child: Icon(Icons.invert_colors_on_outlined)),
          selectedIcon: Tooltip(
              message: "Surface Tint Overlay", child: Icon(Icons.opacity)),
          label: Text("Surface \nTint \nOverlay"),
        )
      ],
      selectedIndex: _selectedIndex,
      useIndicator: true,
      onDestinationSelected: (index) {
        setState(() {
          _selectedIndex = index;
        });
        widget.onSelectItem(index);
      },
    );
  }
}
