// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'package:gallery/data/gallery_options.dart';
import 'package:gallery/l10n/gallery_localizations.dart';
import 'package:gallery/layout/adaptive.dart';
import 'package:gallery/layout/text_scale.dart';
import 'package:gallery/studies/shrine/colors.dart';
import 'package:gallery/studies/shrine/login.dart';
import 'package:gallery/studies/shrine/model/app_state_model.dart';
import 'package:gallery/studies/shrine/model/product.dart';
import 'package:gallery/studies/shrine/page_status.dart';
import 'package:gallery/studies/shrine/triangle_category_indicator.dart';

double desktopCategoryMenuPageWidth({
  BuildContext context,
}) {
  return 232 * reducedTextScale(context);
}

class CategoryMenuPage extends StatelessWidget {
  const CategoryMenuPage({
    Key key,
    this.onCategoryTap,
  }) : super(key: key);

  final VoidCallback onCategoryTap;

  Widget _buttonText(String caption, TextStyle style) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Text(
        caption,
        style: style,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _divider({BuildContext context}) {
    return Container(
      width: 56 * GalleryOptions.of(context).textScaleFactor(context),
      height: 1,
      color: Color(0xFF8F716D),
    );
  }

  Widget _buildCategory(Category category, BuildContext context) {
    final bool isDesktop = isDisplayDesktop(context);

    final String categoryString = category.name(context);

    final TextStyle selectedCategoryTextStyle = Theme.of(context)
        .textTheme
        .body2
        .copyWith(fontSize: isDesktop ? 17 : 19);

    final TextStyle unselectedCategoryTextStyle = selectedCategoryTextStyle
        .copyWith(color: shrineBrown900.withOpacity(0.6));

    final double indicatorHeight = (isDesktop ? 28 : 30) *
        GalleryOptions.of(context).textScaleFactor(context);
    final double indicatorWidth = indicatorHeight * 34 / 28;

    return ScopedModelDescendant<AppStateModel>(
      builder: (context, child, model) => Semantics(
        selected: model.selectedCategory == category,
        button: true,
        child: GestureDetector(
          onTap: () {
            model.setCategory(category);
            if (onCategoryTap != null) {
              onCategoryTap();
            }
          },
          child: model.selectedCategory == category
              ? CustomPaint(
                  painter: TriangleCategoryIndicator(
                    indicatorWidth,
                    indicatorHeight,
                  ),
                  child: _buttonText(categoryString, selectedCategoryTextStyle),
                )
              : _buttonText(categoryString, unselectedCategoryTextStyle),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = isDisplayDesktop(context);

    final TextStyle logoutTextStyle =
        Theme.of(context).textTheme.body2.copyWith(
              fontSize: isDesktop ? 17 : 19,
              color: shrineBrown900.withOpacity(0.6),
            );

    if (isDesktop) {
      return AnimatedBuilder(
        animation: PageStatus.of(context).cartController,
        builder: (context, child) => ExcludeSemantics(
          excluding: !menuPageIsVisible(context),
          child: Material(
            child: Container(
              color: shrinePink100,
              width: desktopCategoryMenuPageWidth(context: context),
              child: Column(
                children: [
                  const SizedBox(height: 64),
                  Image.asset(
                    'packages/shrine_images/diamond.png',
                    excludeFromSemantics: true,
                  ),
                  const SizedBox(height: 16),
                  Semantics(
                    container: true,
                    child: Text(
                      'SHRINE',
                      style: Theme.of(context).textTheme.headline,
                    ),
                  ),
                  const Spacer(),
                  for (final category in categories)
                    _buildCategory(category, context),
                  _divider(context: context),
                  Semantics(
                    button: true,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push<void>(
                          context,
                          MaterialPageRoute<void>(
                            builder: (context) => LoginPage(),
                          ),
                        );
                      },
                      child: _buttonText(
                        GalleryLocalizations.of(context)
                            .shrineLogoutButtonCaption,
                        logoutTextStyle,
                      ),
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.search),
                    tooltip:
                        GalleryLocalizations.of(context).shrineTooltipSearch,
                    onPressed: () {},
                  ),
                  const SizedBox(height: 72),
                ],
              ),
            ),
          ),
        ),
      );
    } else {
      return AnimatedBuilder(
        animation: PageStatus.of(context).cartController,
        builder: (context, child) => AnimatedBuilder(
          animation: PageStatus.of(context).menuController,
          builder: (context, child) => ExcludeSemantics(
            excluding: !menuPageIsVisible(context),
            child: Center(
              child: Container(
                padding: const EdgeInsets.only(top: 40),
                color: shrinePink100,
                child: ListView(
                  children: [
                    for (final category in categories)
                      _buildCategory(category, context),
                    Center(
                      child: _divider(context: context),
                    ),
                    Semantics(
                      button: true,
                      child: GestureDetector(
                        onTap: () {
                          if (onCategoryTap != null) {
                            onCategoryTap();
                          }
                          Navigator.push<void>(
                            context,
                            MaterialPageRoute<void>(
                                builder: (context) => LoginPage()),
                          );
                        },
                        child: _buttonText(
                          GalleryLocalizations.of(context)
                              .shrineLogoutButtonCaption,
                          logoutTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }
  }
}
