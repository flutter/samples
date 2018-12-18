import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rally_proto/dummy_data/dummy_data.dart';
import 'package:rally_proto/financial_entity/financial_entity.dart';
import 'package:rally_proto/financial_entity/financial_entity_card.dart';
import 'package:rally_proto/financial_entity/financial_entity_view.dart';
import 'package:rally_proto/charts/rally_pie_chart.dart';

/// A page that shows a summary of accounts.
class AccountsPage extends StatefulWidget {
  @override
  _AccountsPageState createState() => _AccountsPageState();
}

class _AccountsPageState extends State<AccountsPage> with SingleTickerProviderStateMixin {
  final List<AccountItem> items = DummyDatas.getAccountItems();

  @override
  Widget build(BuildContext context) {
    double balanceTotal = FinancialEntities.sumPrimaryAmounts(items);
    List<RallyPieChartSegment> segments = RallyPieChartSegments.fromAccountItems(items);
    return FinancialEntitiesView(
      heroLabel: 'Total',
      heroAmount: balanceTotal,
      segments: segments,
      wholeAmount: balanceTotal,
      financialEntityCards: FinancialEntityCards.fromAccountItems(items),
    );
  }
}