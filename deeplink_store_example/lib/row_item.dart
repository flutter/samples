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

class RowItem extends StatelessWidget {
  const RowItem({
    required this.product,
    super.key,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: const Border.symmetric(
        horizontal: BorderSide(color: Styles.productRowDivider),
      ),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Image.asset(
          product.assetName,
          package: product.assetPackage,
          fit: BoxFit.cover,
          width: 68,
          height: 68,
        ),
      ),
      title: Text(
        product.name,
        style: Styles.productRowItemName,
      ),
      subtitle: Text(
        '\$${product.price}',
        style: Styles.productRowItemPrice,
      ),
      onTap: () => context.push('/${product.id}'),
    );
  }
}
