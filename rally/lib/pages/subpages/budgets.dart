import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rally_proto/dummy_data/dummy_data.dart';
import 'package:rally_proto/financial_entity/financial_entity.dart';
import 'package:rally_proto/financial_entity/financial_entity_card.dart';
import 'package:rally_proto/financial_entity/financial_entity_view.dart';
import 'package:rally_proto/charts/rally_pie_chart.dart';

class BudgetsPage extends StatefulWidget {
  @override
  _BudgetsPageState createState() => _BudgetsPageState();
}

class _BudgetsPageState extends State<BudgetsPage> with SingleTickerProviderStateMixin {
  final List<BudgetItem> items = DummyDatas.getBudgetsModel();

  @override
  Widget build(BuildContext context) {
    double capTotal = FinancialEntities.sumPrimaryAmounts(items);
    double usedTotal = BudgetItems.sumAmountsUsed(items);
    List<RallyPieChartSegment> segments = RallyPieChartSegments.fromBudgetItems(items);
    return FinancialEntitiesView(
      heroLabel: 'Left',
      heroAmount: capTotal - usedTotal,
      segments: segments,
      wholeAmount: capTotal,
      financialEntityCards: FinancialEntityCards.fromBudgetItems(items, context),
    );
  }
}