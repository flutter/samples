// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_3_demo/home.dart';
import 'package:url_launcher/url_launcher.dart';

const Widget divider = SizedBox(height: 10);

// If screen content width is greater or equal to this value, the light and dark
// color schemes will be displayed in a column. Otherwise, they will
// be displayed in a row.
const double narrowScreenWidthThreshold = 400;

class ColorPalettesScreen extends StatelessWidget {
  const ColorPalettesScreen({
    super.key,
    required this.handleColorRoleChange,
    required this.lightColorScheme,
    required this.darkColorScheme,
  });

  final ConfigColorSchemeCallback handleColorRoleChange;
  final ColorScheme lightColorScheme;
  final ColorScheme darkColorScheme;

  @override
  Widget build(BuildContext context) {
    Widget schemeLabel(String brightness) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Text(
          brightness,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      );
    }

    Widget schemeView(Brightness brightness) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ColorSchemeView(
          handleColorRoleChange: handleColorRoleChange,
          colorScheme: brightness == Brightness.light ? lightColorScheme : darkColorScheme,
          brightness: brightness,
        ),
      );
    }

    Widget dynamicColorNotice() => RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: Theme.of(context).textTheme.bodySmall,
            children: [
              const TextSpan(
                  text: 'To create color schemes based on a '
                      'platform\'s implementation of dynamic color, '
                      'use the '),
              TextSpan(
                text: 'dynamic_color',
                style: const TextStyle(decoration: TextDecoration.underline),
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    final url = Uri.parse(
                      'https://pub.dev/packages/dynamic_color',
                    );
                    if (!await launchUrl(url)) {
                      throw Exception('Could not launch $url');
                    }
                  },
              ),
              const TextSpan(text: ' package.'),
            ],
          ),
        );

    return Expanded(
      child: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < narrowScreenWidthThreshold) {
          return SingleChildScrollView(
            child: Column(
              children: [
                dynamicColorNotice(),
                divider,
                schemeLabel('Light ColorScheme'),
                schemeView(Brightness.light),
                divider,
                divider,
                schemeLabel('Dark ColorScheme'),
                schemeView(Brightness.dark),
              ],
            ),
          );
        } else {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Column(
                children: [
                  dynamicColorNotice(),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            schemeLabel('Light ColorScheme'),
                            schemeView(Brightness.light),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            schemeLabel('Dark ColorScheme'),
                            schemeView(Brightness.dark),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }
      }),
    );
  }
}

class ColorSchemeView extends StatefulWidget {
  const ColorSchemeView({
    super.key,
    required this.handleColorRoleChange,
    required this.colorScheme,
    required this.brightness,
  });

  final ConfigColorSchemeCallback handleColorRoleChange;
  final ColorScheme colorScheme;
  final Brightness brightness;

  @override
  State<ColorSchemeView> createState() => _ColorSchemeViewState();
}

class _ColorSchemeViewState extends State<ColorSchemeView> {
  late ColorScheme _colorScheme;

  @override
  void initState() {
    _colorScheme = widget.colorScheme;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant ColorSchemeView oldWidget) {
    if (oldWidget.colorScheme != widget.colorScheme) {
      _colorScheme = widget.colorScheme;
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ColorGroup(
          children: [
            EditableColorChip(
              label: 'primary',
              color: _colorScheme.primary,
              onColor: _colorScheme.onPrimary,
              updateColorScheme: (color) {
                _colorScheme = _colorScheme.copyWith(primary: color);
                widget.handleColorRoleChange(
                  widget.brightness,
                  primary: color,
                );
              },
            ),
            EditableColorChip(
              label: 'onPrimary',
              color: _colorScheme.onPrimary,
              onColor: _colorScheme.primary,
              updateColorScheme: (color) {
                _colorScheme = _colorScheme.copyWith(onPrimary: color);
                widget.handleColorRoleChange(
                  widget.brightness,
                  onPrimary: color,
                );
              },
            ),
            EditableColorChip(
              label: 'primaryContainer',
              color: _colorScheme.primaryContainer,
              onColor: _colorScheme.onPrimaryContainer,
              updateColorScheme: (color) {
                _colorScheme = _colorScheme.copyWith(primaryContainer: color);
                widget.handleColorRoleChange(
                  widget.brightness,
                  primaryContainer: color,
                );
              },
            ),
            EditableColorChip(
              label: 'onPrimaryContainer',
              color: _colorScheme.onPrimaryContainer,
              onColor: _colorScheme.primaryContainer,
              updateColorScheme: (color) {
                _colorScheme = _colorScheme.copyWith(onPrimaryContainer: color);
                widget.handleColorRoleChange(
                  widget.brightness,
                  onPrimaryContainer: color,
                );
              },
            ),
          ],
        ),
        divider,
        ColorGroup(
          children: [
            EditableColorChip(
              label: 'secondary',
              color: _colorScheme.secondary,
              onColor: _colorScheme.onSecondary,
              updateColorScheme: (color) {
                _colorScheme = _colorScheme.copyWith(secondary: color);
                widget.handleColorRoleChange(
                  widget.brightness,
                  secondary: color,
                );
              },
            ),
            EditableColorChip(
              label: 'onSecondary',
              color: _colorScheme.onSecondary,
              onColor: _colorScheme.secondary,
              updateColorScheme: (color) {
                _colorScheme = _colorScheme.copyWith(onSecondary: color);
                widget.handleColorRoleChange(
                  widget.brightness,
                  onSecondary: color,
                );
              },
            ),
            EditableColorChip(
              label: 'secondaryContainer',
              color: _colorScheme.secondaryContainer,
              onColor: _colorScheme.onSecondaryContainer,
              updateColorScheme: (color) {
                _colorScheme = _colorScheme.copyWith(secondaryContainer: color);
                widget.handleColorRoleChange(
                  widget.brightness,
                  secondaryContainer: color,
                );
              },
            ),
            EditableColorChip(
              label: 'onSecondaryContainer',
              color: _colorScheme.onSecondaryContainer,
              onColor: _colorScheme.secondaryContainer,
              updateColorScheme: (color) {
                _colorScheme = _colorScheme.copyWith(onSecondaryContainer: color);
                widget.handleColorRoleChange(
                  widget.brightness,
                  onSecondaryContainer: color,
                );
              },
            ),
          ],
        ),
        divider,
        ColorGroup(
          children: [
            EditableColorChip(
              label: 'tertiary',
              color: _colorScheme.tertiary,
              onColor: _colorScheme.onTertiary,
              updateColorScheme: (color) {
                _colorScheme = _colorScheme.copyWith(tertiary: color);
                widget.handleColorRoleChange(
                  widget.brightness,
                  tertiary: color,
                );
              },
            ),
            EditableColorChip(
              label: 'onTertiary',
              color: _colorScheme.onTertiary,
              onColor: _colorScheme.tertiary,
              updateColorScheme: (color) {
                _colorScheme = _colorScheme.copyWith(onTertiary: color);
                widget.handleColorRoleChange(
                  widget.brightness,
                  onTertiary: color,
                );
              },
            ),
            EditableColorChip(
              label: 'tertiaryContainer',
              color: _colorScheme.tertiaryContainer,
              onColor: _colorScheme.onTertiaryContainer,
              updateColorScheme: (color) {
                _colorScheme = _colorScheme.copyWith(tertiaryContainer: color);
                widget.handleColorRoleChange(
                  widget.brightness,
                  tertiaryContainer: color,
                );
              },
            ),
            EditableColorChip(
              label: 'onTertiaryContainer',
              color: _colorScheme.onTertiaryContainer,
              onColor: _colorScheme.tertiaryContainer,
              updateColorScheme: (color) {
                _colorScheme = _colorScheme.copyWith(onTertiaryContainer: color);
                widget.handleColorRoleChange(
                  widget.brightness,
                  onTertiaryContainer: color,
                );
              },
            ),
          ],
        ),
        divider,
        ColorGroup(
          children: [
            EditableColorChip(
              label: 'error',
              color: _colorScheme.error,
              onColor: _colorScheme.onError,
              updateColorScheme: (color) {
                _colorScheme = _colorScheme.copyWith(error: color);
                widget.handleColorRoleChange(
                  widget.brightness,
                  error: color,
                );
              },
            ),
            EditableColorChip(
              label: 'onError',
              color: _colorScheme.onError,
              onColor: _colorScheme.error,
              updateColorScheme: (color) {
                _colorScheme = _colorScheme.copyWith(onError: color);
                widget.handleColorRoleChange(
                  widget.brightness,
                  onError: color,
                );
              },
            ),
            EditableColorChip(
              label: 'errorContainer',
              color: _colorScheme.errorContainer,
              onColor: _colorScheme.onErrorContainer,
              updateColorScheme: (color) {
                _colorScheme = _colorScheme.copyWith(errorContainer: color);
                widget.handleColorRoleChange(
                  widget.brightness,
                  errorContainer: color,
                );
              },
            ),
            EditableColorChip(
              label: 'onErrorContainer',
              color: _colorScheme.onErrorContainer,
              onColor: _colorScheme.errorContainer,
              updateColorScheme: (color) {
                _colorScheme = _colorScheme.copyWith(onErrorContainer: color);
                widget.handleColorRoleChange(
                  widget.brightness,
                  onErrorContainer: color,
                );
              },
            ),
          ],
        ),
        divider,
        ColorGroup(
          children: [
            EditableColorChip(
              label: 'surface',
              color: _colorScheme.surface,
              onColor: _colorScheme.onSurface,
              updateColorScheme: (color) {
                _colorScheme = _colorScheme.copyWith(surface: color);
                widget.handleColorRoleChange(
                  widget.brightness,
                  surface: color,
                );
              },
            ),
            EditableColorChip(
              label: 'onSurface',
              color: _colorScheme.onSurface,
              onColor: _colorScheme.surface,
              updateColorScheme: (color) {
                _colorScheme = _colorScheme.copyWith(onSurface: color);
                widget.handleColorRoleChange(
                  widget.brightness,
                  onSurface: color,
                );
              },
            ),
            EditableColorChip(
              label: 'surfaceVariant',
              color: _colorScheme.surfaceVariant,
              onColor: _colorScheme.onSurfaceVariant,
              updateColorScheme: (color) {
                _colorScheme = _colorScheme.copyWith(surfaceVariant: color);
                widget.handleColorRoleChange(
                  widget.brightness,
                  surfaceVariant: color,
                );
              },
            ),
            EditableColorChip(
              label: 'onSurfaceVariant',
              color: _colorScheme.onSurfaceVariant,
              onColor: _colorScheme.surfaceVariant,
              updateColorScheme: (color) {
                _colorScheme = _colorScheme.copyWith(onSurfaceVariant: color);
                widget.handleColorRoleChange(
                  widget.brightness,
                  onSurfaceVariant: color,
                );
              },
            ),
            EditableColorChip(
              label: 'surfaceTint',
              color: _colorScheme.surfaceTint,
              updateColorScheme: (color) {
                _colorScheme = _colorScheme.copyWith(surfaceTint: color);
                widget.handleColorRoleChange(
                  widget.brightness,
                  surfaceTint: color,
                );
              },
            ),
          ],
        ),
        divider,
        ColorGroup(
          children: [
            EditableColorChip(
              label: 'outline',
              color: _colorScheme.outline,
              updateColorScheme: (color) {
                _colorScheme = _colorScheme.copyWith(outline: color);
                widget.handleColorRoleChange(
                  widget.brightness,
                  outline: color,
                );
              },
            ),
            EditableColorChip(
              label: 'outlineVariant',
              color: _colorScheme.outlineVariant,
              updateColorScheme: (color) {
                _colorScheme = _colorScheme.copyWith(outlineVariant: color);
                widget.handleColorRoleChange(
                  widget.brightness,
                  outlineVariant: color,
                );
              },
            ),
          ],
        ),
        divider,
        ColorGroup(
          children: [
            EditableColorChip(
              label: 'inverseSurface',
              color: _colorScheme.inverseSurface,
              onColor: _colorScheme.onInverseSurface,
              updateColorScheme: (color) {
                _colorScheme = _colorScheme.copyWith(inverseSurface: color);
                widget.handleColorRoleChange(
                  widget.brightness,
                  inverseSurface: color,
                );
              },
            ),
            EditableColorChip(
              label: 'onInverseSurface',
              color: _colorScheme.onInverseSurface,
              onColor: _colorScheme.inverseSurface,
              updateColorScheme: (color) {
                _colorScheme = _colorScheme.copyWith(onInverseSurface: color);
                widget.handleColorRoleChange(
                  widget.brightness,
                  onInverseSurface: color,
                );
              },
            ),
            EditableColorChip(
              label: 'inversePrimary',
              color: _colorScheme.inversePrimary,
              onColor: _colorScheme.primary,
              updateColorScheme: (color) {
                _colorScheme = _colorScheme.copyWith(inversePrimary: color);
                widget.handleColorRoleChange(
                  widget.brightness,
                  inversePrimary: color,
                );
              },
            ),
          ],
        ),
        divider,
        ColorGroup(
          children: [
            EditableColorChip(
              label: 'background',
              color: _colorScheme.background,
              onColor: _colorScheme.onBackground,
              updateColorScheme: (color) {
                _colorScheme = _colorScheme.copyWith(background: color);
                widget.handleColorRoleChange(
                  widget.brightness,
                  background: color,
                );
              },
            ),
            EditableColorChip(
              label: 'onBackground',
              color: _colorScheme.onBackground,
              onColor: _colorScheme.background,
              updateColorScheme: (color) {
                _colorScheme = _colorScheme.copyWith(onBackground: color);
                widget.handleColorRoleChange(
                  widget.brightness,
                  onBackground: color,
                );
              },
            ),
            EditableColorChip(
              label: 'scrim',
              color: _colorScheme.scrim,
              updateColorScheme: (color) {
                _colorScheme = _colorScheme.copyWith(scrim: color);
                widget.handleColorRoleChange(
                  widget.brightness,
                  scrim: color,
                );
              },
            ),
            EditableColorChip(
              label: 'shadow',
              color: _colorScheme.shadow,
              updateColorScheme: (color) {
                _colorScheme = _colorScheme.copyWith(shadow: color);
                widget.handleColorRoleChange(
                  widget.brightness,
                  shadow: color,
                );
              },
            ),
          ],
        ),
        divider,
      ],
    );
  }
}

class EditableColorChip extends StatefulWidget {
  const EditableColorChip({
    super.key,
    this.onColor,
    required this.label,
    required this.color,
    required this.updateColorScheme,
  });

  final String label;
  final Color color;
  final Color? onColor;
  final void Function(Color) updateColorScheme;

  @override
  State<EditableColorChip> createState() => _EditableColorChipState();
}

class _EditableColorChipState extends State<EditableColorChip> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog<void>(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ColorPicker(
                    pickerColor: widget.color,
                    onColorChanged: widget.updateColorScheme,
                    paletteType: PaletteType.hsvWithHue,
                    labelTypes: const [
                      ColorLabelType.rgb,
                      ColorLabelType.hsv,
                      ColorLabelType.hsl
                    ],
                    pickerAreaBorderRadius: const BorderRadius.all(Radius.circular(10)),
                    hexInputController: textController,
                    portraitOnly: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                    child: TextField(
                      controller: textController,
                      decoration: InputDecoration(
                        prefixText: '#',
                        suffix: IconButton(
                          icon: const Icon(Icons.content_paste_rounded),
                          onPressed: () => copyToClipboard(textController.text),
                        ),
                      ),
                      autofocus: true,
                      maxLength: 8,
                      inputFormatters: [
                        UpperCaseTextFormatter(),
                        FilteringTextInputFormatter.allow(RegExp(kValidHexPattern)),
                      ],
                    ),
                  )
                ],
              ),
            );
          }
        );
      },
      child: ColorChip(
        label: widget.label,
        color: widget.color,
        onColor: widget.onColor,
      ),
    );
  }
}

class ColorGroup extends StatelessWidget {
  const ColorGroup({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Card(
        elevation: 0.0,
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: children,
        ),
      ),
    );
  }
}

class ColorChip extends StatelessWidget {
  const ColorChip({
    super.key,
    required this.color,
    required this.label,
    this.onColor,
  });

  final Color color;
  final Color? onColor;
  final String label;

  static Color contrastColor(Color color) {
    final brightness = ThemeData.estimateBrightnessForColor(color);
    switch (brightness) {
      case Brightness.dark:
        return Colors.white;
      case Brightness.light:
        return Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    final Color labelColor = onColor ?? contrastColor(color);

    return Container(
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(child: Text(label, style: TextStyle(color: labelColor))),
            Text(
              color.value.toRadixString(16).substring(2),
              style: GoogleFonts.spaceMono(
                color: labelColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void copyToClipboard(String input) {
  String textToCopy = input.replaceFirst('#', '').toUpperCase();
  if (textToCopy.startsWith('FF') && textToCopy.length == 8) {
    textToCopy = textToCopy.replaceFirst('FF', '');
  }
  Clipboard.setData(ClipboardData(text: '#$textToCopy'));
}
