// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

import 'package:gallery/l10n/gallery_localizations.dart';
import 'package:gallery/layout/adaptive.dart';
import 'package:gallery/studies/rally/charts/pie_chart.dart';
import 'package:gallery/studies/rally/data.dart';
import 'package:gallery/studies/rally/finance.dart';

class BudgetsView extends StatefulWidget {
  @override
  _BudgetsViewState createState() => _BudgetsViewState();
}

class _BudgetsViewState extends State<BudgetsView>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final items = DummyDataService.getBudgetDataList(context);
    final capTotal = sumBudgetDataPrimaryAmount(items);
    final usedTotal = sumBudgetDataAmountUsed(items);
    return SingleChildScrollView(
      child: Container(
        padding: isDisplayDesktop(context) ? EdgeInsets.only(top: 24) : null,
        child: FinancialEntityView(
          heroLabel: GalleryLocalizations.of(context).rallyBudgetLeft,
          heroAmount: capTotal - usedTotal,
          segments: buildSegmentsFromBudgetItems(items),
          wholeAmount: capTotal,
          financialEntityCards: buildBudgetDataListViews(items, context),
        ),
      ),
    );
  }
}
