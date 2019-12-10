// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gallery/l10n/gallery_localizations.dart';
import 'package:intl/intl.dart';
import 'package:scoped_model/scoped_model.dart';

import 'package:gallery/studies/shrine/model/app_state_model.dart';
import 'package:gallery/studies/shrine/model/product.dart';
import 'package:gallery/layout/adaptive.dart';

class MobileProductCard extends StatelessWidget {
  const MobileProductCard({this.imageAspectRatio = 33 / 49, this.product})
      : assert(imageAspectRatio == null || imageAspectRatio > 0);

  final double imageAspectRatio;
  final Product product;

  static const double defaultTextBoxHeight = 65;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      container: true,
      button: true,
      child: _buildProductCard(
        context: context,
        product: product,
        imageAspectRatio: imageAspectRatio,
      ),
    );
  }
}

class DesktopProductCard extends StatelessWidget {
  const DesktopProductCard({@required this.product, @required this.imageWidth});

  final Product product;
  final double imageWidth;

  @override
  Widget build(BuildContext context) {
    return _buildProductCard(
      context: context,
      product: product,
      imageWidth: imageWidth,
    );
  }
}

Widget _buildProductCard({
  BuildContext context,
  Product product,
  double imageWidth,
  double imageAspectRatio,
}) {
  final bool isDesktop = isDisplayDesktop(context);

  final NumberFormat formatter = NumberFormat.simpleCurrency(
    decimalDigits: 0,
    locale: Localizations.localeOf(context).toString(),
  );

  final ThemeData theme = Theme.of(context);

  final Image imageWidget = Image.asset(
    product.assetName,
    package: product.assetPackage,
    fit: BoxFit.cover,
    width: isDesktop ? imageWidth : null,
    excludeFromSemantics: true,
  );

  return ScopedModelDescendant<AppStateModel>(
    builder: (context, child, model) {
      return Semantics(
        onTapHint:
            GalleryLocalizations.of(context).shrineScreenReaderProductAddToCart,
        child: GestureDetector(
          onTap: () {
            model.addProductToCart(product.id);
          },
          child: child,
        ),
      );
    },
    child: Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            isDesktop
                ? imageWidget
                : AspectRatio(
                    aspectRatio: imageAspectRatio,
                    child: imageWidget,
                  ),
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 23),
                  Container(
                    width: imageWidth,
                    child: Text(
                      product == null ? '' : product.name(context),
                      style: theme.textTheme.button,
                      softWrap: true,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    product == null ? '' : formatter.format(product.price),
                    style: theme.textTheme.caption,
                  ),
                ],
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.all(16),
          child: Icon(Icons.add_shopping_cart),
        ),
      ],
    ),
  );
}
