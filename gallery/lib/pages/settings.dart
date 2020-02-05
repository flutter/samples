// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:collection';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localized_locales/flutter_localized_locales.dart';
import 'package:gallery/constants.dart';
import 'package:gallery/data/gallery_options.dart';
import 'package:gallery/l10n/gallery_localizations.dart';
import 'package:gallery/layout/adaptive.dart';
import 'package:gallery/pages/about.dart' as about;
import 'package:gallery/pages/backdrop.dart';
import 'package:gallery/pages/home.dart';
import 'package:gallery/pages/settings_list_item.dart';
import 'package:url_launcher/url_launcher.dart';

enum _ExpandableSetting {
  textScale,
  textDirection,
  locale,
  platform,
  theme,
}

class SettingsPage extends StatefulWidget {
  SettingsPage({
    Key key,
    @required this.openSettingsAnimation,
    @required this.staggerSettingsItemsAnimation,
    @required this.isSettingsOpenNotifier,
  }) : super(key: key);

  final Animation<double> openSettingsAnimation;
  final Animation<double> staggerSettingsItemsAnimation;
  final ValueNotifier<bool> isSettingsOpenNotifier;

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  _ExpandableSetting expandedSettingId;
  Map<String, String> _localeNativeNames;

  void onTapSetting(_ExpandableSetting settingId) {
    setState(() {
      if (expandedSettingId == settingId) {
        expandedSettingId = null;
      } else {
        expandedSettingId = settingId;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    LocaleNamesLocalizationsDelegate().allNativeNames().then(
          (data) => setState(
            () {
              _localeNativeNames = data;
            },
          ),
        );

    // When closing settings, also shrink expanded setting.
    widget.isSettingsOpenNotifier.addListener(() {
      if (!widget.isSettingsOpenNotifier.value) {
        setState(() {
          expandedSettingId = null;
        });
      }
    });
  }

  /// Given a [Locale], returns a [DisplayOption] with its native name for a
  /// title and its name in the currently selected locale for a subtitle. If the
  /// native name can't be determined, it is omitted. If the locale can't be
  /// determined, the locale code is used.
  DisplayOption _getLocaleDisplayOption(BuildContext context, Locale locale) {
    // TODO: gsw, fil, and es_419 aren't in flutter_localized_countries' dataset
    final localeCode = locale.toString();
    final localeName = LocaleNames.of(context).nameOf(localeCode);
    if (localeName != null) {
      final localeNativeName =
          _localeNativeNames != null ? _localeNativeNames[localeCode] : null;
      return localeNativeName != null
          ? DisplayOption(localeNativeName, subtitle: localeName)
          : DisplayOption(localeName);
    } else {
      switch (localeCode) {
        case 'gsw':
          return DisplayOption('Schwiizertüütsch', subtitle: 'Swiss German');
        case 'fil':
          return DisplayOption('Filipino', subtitle: 'Filipino');
        case 'es_419':
          return DisplayOption(
            'español (Latinoamérica)',
            subtitle: 'Spanish (Latin America)',
          );
      }
    }

    return DisplayOption(localeCode);
  }

  /// Create a sorted — by native name – map of supported locales to their
  /// intended display string, with a system option as the first element.
  LinkedHashMap<Locale, DisplayOption> _getLocaleOptions() {
    var localeOptions = LinkedHashMap.of({
      systemLocaleOption: DisplayOption(
        GalleryLocalizations.of(context).settingsSystemDefault +
            (deviceLocale != null
                ? ' - ${_getLocaleDisplayOption(context, deviceLocale).title}'
                : ''),
      ),
    });
    var supportedLocales =
        List<Locale>.from(GalleryLocalizations.supportedLocales);
    supportedLocales.removeWhere((locale) => locale == deviceLocale);

    final displayLocales = Map<Locale, DisplayOption>.fromIterable(
      supportedLocales,
      value: (dynamic locale) =>
          _getLocaleDisplayOption(context, locale as Locale),
    ).entries.toList()
      ..sort((l1, l2) => compareAsciiUpperCase(l1.value.title, l2.value.title));

    localeOptions.addAll(LinkedHashMap.fromEntries(displayLocales));
    return localeOptions;
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final options = GalleryOptions.of(context);
    final isDesktop = isDisplayDesktop(context);

    final settingsListItems = [
      SettingsListItem<double>(
        title: GalleryLocalizations.of(context).settingsTextScaling,
        selectedOption: options.textScaleFactor(
          context,
          useSentinel: true,
        ),
        options: LinkedHashMap.of({
          systemTextScaleFactorOption: DisplayOption(
            GalleryLocalizations.of(context).settingsSystemDefault,
          ),
          0.8: DisplayOption(
            GalleryLocalizations.of(context).settingsTextScalingSmall,
          ),
          1.0: DisplayOption(
            GalleryLocalizations.of(context).settingsTextScalingNormal,
          ),
          2.0: DisplayOption(
            GalleryLocalizations.of(context).settingsTextScalingLarge,
          ),
          3.0: DisplayOption(
            GalleryLocalizations.of(context).settingsTextScalingHuge,
          ),
        }),
        onOptionChanged: (newTextScale) => GalleryOptions.update(
          context,
          options.copyWith(textScaleFactor: newTextScale),
        ),
        onTapSetting: () => onTapSetting(_ExpandableSetting.textScale),
        isExpanded: expandedSettingId == _ExpandableSetting.textScale,
      ),
      SettingsListItem<CustomTextDirection>(
        title: GalleryLocalizations.of(context).settingsTextDirection,
        selectedOption: options.customTextDirection,
        options: LinkedHashMap.of({
          CustomTextDirection.localeBased: DisplayOption(
            GalleryLocalizations.of(context).settingsTextDirectionLocaleBased,
          ),
          CustomTextDirection.ltr: DisplayOption(
            GalleryLocalizations.of(context).settingsTextDirectionLTR,
          ),
          CustomTextDirection.rtl: DisplayOption(
            GalleryLocalizations.of(context).settingsTextDirectionRTL,
          ),
        }),
        onOptionChanged: (newTextDirection) => GalleryOptions.update(
          context,
          options.copyWith(customTextDirection: newTextDirection),
        ),
        onTapSetting: () => onTapSetting(_ExpandableSetting.textDirection),
        isExpanded: expandedSettingId == _ExpandableSetting.textDirection,
      ),
      SettingsListItem<Locale>(
        title: GalleryLocalizations.of(context).settingsLocale,
        selectedOption: options.locale == deviceLocale
            ? systemLocaleOption
            : options.locale,
        options: _getLocaleOptions(),
        onOptionChanged: (newLocale) {
          if (newLocale == systemLocaleOption) {
            newLocale = deviceLocale;
          }
          GalleryOptions.update(
            context,
            options.copyWith(locale: newLocale),
          );
        },
        onTapSetting: () => onTapSetting(_ExpandableSetting.locale),
        isExpanded: expandedSettingId == _ExpandableSetting.locale,
      ),
      SettingsListItem<TargetPlatform>(
        title: GalleryLocalizations.of(context).settingsPlatformMechanics,
        selectedOption: options.platform,
        options: LinkedHashMap.of({
          TargetPlatform.android: DisplayOption(
            GalleryLocalizations.of(context).settingsPlatformAndroid,
          ),
          TargetPlatform.iOS: DisplayOption(
            GalleryLocalizations.of(context).settingsPlatformIOS,
          ),
        }),
        onOptionChanged: (newPlatform) => GalleryOptions.update(
          context,
          options.copyWith(platform: newPlatform),
        ),
        onTapSetting: () => onTapSetting(_ExpandableSetting.platform),
        isExpanded: expandedSettingId == _ExpandableSetting.platform,
      ),
      SettingsListItem<ThemeMode>(
        title: GalleryLocalizations.of(context).settingsTheme,
        selectedOption: options.themeMode,
        options: LinkedHashMap.of({
          ThemeMode.system: DisplayOption(
            GalleryLocalizations.of(context).settingsSystemDefault,
          ),
          ThemeMode.dark: DisplayOption(
            GalleryLocalizations.of(context).settingsDarkTheme,
          ),
          ThemeMode.light: DisplayOption(
            GalleryLocalizations.of(context).settingsLightTheme,
          ),
        }),
        onOptionChanged: (newThemeMode) => GalleryOptions.update(
          context,
          options.copyWith(themeMode: newThemeMode),
        ),
        onTapSetting: () => onTapSetting(_ExpandableSetting.theme),
        isExpanded: expandedSettingId == _ExpandableSetting.theme,
      ),
      SlowMotionSetting(),
    ];

    return Material(
      color: colorScheme.secondaryVariant,
      child: _AnimatedSettingsPage(
        animation: widget.openSettingsAnimation,
        child: Padding(
          padding: isDesktop
              ? EdgeInsets.zero
              : EdgeInsets.only(
                  bottom: galleryHeaderHeight,
                ),
          // Remove ListView top padding as it is already accounted for.
          child: MediaQuery.removePadding(
            removeTop: isDesktop,
            context: context,
            child: ListView(
              children: [
                if (isDesktop) SizedBox(height: firstHeaderDesktopTopPadding),
                Focus(
                  focusNode: InheritedBackdropFocusNodes.of(context)
                      .frontLayerFocusNode,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child: ExcludeSemantics(
                      child: Header(
                        color: Theme.of(context).colorScheme.onSurface,
                        text: GalleryLocalizations.of(context).settingsTitle,
                      ),
                    ),
                  ),
                ),
                if (isDesktop)
                  ...settingsListItems
                else ...[
                  _AnimateSettingsListItems(
                    animation: widget.staggerSettingsItemsAnimation,
                    children: settingsListItems,
                  ),
                  SizedBox(height: 16),
                  Divider(
                      thickness: 2, height: 0, color: colorScheme.background),
                  SizedBox(height: 12),
                  SettingsAbout(),
                  SettingsFeedback(),
                  SizedBox(height: 12),
                  Divider(
                      thickness: 2, height: 0, color: colorScheme.background),
                  SettingsAttribution(),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SettingsAbout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _SettingsLink(
      title: GalleryLocalizations.of(context).settingsAbout,
      icon: Icons.info_outline,
      onTap: () {
        about.showAboutDialog(context: context);
      },
    );
  }
}

class SettingsFeedback extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _SettingsLink(
      title: GalleryLocalizations.of(context).settingsFeedback,
      icon: Icons.feedback,
      onTap: () async {
        final url = 'https://github.com/flutter/flutter/issues/new/choose/';
        if (await canLaunch(url)) {
          await launch(
            url,
            forceSafariVC: false,
          );
        }
      },
    );
  }
}

class SettingsAttribution extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isDesktop = isDisplayDesktop(context);
    final verticalPadding = isDesktop ? 0.0 : 28.0;
    return MergeSemantics(
      child: Padding(
        padding: EdgeInsetsDirectional.only(
          start: isDesktop ? 24 : 32,
          end: isDesktop ? 0 : 32,
          top: verticalPadding,
          bottom: verticalPadding,
        ),
        child: Text(
          GalleryLocalizations.of(context).settingsAttribution,
          style: Theme.of(context).textTheme.body2.copyWith(
                fontSize: 12,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
          textAlign: isDesktop ? TextAlign.end : TextAlign.start,
        ),
      ),
    );
  }
}

class _SettingsLink extends StatelessWidget {
  final String title;
  final IconData icon;
  final GestureTapCallback onTap;

  _SettingsLink({this.title, this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    final isDesktop = isDisplayDesktop(context);

    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: isDesktop ? 24 : 32,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: colorScheme.onSecondary.withOpacity(0.5),
              size: 24,
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsetsDirectional.only(
                  start: 16,
                  top: 12,
                  bottom: 12,
                ),
                child: Text(
                  title,
                  style: textTheme.subtitle.apply(
                    color: colorScheme.onSecondary,
                  ),
                  textAlign: isDesktop ? TextAlign.end : TextAlign.start,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Animate the settings page to slide in from above.
class _AnimatedSettingsPage extends StatelessWidget {
  const _AnimatedSettingsPage({
    Key key,
    @required this.animation,
    @required this.child,
  }) : super(key: key);

  final Widget child;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    final isDesktop = isDisplayDesktop(context);

    if (isDesktop) {
      return child;
    } else {
      return LayoutBuilder(builder: (context, constraints) {
        return Stack(
          children: [
            PositionedTransition(
              rect: RelativeRectTween(
                begin: RelativeRect.fromLTRB(0, -constraints.maxHeight, 0, 0),
                end: RelativeRect.fromLTRB(0, 0, 0, 0),
              ).animate(
                CurvedAnimation(
                  parent: animation,
                  curve: Curves.linear,
                ),
              ),
              child: child,
            ),
          ],
        );
      });
    }
  }
}

/// Animate the settings list items to stagger in from above.
class _AnimateSettingsListItems extends StatelessWidget {
  const _AnimateSettingsListItems({
    Key key,
    this.animation,
    this.children,
    this.topPadding,
    this.bottomPadding,
  }) : super(key: key);

  final Animation<double> animation;
  final List<Widget> children;
  final double topPadding;
  final double bottomPadding;

  @override
  Widget build(BuildContext context) {
    final startDividingPadding = 4.0;
    final topPaddingTween = Tween<double>(
      begin: 0,
      end: children.length * startDividingPadding,
    );
    final dividerTween = Tween<double>(
      begin: startDividingPadding,
      end: 0,
    );

    return Padding(
      padding: EdgeInsets.only(top: topPaddingTween.animate(animation).value),
      child: Column(
        children: [
          for (Widget child in children)
            AnimatedBuilder(
              animation: animation,
              builder: (context, child) {
                return Padding(
                  padding: EdgeInsets.only(
                    top: dividerTween.animate(animation).value,
                  ),
                  child: child,
                );
              },
              child: child,
            ),
        ],
      ),
    );
  }
}
