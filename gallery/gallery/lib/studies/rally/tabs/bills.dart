// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

import 'package:gallery/l10n/gallery_localizations.dart';
import 'package:gallery/layout/adaptive.dart';
import 'package:gallery/studies/rally/charts/pie_chart.dart';
import 'package:gallery/studies/rally/data.dart';
import 'package:gallery/studies/rally/finance.dart';

/// A page that shows a summary of bills.
class BillsView extends StatefulWidget {
  @override
  _BillsViewState createState() => _BillsViewState();
}

class _BillsViewState extends State<BillsView>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    List<BillData> items = DummyDataService.getBillDataList(context);
    final dueTotal = sumBillDataPrimaryAmount(items);
    return SingleChildScrollView(
      child: Container(
        padding: isDisplayDesktop(context) ? EdgeInsets.only(top: 24) : null,
        child: FinancialEntityView(
          heroLabel: GalleryLocalizations.of(context).rallyBillsDue,
          heroAmount: dueTotal,
          segments: buildSegmentsFromBillItems(items),
          wholeAmount: dueTotal,
          financialEntityCards: buildBillDataListViews(items, context),
        ),
      ),
    );
  }
}
