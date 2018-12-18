import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rally_proto/dummy_data/dummy_data.dart';
import 'package:rally_proto/financial_entity/financial_entity.dart';
import 'package:rally_proto/charts/rally_pie_chart.dart';
import 'package:rally_proto/financial_entity/financial_entity_card.dart';
import 'package:rally_proto/financial_entity/financial_entity_view.dart';

/// A page that shows a summary of bills.
class BillsPage extends StatefulWidget {
  @override
  _BillsPageState createState() => _BillsPageState();
}

class _BillsPageState extends State<BillsPage> with SingleTickerProviderStateMixin {
  final List<BillItem> items = DummyDatas.getBillItems();

  @override
  Widget build(BuildContext context) {
    double dueTotal = FinancialEntities.sumPrimaryAmounts(items);
    List<RallyPieChartSegment> segments = RallyPieChartSegments.fromBillItems(items);
    return FinancialEntitiesView(
      heroLabel: 'Due',
      heroAmount: dueTotal,
      segments: segments,
      wholeAmount: dueTotal,
      financialEntityCards: FinancialEntityCards.fromBillItems(items),
    );
  }
}