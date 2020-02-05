// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:gallery/data/gallery_options.dart';
import 'package:gallery/l10n/gallery_localizations.dart';

// Common constants between SlowMotionSetting and SettingsListItem.
final settingItemBorderRadius = BorderRadius.circular(10);
const settingItemHeaderMargin = EdgeInsetsDirectional.fromSTEB(32, 0, 32, 8);

class DisplayOption {
  final String title;
  final String subtitle;

  DisplayOption(this.title, {this.subtitle});
}

class SlowMotionSetting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final options = GalleryOptions.of(context);

    return Semantics(
      container: true,
      child: Container(
        margin: settingItemHeaderMargin,
        child: Material(
          shape: RoundedRectangleBorder(borderRadius: settingItemBorderRadius),
          color: colorScheme.secondary,
          clipBehavior: Clip.antiAlias,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        GalleryLocalizations.of(context).settingsSlowMotion,
                        style: textTheme.subhead.apply(
                          color: colorScheme.onSurface,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 8),
                child: Switch(
                  activeColor: colorScheme.primary,
                  value: options.timeDilation != 1.0,
                  onChanged: (isOn) => GalleryOptions.update(
                    context,
                    options.copyWith(timeDilation: isOn ? 5.0 : 1.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SettingsListItem<T> extends StatefulWidget {
  SettingsListItem({
    Key key,
    @required this.title,
    @required this.options,
    @required this.selectedOption,
    @required this.onOptionChanged,
    @required this.onTapSetting,
    @required this.isExpanded,
  }) : super(key: key);

  final String title;
  final LinkedHashMap<T, DisplayOption> options;
  final T selectedOption;
  final ValueChanged<T> onOptionChanged;
  final Function onTapSetting;
  final bool isExpanded;

  @override
  _SettingsListItemState createState() => _SettingsListItemState<T>();
}

class _SettingsListItemState<T> extends State<SettingsListItem<T>>
    with SingleTickerProviderStateMixin {
  static final Animatable<double> _easeInTween =
      CurveTween(curve: Curves.easeIn);
  static const _expandDuration = Duration(milliseconds: 150);
  AnimationController _controller;
  Animation<double> _childrenHeightFactor;
  Animation<double> _headerChevronRotation;
  Animation<double> _headerSubtitleHeight;
  Animation<EdgeInsetsGeometry> _headerMargin;
  Animation<EdgeInsetsGeometry> _headerPadding;
  Animation<EdgeInsetsGeometry> _childrenPadding;
  Animation<BorderRadius> _headerBorderRadius;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: _expandDuration, vsync: this);
    _childrenHeightFactor = _controller.drive(_easeInTween);
    _headerChevronRotation =
        Tween<double>(begin: 0, end: 0.5).animate(_controller);
    _headerMargin = EdgeInsetsGeometryTween(
      begin: settingItemHeaderMargin,
      end: EdgeInsets.zero,
    ).animate(_controller);
    _headerPadding = EdgeInsetsGeometryTween(
      begin: EdgeInsetsDirectional.fromSTEB(16, 10, 0, 10),
      end: EdgeInsetsDirectional.fromSTEB(32, 18, 32, 20),
    ).animate(_controller);
    _headerSubtitleHeight =
        _controller.drive(Tween<double>(begin: 1.0, end: 0.0));
    _childrenPadding = EdgeInsetsGeometryTween(
      begin: EdgeInsets.symmetric(horizontal: 32),
      end: EdgeInsets.zero,
    ).animate(_controller);
    _headerBorderRadius = BorderRadiusTween(
      begin: settingItemBorderRadius,
      end: BorderRadius.zero,
    ).animate(_controller);

    if (widget.isExpanded) {
      _controller.value = 1.0;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleExpansion() {
    if (widget.isExpanded) {
      _controller.forward();
    } else {
      _controller.reverse().then<void>((value) {
        if (!mounted) {
          return;
        }
      });
    }
  }

  Widget _buildHeaderWithChildren(BuildContext context, Widget child) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _CategoryHeader(
          margin: _headerMargin.value,
          padding: _headerPadding.value,
          borderRadius: _headerBorderRadius.value,
          subtitleHeight: _headerSubtitleHeight,
          chevronRotation: _headerChevronRotation,
          title: widget.title,
          subtitle: widget.options[widget.selectedOption].title ?? '',
          onTap: () => widget.onTapSetting(),
        ),
        Padding(
          padding: _childrenPadding.value,
          child: ClipRect(
            child: Align(
              heightFactor: _childrenHeightFactor.value,
              child: child,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    _handleExpansion();
    final theme = Theme.of(context);

    final optionWidgetsList = <Widget>[];

    widget.options.forEach(
      (optionValue, optionDisplay) => optionWidgetsList.add(
        RadioListTile<T>(
          value: optionValue,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                optionDisplay.title,
                style: theme.textTheme.body2.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              if (optionDisplay.subtitle != null)
                Text(
                  optionDisplay.subtitle,
                  style: theme.textTheme.body2.copyWith(
                    fontSize: 12,
                    color: Theme.of(context)
                        .colorScheme
                        .onPrimary
                        .withOpacity(0.8),
                  ),
                ),
            ],
          ),
          groupValue: widget.selectedOption,
          onChanged: (newOption) => widget.onOptionChanged(newOption),
          activeColor: Theme.of(context).colorScheme.primary,
          dense: true,
        ),
      ),
    );

    return AnimatedBuilder(
      animation: _controller.view,
      builder: _buildHeaderWithChildren,
      child: Container(
        margin: const EdgeInsetsDirectional.only(start: 24, bottom: 40),
        decoration: BoxDecoration(
          border: BorderDirectional(
            start: BorderSide(
              width: 2,
              color: theme.colorScheme.background,
            ),
          ),
        ),
        child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => optionWidgetsList[index],
          itemCount: optionWidgetsList.length,
        ),
      ),
    );
  }
}

class _CategoryHeader extends StatelessWidget {
  const _CategoryHeader({
    Key key,
    this.margin,
    this.padding,
    this.borderRadius,
    this.subtitleHeight,
    this.chevronRotation,
    this.title,
    this.subtitle,
    this.onTap,
  }) : super(key: key);

  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final BorderRadiusGeometry borderRadius;
  final String title;
  final String subtitle;
  final Animation<double> subtitleHeight;
  final Animation<double> chevronRotation;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Container(
      margin: margin,
      child: Material(
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
        color: colorScheme.secondary,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: padding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: textTheme.subhead.apply(
                          color: colorScheme.onSurface,
                        ),
                      ),
                      SizeTransition(
                        sizeFactor: subtitleHeight,
                        child: Text(
                          subtitle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: textTheme.overline.apply(
                            color: colorScheme.primary,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  start: 8,
                  end: 24,
                ),
                child: RotationTransition(
                  turns: chevronRotation,
                  child: Icon(Icons.arrow_drop_down),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
