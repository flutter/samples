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
          small: false,
          handleColorRoleChange: handleColorRoleChange,
          colorScheme: brightness == Brightness.light
              ? lightColorScheme
              : darkColorScheme,
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
    required this.small,
  });

  final ConfigColorSchemeCallback handleColorRoleChange;
  final ColorScheme colorScheme;
  final Brightness brightness;
  final bool small;

  @override
  State<ColorSchemeView> createState() => _ColorSchemeViewState();
}

class _ColorSchemeViewState extends State<ColorSchemeView> {
  late ColorScheme _colorScheme;
  late bool _small;

  @override
  void initState() {
    _colorScheme = widget.colorScheme;
    _small = widget.small;
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
    final primary = EditableColorChip(
      small: _small,
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
    );

    final onPrimary = EditableColorChip(
      small: _small,
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
    );

    final primaryContainer = EditableColorChip(
      small: _small,
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
    );

    final onPrimaryContainer = EditableColorChip(
      small: _small,
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
    );

    final secondary = EditableColorChip(
      small: _small,
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
    );

    final onSecondary = EditableColorChip(
      small: _small,
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
    );

    final secondaryContainer = EditableColorChip(
      small: _small,
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
    );

    final onSecondaryContainer = EditableColorChip(
      small: _small,
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
    );

    final tertiary = EditableColorChip(
      small: _small,
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
    );

    final onTertiary = EditableColorChip(
      small: _small,
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
    );

    final tertiaryContainer = EditableColorChip(
      small: _small,
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
    );

    final onTertiaryContainer = EditableColorChip(
      small: _small,
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
    );

    final error = EditableColorChip(
      small: _small,
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
    );

    final onError = EditableColorChip(
      small: _small,
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
    );

    final errorContainer = EditableColorChip(
      small: _small,
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
    );

    final onErrorContainer = EditableColorChip(
      small: _small,
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
    );

    final surface = EditableColorChip(
      small: _small,
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
    );

    final onSurface = EditableColorChip(
      small: _small,
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
    );

    final surfaceVariant = EditableColorChip(
      small: _small,
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
    );

    final onSurfaceVariant = EditableColorChip(
      small: _small,
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
    );

    final surfaceTint = EditableColorChip(
      small: _small,
      label: 'surfaceTint',
      color: _colorScheme.surfaceTint,
      updateColorScheme: (color) {
        _colorScheme = _colorScheme.copyWith(surfaceTint: color);
        widget.handleColorRoleChange(
          widget.brightness,
          surfaceTint: color,
        );
      },
    );

    final background = EditableColorChip(
      small: _small,
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
    );

    final onBackground = EditableColorChip(
      small: _small,
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
    );

    final outline = EditableColorChip(
      small: _small,
      label: 'outline',
      color: _colorScheme.outline,
      updateColorScheme: (color) {
        _colorScheme = _colorScheme.copyWith(outline: color);
        widget.handleColorRoleChange(
          widget.brightness,
          outline: color,
        );
      },
    );

    final outlineVariant = EditableColorChip(
      small: _small,
      label: 'outlineVariant',
      color: _colorScheme.outlineVariant,
      updateColorScheme: (color) {
        _colorScheme = _colorScheme.copyWith(outlineVariant: color);
        widget.handleColorRoleChange(
          widget.brightness,
          outlineVariant: color,
        );
      },
    );

    final shadow = EditableColorChip(
      small: _small,
      label: 'shadow',
      color: _colorScheme.shadow,
      updateColorScheme: (color) {
        _colorScheme = _colorScheme.copyWith(shadow: color);
        widget.handleColorRoleChange(
          widget.brightness,
          shadow: color,
        );
      },
    );

    final inverseSurface = EditableColorChip(
      small: _small,
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
    );

    final onInverseSurface = EditableColorChip(
      small: _small,
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
    );

    final inversePrimary = EditableColorChip(
      small: _small,
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
    );

    final scrim = EditableColorChip(
      small: _small,
      label: 'scrim',
      color: _colorScheme.scrim,
      updateColorScheme: (color) {
        _colorScheme = _colorScheme.copyWith(scrim: color);
        widget.handleColorRoleChange(
          widget.brightness,
          scrim: color,
        );
      },
    );

    return _small
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              ColorGroupNavRail(
                  message:
                      "Accents (primary, secondary, tertiary) are usually your brand colors and are used to emphasize elements. Error is for error states.",
                  colorName: "Accents & Error",
                  children: [primary, secondary, tertiary, error]),
              ColorGroupNavRail(
                  message:
                      "Indicates a color for text or icons on top of its paired parent color.",
                  colorName: "On Accents & Error",
                  children: [onPrimary, onSecondary, onTertiary, onError]),
              ColorGroupNavRail(
                  message:
                      "Used as a fill color for foreground elements like buttons.",
                  colorName: "Containers",
                  children: [
                    primaryContainer,
                    secondaryContainer,
                    tertiaryContainer,
                    errorContainer
                  ]),
              ColorGroupNavRail(
                  message:
                      "Indicates a color for text or icons on top of the paired container color.",
                  colorName: "On Containers",
                  children: [
                    onPrimaryContainer,
                    onSecondaryContainer,
                    onTertiaryContainer,
                    onErrorContainer
                  ]),
              ColorGroupNavRail(
                  message:
                      "Applied to actionable components on surfaces that are the reverse of those in the surrounding UI, creating a contrasting effect.",
                  colorName: "Inverse Primary",
                  children: [inversePrimary]),
              SizedBox(height: 20),
              ColorGroupNavRail(
                  message:
                      "Background is typically used behind scrollable content, while surface and surfaceVariant are used for background of widgets. Inverse surface is used as the reverse of surface for a contrasting effect.",
                  colorName: "Background & Surfaces",
                  children: [
                    background,
                    surface,
                    surfaceVariant,
                    inverseSurface
                  ]),
              ColorGroupNavRail(
                  message:
                      "The color used for text and icons on top of the background or surface colors.",
                  colorName: "On Background & Surfaces",
                  children: [
                    onBackground,
                    onSurface,
                    onSurfaceVariant,
                    onInverseSurface
                  ]),
              ColorGroupNavRail(
                  // TO DO: figure out what to put here, since this is deprecated
                  message: "",
                  colorName: "Surface Tint",
                  children: [surfaceTint]),
              ColorGroupNavRail(
                  message:
                      "Scrim is used for a semi-transparent overaly that darks areas to focus attention. Shadow and outline are used for shadows and outlines on some widgets.",
                  colorName: "Scrim, Shadow, Outline",
                  children: [scrim, shadow, outline, outlineVariant]),
            ],
          )
        : Column(
            children: [
              ColorGroup(
                small: _small,
                children: [
                  primary,
                  onPrimary,
                  primaryContainer,
                  onPrimaryContainer,
                ],
              ),
              divider,
              ColorGroup(
                small: _small,
                children: [
                  secondary,
                  onSecondary,
                  secondaryContainer,
                  onSecondaryContainer,
                ],
              ),
              divider,
              ColorGroup(
                small: _small,
                children: [
                  tertiary,
                  onTertiary,
                  tertiaryContainer,
                  onTertiaryContainer,
                ],
              ),
              divider,
              ColorGroup(
                small: _small,
                children: [
                  error,
                  onError,
                  errorContainer,
                  onErrorContainer,
                ],
              ),
              divider,
              ColorGroup(
                small: _small,
                children: [
                  surface,
                  onSurface,
                  surfaceVariant,
                  onSurfaceVariant,
                  surfaceTint,
                ],
              ),
              divider,
              ColorGroup(
                small: _small,
                children: [
                  outline,
                  outlineVariant,
                ],
              ),
              divider,
              ColorGroup(
                small: _small,
                children: [
                  inverseSurface,
                  onInverseSurface,
                  inversePrimary,
                ],
              ),
              divider,
              ColorGroup(
                small: _small,
                children: [background, onBackground, scrim, shadow],
              ),
              divider,
            ],
          );
  }
}

class ColorGroupNavRail extends StatelessWidget {
  const ColorGroupNavRail({
    super.key,
    required this.message,
    required this.colorName,
    required this.children,
  });

  final String message;
  final String colorName;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Tooltip(
          message: message,
          child: Row(
            children: [
              Text(colorName,
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .copyWith(fontWeight: FontWeight.bold)),
              const SizedBox(width: 5),
              const Icon(Icons.info_outline_rounded, size: 16),
            ],
          ),
        ),
        ColorGroup(small: true, children: children)
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
    required this.small,
    required this.updateColorScheme,
  });

  final String label;
  final Color color;
  final Color? onColor;
  final bool small;
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
                      pickerAreaBorderRadius:
                          const BorderRadius.all(Radius.circular(10)),
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
                            onPressed: () =>
                                copyToClipboard(textController.text),
                          ),
                        ),
                        autofocus: true,
                        maxLength: 8,
                        inputFormatters: [
                          UpperCaseTextFormatter(),
                          FilteringTextInputFormatter.allow(
                              RegExp(kValidHexPattern)),
                        ],
                      ),
                    )
                  ],
                ),
              );
            });
      },
      child: ColorChip(
        small: widget.small,
        label: widget.label,
        color: widget.color,
        onColor: widget.onColor,
      ),
    );
  }
}

class ColorGroup extends StatelessWidget {
  const ColorGroup({super.key, required this.children, required this.small});

  final List<Widget> children;
  final bool small;

  @override
  Widget build(BuildContext context) {
    final axisCount = children.length % 4 == 0
        ? 4
        : children.length % 3 == 0
            ? 3
            : children.length % 2 == 0
                ? 2
                : 1;

    return RepaintBoundary(
      child: Card(
        elevation: 0.0,
        clipBehavior: small ? Clip.none : Clip.antiAlias,
        child: small
            ? GridView.count(
                crossAxisCount: axisCount,
                crossAxisSpacing: 1,
                shrinkWrap: true,
                // childAspectRatio: children.length / 1,
                // childAspectRatio: (4 / axisCount) * axisCount

                // when 4 then 4, when 1 then 16
                childAspectRatio: 16 / axisCount,
                physics: const NeverScrollableScrollPhysics(),
                children: children,
              )
            : Column(
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
    required this.small,
    this.onColor,
  });

  final Color color;
  final Color? onColor;
  final String label;
  final bool small;

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
      decoration: BoxDecoration(
        color: color,
        border: small
            ? Border.all(
                color: Theme.of(context).colorScheme.onSurface,
                width: 2,
              )
            : null,
      ),
      child: small
          ? null
          : Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                      child: Text(label, style: TextStyle(color: labelColor))),
                  Text(
                    color.value.toRadixString(16).substring(2),
                    style: GoogleFonts.spaceMono(color: labelColor),
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
