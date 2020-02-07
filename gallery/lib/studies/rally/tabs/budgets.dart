// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

import 'package:gallery/l10n/gallery_localizations.dart';
import 'package:gallery/studies/rally/charts/pie_chart.dart';
import 'package:gallery/studies/rally/data.dart';
import 'package:gallery/studies/rally/finance.dart';
import 'package:gallery/studies/rally/tabs/sidebar.dart';

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
    final detailItems = DummyDataService.getBudgetDetailList(
      context,
      capTotal: capTotal,
      usedTotal: usedTotal,
    );

    return TabWithSidebar(
      mainView: FinancialEntityView(
        heroLabel: GalleryLocalizations.of(context).rallyBudgetLeft,
        heroAmount: capTotal - usedTotal,
        segments: buildSegmentsFromBudgetItems(items),
        wholeAmount: capTotal,
        financialEntityCards: buildBudgetDataListViews(items, context),
      ),
      sidebarItems: [
        for (UserDetailData item in detailItems)
          SidebarItem(title: item.title, value: item.value)
      ],
    );
  }
}
