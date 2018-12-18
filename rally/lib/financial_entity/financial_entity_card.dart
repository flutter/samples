import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rally_proto/financial_entity/financial_entity.dart';
import 'package:rally_proto/financial_entity/financial_entity_view.dart';
import 'package:rally_proto/pages/subpages/details.dart';
import 'package:rally_proto/util/colors.dart';
import 'package:rally_proto/util/formatters.dart';
import 'package:rally_proto/charts/vertical_fraction_bar.dart';

/// A reusable widget to show balance information of a single entity as a card.
class FinancialEntityCard extends StatelessWidget {

  const FinancialEntityCard({
    @required this.indicatorColor,
    @required this.indicatorFraction,
    @required this.title,
    @required this.subtitle,
    @required this.amount,
    @required this.suffix,
  });

  final Color indicatorColor;
  final double indicatorFraction;
  final String title;
  final String subtitle;
  final double amount;
  final Widget suffix;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailsPage())
        );
      },
      child: SizedBox(
          height: 68.0,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 67.0,
                child: Row(
                  children: <Widget>[
                    Padding(
                      child: VerticalFractionBar(
                          color: indicatorColor,
                          fraction: indicatorFraction
                      ),
                      padding: EdgeInsets.only(left: 16.0, right: 16.0),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(title, style: Theme.of(context).textTheme.body1.copyWith(fontSize: 16.0)),
                        Text(subtitle, style: Theme.of(context).textTheme.body1.copyWith(color: RallyColors.gray60a))
                      ],
                    ),
                    Spacer(),
                    Text('\$ ' + Formatters.usd.format(amount),
                        style: Theme.of(context).textTheme.body2.copyWith(
                            fontSize: 20.0,
                            color: RallyColors.gray)
                    ),
                    SizedBox(width: 32.0, child: suffix)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: SizedBox(
                    height: 1.0,
                    child: Container(color: Color(0xAA282828))
                ),
              )
            ],
          )
      ),
    );
  }
}

/// Data model for [FinancialEntityCard].
class FinancialEntityCardModel {
  final Color indicatorColor;
  final double indicatorFraction;
  final String title;
  final String subtitle;
  final double usdAmount;
  final Widget suffix;

  const FinancialEntityCardModel(
      this.indicatorColor,
      this.indicatorFraction,
      this.title,
      this.subtitle,
      this.usdAmount,
      this.suffix,
      );
}

/// Utils for [FinancialEntityCard].
class FinancialEntityCards {
  static FinancialEntityCard fromAccountItem(AccountItem model, int i) {
    return FinancialEntityCard(
      suffix: Icon(Icons.chevron_right, color: Colors.grey),
      title: model.name,
      subtitle: '• • • • • • ' + model.accountNumber.substring(6),
      indicatorColor: RallyColors.getAccountColor(i),
      indicatorFraction: 1.0,
      amount: model.primaryAmount,
    );
  }

  static FinancialEntityCard fromBillItem(BillItem model, int i) {
    return FinancialEntityCard(
      suffix: Icon(Icons.chevron_right, color: Colors.grey),
      title: model.name,
      subtitle: model.dueDate,
      indicatorColor: RallyColors.getBillColor(i),
      indicatorFraction: 1.0,
      amount: model.primaryAmount,
    );
  }

  static FinancialEntityCard fromBudgetItem(BudgetItem item, int i, BuildContext context) {
    return FinancialEntityCard(
      suffix: Text(' LEFT', style: Theme.of(context).textTheme.body1.copyWith(color: RallyColors.gray60a, fontSize: 10.0)),
      title: item.name,
      subtitle: Formatters.usdWithSign.format(item.amountUsed) + ' / ' + Formatters.usdWithSign.format(item.primaryAmount),
      indicatorColor: RallyColors.getBudgetColor(i),
      indicatorFraction: item.amountUsed / item.primaryAmount,
      amount: item.primaryAmount - item.amountUsed,
    );
  }

  static List<FinancialEntityCard> fromAccountItems(List<AccountItem> items) {
    return List<FinancialEntityCard>.generate(items.length, (i) => FinancialEntityCards.fromAccountItem(items[i], i));
  }

  static List<FinancialEntityCard> fromBillItems(List<BillItem> items) {
    return List<FinancialEntityCard>.generate(items.length, (i) => FinancialEntityCards.fromBillItem(items[i], i));
  }

  static List<FinancialEntityCard> fromBudgetItems(List<BudgetItem> items, BuildContext context) {
    return List<FinancialEntityCard>.generate(items.length, (i) => FinancialEntityCards.fromBudgetItem(items[i], i, context));
  }
}