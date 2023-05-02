// Copyright 2019 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'model/products_repository.dart';
import 'styles.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final String currentId = GoRouterState.of(context).pathParameters['id']!;
    final Product product =
        ProductsRepository.loadProduct(id: int.parse(currentId));
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ProductPicture(product: product),
          Styles.spacer,
          Text(product.name, style: Styles.productPageItemName),
          Styles.spacer,
          Text('\$${product.price}', style: Styles.productPageItemPrice),
          Styles.largeSpacer,
        ],
      ),
    );
  }
}

class ProductPicture extends StatelessWidget {
  const ProductPicture({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Image.asset(
              product.assetName2X,
              package: product.assetPackage,
              fit: BoxFit.cover,
              width: constraints.maxWidth,
            );
          },
        ),
        const BackButton(),
      ],
    );
  }
}
