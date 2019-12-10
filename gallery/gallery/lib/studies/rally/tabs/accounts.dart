// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:gallery/l10n/gallery_localizations.dart';
import 'package:gallery/layout/adaptive.dart';
import 'package:gallery/studies/rally/charts/pie_chart.dart';
import 'package:gallery/studies/rally/colors.dart';
import 'package:gallery/studies/rally/data.dart';
import 'package:gallery/studies/rally/finance.dart';

/// A page that shows a summary of accounts.
class AccountsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final items = DummyDataService.getAccountDataList(context);
    final detailItems = DummyDataService.getAccountDetailList(context);
    final balanceTotal = sumAccountDataPrimaryAmount(items);
    final view = FinancialEntityView(
      heroLabel: GalleryLocalizations.of(context).rallyAccountTotal,
      heroAmount: balanceTotal,
      segments: buildSegmentsFromAccountItems(items),
      wholeAmount: balanceTotal,
      financialEntityCards: buildAccountDataListViews(items, context),
    );
    if (isDisplayDesktop(context)) {
      return Row(
        children: [
          Flexible(
            flex: 2,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: view,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: RallyColors.inputBackground,
              padding: EdgeInsetsDirectional.only(start: 24),
              height: double.infinity,
              alignment: AlignmentDirectional.centerStart,
              child: ListView(
                shrinkWrap: true,
                children: [
                  for (AccountDetailData item in detailItems)
                    _AccountDetail(title: item.title, value: item.value),
                ],
              ),
            ),
          ),
        ],
      );
    } else {
      return SingleChildScrollView(child: view);
    }
  }
}

class _AccountDetail extends StatelessWidget {
  const _AccountDetail({Key key, this.value, this.title}) : super(key: key);

  final String value;
  final String title;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 8),
        Text(
          title,
          style:
              textTheme.body1.copyWith(fontSize: 16, color: RallyColors.gray60),
        ),
        SizedBox(height: 8),
        Text(
          value,
          style: textTheme.body2.copyWith(fontSize: 20),
        ),
        SizedBox(height: 8),
        Container(color: RallyColors.primaryBackground, height: 1),
      ],
    );
  }
}
