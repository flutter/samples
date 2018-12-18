import 'package:flutter/widgets.dart';
import 'package:rally_proto/charts/rally_pie_chart.dart';
import 'package:rally_proto/financial_entity/financial_entity_card.dart';

class FinancialEntitiesView extends StatelessWidget {
  FinancialEntitiesView({
    this.heroLabel,
    this.heroAmount,
    this.wholeAmount,
    this.segments,
    this.financialEntityCards})
  : assert(segments.length == financialEntityCards.length);

  /// The amounts to assign each item.
  ///
  /// This list must have the same length as [colors].
  final List<RallyPieChartSegment> segments;
  final String heroLabel;
  final double heroAmount;
  final double wholeAmount;
  final List<FinancialEntityCard> financialEntityCards;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          RallyPieChart(
            heroLabel: heroLabel,
            heroAmount: heroAmount,
            wholeAmount: wholeAmount,
            segments: segments,
          ),
          // TODO(clocksmith): Is this actually supposed to be a shadow?
          SizedBox(height: 1.0, child: Container(color: Color(0xA026282F))),
          ListView(
            shrinkWrap: true,
            children: financialEntityCards
          )
        ]);
  }
}
