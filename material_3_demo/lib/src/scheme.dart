// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'color_box.dart';

class SchemePreview extends StatefulWidget {
  const SchemePreview({
    super.key,
    required this.label,
    required this.scheme,
    required this.brightness,
    required this.colorMatch,
    required this.contrast,
  });

  final String label;
  final ColorScheme scheme;
  final Brightness brightness;
  final bool colorMatch;
  final double contrast;

  @override
  State<SchemePreview> createState() => _SchemePreviewState();
}

class _SchemePreviewState extends State<SchemePreview> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final fonts = theme.textTheme;
    final colors = theme.colorScheme;
    final dark = widget.brightness == Brightness.dark;

    final scheme = widget.scheme;

    return Theme(
      data: theme.copyWith(colorScheme: scheme),
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: Container(
          width: 902,
          decoration: BoxDecoration(
            color: scheme.surface,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color:
                  theme.brightness == widget.brightness
                      ? colors.outlineVariant
                      : Colors.transparent,
            ),
          ),
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.label,
                      style: fonts.titleMedium!.copyWith(
                        color: scheme.onSurface,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ColorBox(
                                label: 'Primary',
                                tone: dark ? 'P-80' : 'P-40',
                                color: scheme.primary,
                                onColor: scheme.onPrimary,
                                height: 87,
                                width: 208,
                              ),
                              ColorBox(
                                label: 'On Primary',
                                tone: dark ? 'P-20' : 'P-100',
                                color: scheme.onPrimary,
                                onColor: scheme.primary,
                                height: 40,
                                width: 208,
                              ),
                              const SizedBox(height: 5),
                              ColorBox(
                                label: 'Primary Container',
                                tone: dark ? 'P-30' : 'P-90',
                                color: scheme.primaryContainer,
                                onColor: scheme.onPrimaryContainer,
                                height: 87,
                                width: 208,
                              ),
                              ColorBox(
                                label: 'On Primary Container',
                                tone: dark ? 'P-90' : 'P-10',
                                color: scheme.onPrimaryContainer,
                                onColor: scheme.primaryContainer,
                                height: 40,
                                width: 208,
                              ),
                            ],
                          ),
                          const SizedBox(width: 5),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ColorBox(
                                label: 'Secondary',
                                tone: dark ? 'S-80' : 'S-40',
                                color: scheme.secondary,
                                onColor: scheme.onSecondary,
                                height: 87,
                                width: 208,
                              ),
                              ColorBox(
                                label: 'On Secondary',
                                tone: dark ? 'S-20' : 'S-100',
                                color: scheme.onSecondary,
                                onColor: scheme.secondary,
                                height: 40,
                                width: 208,
                              ),
                              const SizedBox(height: 5),
                              ColorBox(
                                label: 'Secondary Container',
                                tone: dark ? 'S-30' : 'S-90',
                                color: scheme.secondaryContainer,
                                onColor: scheme.onSecondaryContainer,
                                height: 87,
                                width: 208,
                              ),
                              ColorBox(
                                label: 'On Secondary Container',
                                tone: dark ? 'S-90' : 'S-10',
                                color: scheme.onSecondaryContainer,
                                onColor: scheme.secondaryContainer,
                                height: 40,
                                width: 208,
                              ),
                            ],
                          ),
                          const SizedBox(width: 5),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ColorBox(
                                label: 'Tertiary',
                                tone: dark ? 'T-80' : 'T-40',
                                color: scheme.tertiary,
                                onColor: scheme.onTertiary,
                                height: 87,
                                width: 208,
                              ),
                              ColorBox(
                                label: 'On Tertiary',
                                tone: dark ? 'T-20' : 'T-100',
                                color: scheme.onTertiary,
                                onColor: scheme.tertiary,
                                height: 40,
                                width: 208,
                              ),
                              const SizedBox(height: 5),
                              ColorBox(
                                label: 'Tertiary Container',
                                tone: dark ? 'T-30' : 'T-90',
                                color: scheme.tertiaryContainer,
                                onColor: scheme.onTertiaryContainer,
                                height: 87,
                                width: 208,
                              ),
                              ColorBox(
                                label: 'On Tertiary Container',
                                tone: dark ? 'T-90' : 'T-10',
                                color: scheme.onTertiaryContainer,
                                onColor: scheme.tertiaryContainer,
                                height: 40,
                                width: 208,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ColorBox(
                            label: 'Surface Dim',
                            tone: dark ? 'N-6' : 'N-87',
                            color: scheme.surfaceDim,
                            onColor: scheme.onSurface,
                            height: 105,
                            width: 211.45,
                          ),
                          ColorBox(
                            label: 'Surface',
                            tone: dark ? 'N-6' : 'N-98',
                            color: scheme.surface,
                            onColor: scheme.onSurface,
                            height: 105,
                            width: 211.45,
                          ),
                          ColorBox(
                            label: 'Surface Bright',
                            tone: dark ? 'N-24' : 'N-98',
                            color: scheme.surfaceBright,
                            onColor: scheme.onSurface,
                            height: 105,
                            width: 211.45,
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ColorBox(
                            label: 'Surf. Container\nLowest',
                            tone: dark ? 'N-4' : 'N-100',
                            color: scheme.surfaceContainerLowest,
                            onColor: scheme.onSurface,
                            height: 105,
                            width: 126.87,
                          ),
                          ColorBox(
                            label: 'Surf. Container\nLow',
                            tone: dark ? 'N-10' : 'N-96',
                            color: scheme.surfaceContainerLow,
                            onColor: scheme.onSurface,
                            height: 105,
                            width: 126.87,
                          ),
                          ColorBox(
                            label: 'Surf. Container',
                            tone: dark ? 'N-12' : 'N-94',
                            color: scheme.surfaceContainer,
                            onColor: scheme.onSurface,
                            height: 105,
                            width: 126.87,
                          ),
                          ColorBox(
                            label: 'Surf. Container\nHigh',
                            tone: dark ? 'N-17' : 'N-92',
                            color: scheme.surfaceContainerHigh,
                            onColor: scheme.onSurface,
                            height: 105,
                            width: 126.87,
                          ),
                          ColorBox(
                            label: 'Surf. Container\nHighest',
                            tone: dark ? 'N-24' : 'N-90',
                            color: scheme.surfaceContainerHighest,
                            onColor: scheme.onSurface,
                            height: 105,
                            width: 126.87,
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ColorBox(
                            label: 'On Surface',
                            tone: dark ? 'N-90' : 'N-10',
                            color: scheme.onSurface,
                            onColor: scheme.surface,
                            height: 40,
                            width: 158.59,
                          ),
                          ColorBox(
                            label: 'On Surface Var.',
                            tone: dark ? 'NV-90' : 'NV-30',
                            color: scheme.onSurfaceVariant,
                            onColor: scheme.surfaceContainerHighest,
                            height: 40,
                            width: 158.59,
                          ),
                          ColorBox(
                            label: 'Outline',
                            tone: dark ? 'NV-60' : 'NV-50',
                            color: scheme.outline,
                            onColor: scheme.surface,
                            height: 40,
                            width: 158.59,
                          ),
                          ColorBox(
                            label: 'Outline Variant',
                            tone: dark ? 'NV-30' : 'NV-80',
                            color: scheme.outlineVariant,
                            onColor: scheme.onSurface,
                            height: 40,
                            width: 158.59,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(width: 20),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ColorBox(
                        label: 'Error',
                        tone: dark ? 'E-80' : 'E-40',
                        color: scheme.error,
                        onColor: scheme.onError,
                        height: 87,
                        width: 208,
                      ),
                      ColorBox(
                        label: 'On Error',
                        tone: dark ? 'E-20' : 'E-100',
                        color: scheme.onError,
                        onColor: scheme.error,
                        height: 40,
                        width: 208,
                      ),
                      const SizedBox(height: 5),
                      ColorBox(
                        label: 'Error Container',
                        tone: dark ? 'E-30' : 'E-90',
                        color: scheme.errorContainer,
                        onColor: scheme.onErrorContainer,
                        height: 87,
                        width: 208,
                      ),
                      ColorBox(
                        label: 'On Error Container',
                        tone: dark ? 'E-90' : 'E-10',
                        color: scheme.onErrorContainer,
                        onColor: scheme.errorContainer,
                        height: 40,
                        width: 208,
                      ),
                      const SizedBox(height: 20),
                      ColorBox(
                        label: 'Inverse Surface',
                        tone: dark ? 'N-90' : 'N-20',
                        color: scheme.inverseSurface,
                        onColor: scheme.onInverseSurface,
                        height: 120,
                        width: 208,
                      ),
                      ColorBox(
                        label: 'Inverse On Surface',
                        tone: dark ? 'N-20' : 'N-95',
                        color: scheme.onInverseSurface,
                        onColor: scheme.inverseSurface,
                        height: 40,
                        width: 208,
                      ),
                      const SizedBox(height: 5),
                      ColorBox(
                        label: 'Inverse Primary',
                        tone: dark ? 'P-40' : 'P-80',
                        color: scheme.inversePrimary,
                        onColor: scheme.onSurface,
                        height: 40,
                        width: 208,
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ColorBox(
                            label: 'Scrim',
                            tone: 'N-0',
                            color: scheme.scrim,
                            onColor: Colors.white,
                            height: 40,
                            width: 96.31,
                          ),
                          const SizedBox(width: 20),
                          ColorBox(
                            label: 'Shadow',
                            tone: 'N-0',
                            color: scheme.shadow,
                            onColor: Colors.white,
                            height: 40,
                            width: 96.31,
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
